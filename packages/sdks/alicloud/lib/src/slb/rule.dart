import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';
import 'rule_state.dart';

/// Provides a Lindorm Instance resource.
///
/// For information about Load Balancer Forwarding Rule and how to use it, see [What is Rule](https://www.alibabacloud.com/help/en/slb/classic-load-balancer/developer-reference/api-slb-2014-05-15-dir-forwarding-rules).
///
/// &gt; **NOTE:** Available since v1.6.0.
///
/// A forwarding rule is configured in `HTTP`/`HTTPS` listener and it used to listen a list of backend servers which in one specified virtual backend server group.
/// You can add forwarding rules to a listener to forward requests based on the domain names or the URL in the request.
///
/// &gt; **NOTE:** One virtual backend server group can be attached in multiple forwarding rules.
///
/// &gt; **NOTE:** At least one "Domain" or "Url" must be specified when creating a new rule.
///
/// &gt; **NOTE:** Having the same 'Domain' and 'Url' rule can not be created repeatedly in the one listener.
///
/// &gt; **NOTE:** Rule only be created in the `HTTP` or `HTTPS` listener.
///
/// &gt; **NOTE:** Only rule's virtual server group can be modified.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const slbRuleName = config.get("slbRuleName") || "terraform-example";
/// const rule = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const ruleGetInstanceTypes = rule.then(rule => alicloud.ecs.getInstanceTypes({
///     availabilityZone: rule.zones?.[0]?.id,
///     cpuCoreCount: 1,
///     memorySize: 2,
/// }));
/// const ruleGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const ruleNetwork = new alicloud.vpc.Network("rule", {
///     vpcName: slbRuleName,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const ruleSwitch = new alicloud.vpc.Switch("rule", {
///     vpcId: ruleNetwork.id,
///     cidrBlock: "172.16.0.0/16",
///     zoneId: rule.then(rule => rule.zones?.[0]?.id),
///     vswitchName: slbRuleName,
/// });
/// const ruleSecurityGroup = new alicloud.ecs.SecurityGroup("rule", {
///     name: slbRuleName,
///     vpcId: ruleNetwork.id,
/// });
/// const ruleInstance = new alicloud.ecs.Instance("rule", {
///     imageId: ruleGetImages.then(ruleGetImages => ruleGetImages.images?.[0]?.id),
///     instanceType: ruleGetInstanceTypes.then(ruleGetInstanceTypes => ruleGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroups: [ruleSecurityGroup].map(__item => __item.id),
///     internetChargeType: "PayByTraffic",
///     internetMaxBandwidthOut: 10,
///     availabilityZone: rule.then(rule => rule.zones?.[0]?.id),
///     instanceChargeType: "PostPaid",
///     systemDiskCategory: "cloud_efficiency",
///     vswitchId: ruleSwitch.id,
///     instanceName: slbRuleName,
/// });
/// const ruleApplicationLoadBalancer = new alicloud.slb.ApplicationLoadBalancer("rule", {
///     loadBalancerName: slbRuleName,
///     vswitchId: ruleSwitch.id,
///     instanceChargeType: "PayByCLCU",
/// });
/// const ruleListener = new alicloud.slb.Listener("rule", {
///     loadBalancerId: ruleApplicationLoadBalancer.id,
///     backendPort: 22,
///     frontendPort: 22,
///     protocol: "http",
///     bandwidth: 5,
///     healthCheckConnectPort: 20,
/// });
/// const ruleServerGroup = new alicloud.slb.ServerGroup("rule", {
///     loadBalancerId: ruleApplicationLoadBalancer.id,
///     name: slbRuleName,
/// });
/// const ruleRule = new alicloud.slb.Rule("rule", {
///     loadBalancerId: ruleApplicationLoadBalancer.id,
///     frontendPort: ruleListener.frontendPort,
///     name: slbRuleName,
///     domain: "*.aliyun.com",
///     url: "/image",
///     serverGroupId: ruleServerGroup.id,
///     cookie: "23ffsa",
///     cookieTimeout: 100,
///     healthCheckHttpCode: "http_2xx",
///     healthCheckInterval: 10,
///     healthCheckUri: "/test",
///     healthCheckConnectPort: 80,
///     healthCheckTimeout: 30,
///     healthyThreshold: 3,
///     unhealthyThreshold: 5,
///     stickySession: "on",
///     stickySessionType: "server",
///     listenerSync: "off",
///     scheduler: "rr",
///     healthCheckDomain: "test",
///     healthCheck: "on",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// slb_rule_name = config.get("slbRuleName")
/// if slb_rule_name is None:
///     slb_rule_name = "terraform-example"
/// rule = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// rule_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=rule.zones[0].id,
///     cpu_core_count=1,
///     memory_size=2)
/// rule_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// rule_network = alicloud.vpc.Network("rule",
///     vpc_name=slb_rule_name,
///     cidr_block="172.16.0.0/16")
/// rule_switch = alicloud.vpc.Switch("rule",
///     vpc_id=rule_network.id,
///     cidr_block="172.16.0.0/16",
///     zone_id=rule.zones[0].id,
///     vswitch_name=slb_rule_name)
/// rule_security_group = alicloud.ecs.SecurityGroup("rule",
///     name=slb_rule_name,
///     vpc_id=rule_network.id)
/// rule_instance = alicloud.ecs.Instance("rule",
///     image_id=rule_get_images.images[0].id,
///     instance_type=rule_get_instance_types.instance_types[0].id,
///     security_groups=[__item.id for __item in [rule_security_group]],
///     internet_charge_type="PayByTraffic",
///     internet_max_bandwidth_out=10,
///     availability_zone=rule.zones[0].id,
///     instance_charge_type="PostPaid",
///     system_disk_category="cloud_efficiency",
///     vswitch_id=rule_switch.id,
///     instance_name=slb_rule_name)
/// rule_application_load_balancer = alicloud.slb.ApplicationLoadBalancer("rule",
///     load_balancer_name=slb_rule_name,
///     vswitch_id=rule_switch.id,
///     instance_charge_type="PayByCLCU")
/// rule_listener = alicloud.slb.Listener("rule",
///     load_balancer_id=rule_application_load_balancer.id,
///     backend_port=22,
///     frontend_port=22,
///     protocol="http",
///     bandwidth=5,
///     health_check_connect_port=20)
/// rule_server_group = alicloud.slb.ServerGroup("rule",
///     load_balancer_id=rule_application_load_balancer.id,
///     name=slb_rule_name)
/// rule_rule = alicloud.slb.Rule("rule",
///     load_balancer_id=rule_application_load_balancer.id,
///     frontend_port=rule_listener.frontend_port,
///     name=slb_rule_name,
///     domain="*.aliyun.com",
///     url="/image",
///     server_group_id=rule_server_group.id,
///     cookie="23ffsa",
///     cookie_timeout=100,
///     health_check_http_code="http_2xx",
///     health_check_interval=10,
///     health_check_uri="/test",
///     health_check_connect_port=80,
///     health_check_timeout=30,
///     healthy_threshold=3,
///     unhealthy_threshold=5,
///     sticky_session="on",
///     sticky_session_type="server",
///     listener_sync="off",
///     scheduler="rr",
///     health_check_domain="test",
///     health_check="on")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var slbRuleName = config.Get("slbRuleName") ?? "terraform-example";
///     var rule = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var ruleGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = rule.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 1,
///         MemorySize = 2,
///     });
///
///     var ruleGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var ruleNetwork = new AliCloud.Vpc.Network("rule", new()
///     {
///         VpcName = slbRuleName,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var ruleSwitch = new AliCloud.Vpc.Switch("rule", new()
///     {
///         VpcId = ruleNetwork.Id,
///         CidrBlock = "172.16.0.0/16",
///         ZoneId = rule.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         VswitchName = slbRuleName,
///     });
///
///     var ruleSecurityGroup = new AliCloud.Ecs.SecurityGroup("rule", new()
///     {
///         Name = slbRuleName,
///         VpcId = ruleNetwork.Id,
///     });
///
///     var ruleInstance = new AliCloud.Ecs.Instance("rule", new()
///     {
///         ImageId = ruleGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = ruleGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroups = new[]
///         {
///             ruleSecurityGroup,
///         }.Select(__item => __item.Id).ToList(),
///         InternetChargeType = "PayByTraffic",
///         InternetMaxBandwidthOut = 10,
///         AvailabilityZone = rule.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         InstanceChargeType = "PostPaid",
///         SystemDiskCategory = "cloud_efficiency",
///         VswitchId = ruleSwitch.Id,
///         InstanceName = slbRuleName,
///     });
///
///     var ruleApplicationLoadBalancer = new AliCloud.Slb.ApplicationLoadBalancer("rule", new()
///     {
///         LoadBalancerName = slbRuleName,
///         VswitchId = ruleSwitch.Id,
///         InstanceChargeType = "PayByCLCU",
///     });
///
///     var ruleListener = new AliCloud.Slb.Listener("rule", new()
///     {
///         LoadBalancerId = ruleApplicationLoadBalancer.Id,
///         BackendPort = 22,
///         FrontendPort = 22,
///         Protocol = "http",
///         Bandwidth = 5,
///         HealthCheckConnectPort = 20,
///     });
///
///     var ruleServerGroup = new AliCloud.Slb.ServerGroup("rule", new()
///     {
///         LoadBalancerId = ruleApplicationLoadBalancer.Id,
///         Name = slbRuleName,
///     });
///
///     var ruleRule = new AliCloud.Slb.Rule("rule", new()
///     {
///         LoadBalancerId = ruleApplicationLoadBalancer.Id,
///         FrontendPort = ruleListener.FrontendPort,
///         Name = slbRuleName,
///         Domain = "*.aliyun.com",
///         Url = "/image",
///         ServerGroupId = ruleServerGroup.Id,
///         Cookie = "23ffsa",
///         CookieTimeout = 100,
///         HealthCheckHttpCode = "http_2xx",
///         HealthCheckInterval = 10,
///         HealthCheckUri = "/test",
///         HealthCheckConnectPort = 80,
///         HealthCheckTimeout = 30,
///         HealthyThreshold = 3,
///         UnhealthyThreshold = 5,
///         StickySession = "on",
///         StickySessionType = "server",
///         ListenerSync = "off",
///         Scheduler = "rr",
///         HealthCheckDomain = "test",
///         HealthCheck = "on",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// slbRuleName := "terraform-example";
/// if param := cfg.Get("slbRuleName"); param != ""{
/// slbRuleName = param
/// }
/// rule, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableDiskCategory: pulumi.StringRef("cloud_efficiency"),
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ruleGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// AvailabilityZone: pulumi.StringRef(rule.Zones[0].Id),
/// CpuCoreCount: pulumi.IntRef(1),
/// MemorySize: pulumi.Float64Ref(2),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ruleGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// NameRegex: pulumi.StringRef("^ubuntu_18.*64"),
/// MostRecent: pulumi.BoolRef(true),
/// Owners: pulumi.StringRef("system"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ruleNetwork, err := vpc.NewNetwork(ctx, "rule", &vpc.NetworkArgs{
/// VpcName: pulumi.String(slbRuleName),
/// CidrBlock: pulumi.String("172.16.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// ruleSwitch, err := vpc.NewSwitch(ctx, "rule", &vpc.SwitchArgs{
/// VpcId: ruleNetwork.ID(),
/// CidrBlock: pulumi.String("172.16.0.0/16"),
/// ZoneId: pulumi.String(rule.Zones[0].Id),
/// VswitchName: pulumi.String(slbRuleName),
/// })
/// if err != nil {
/// return err
/// }
/// ruleSecurityGroup, err := ecs.NewSecurityGroup(ctx, "rule", &ecs.SecurityGroupArgs{
/// Name: pulumi.String(slbRuleName),
/// VpcId: ruleNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 pulumi.StringArray
/// for _, val0 := range %!v(PANIC=Format method: fatal: An assertion has failed: tok: ) {
/// splat0 = append(splat0, val0.ID())
/// }
/// _, err = ecs.NewInstance(ctx, "rule", &ecs.InstanceArgs{
/// ImageId: pulumi.String(ruleGetImages.Images[0].Id),
/// InstanceType: pulumi.String(ruleGetInstanceTypes.InstanceTypes[0].Id),
/// SecurityGroups: splat0,
/// InternetChargeType: pulumi.String("PayByTraffic"),
/// InternetMaxBandwidthOut: pulumi.Int(10),
/// AvailabilityZone: pulumi.String(rule.Zones[0].Id),
/// InstanceChargeType: pulumi.String("PostPaid"),
/// SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// VswitchId: ruleSwitch.ID(),
/// InstanceName: pulumi.String(slbRuleName),
/// })
/// if err != nil {
/// return err
/// }
/// ruleApplicationLoadBalancer, err := slb.NewApplicationLoadBalancer(ctx, "rule", &slb.ApplicationLoadBalancerArgs{
/// LoadBalancerName: pulumi.String(slbRuleName),
/// VswitchId: ruleSwitch.ID(),
/// InstanceChargeType: pulumi.String("PayByCLCU"),
/// })
/// if err != nil {
/// return err
/// }
/// ruleListener, err := slb.NewListener(ctx, "rule", &slb.ListenerArgs{
/// LoadBalancerId: ruleApplicationLoadBalancer.ID(),
/// BackendPort: pulumi.Int(22),
/// FrontendPort: pulumi.Int(22),
/// Protocol: pulumi.String("http"),
/// Bandwidth: pulumi.Int(5),
/// HealthCheckConnectPort: pulumi.Int(20),
/// })
/// if err != nil {
/// return err
/// }
/// ruleServerGroup, err := slb.NewServerGroup(ctx, "rule", &slb.ServerGroupArgs{
/// LoadBalancerId: ruleApplicationLoadBalancer.ID(),
/// Name: pulumi.String(slbRuleName),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = slb.NewRule(ctx, "rule", &slb.RuleArgs{
/// LoadBalancerId: ruleApplicationLoadBalancer.ID(),
/// FrontendPort: ruleListener.FrontendPort,
/// Name: pulumi.String(slbRuleName),
/// Domain: pulumi.String("*.aliyun.com"),
/// Url: pulumi.String("/image"),
/// ServerGroupId: ruleServerGroup.ID(),
/// Cookie: pulumi.String("23ffsa"),
/// CookieTimeout: pulumi.Int(100),
/// HealthCheckHttpCode: pulumi.String("http_2xx"),
/// HealthCheckInterval: pulumi.Int(10),
/// HealthCheckUri: pulumi.String("/test"),
/// HealthCheckConnectPort: pulumi.Int(80),
/// HealthCheckTimeout: pulumi.Int(30),
/// HealthyThreshold: pulumi.Int(3),
/// UnhealthyThreshold: pulumi.Int(5),
/// StickySession: pulumi.String("on"),
/// StickySessionType: pulumi.String("server"),
/// ListenerSync: pulumi.String("off"),
/// Scheduler: pulumi.String("rr"),
/// HealthCheckDomain: pulumi.String("test"),
/// HealthCheck: pulumi.String("on"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancer;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancerArgs;
/// import com.pulumi.alicloud.slb.Listener;
/// import com.pulumi.alicloud.slb.ListenerArgs;
/// import com.pulumi.alicloud.slb.ServerGroup;
/// import com.pulumi.alicloud.slb.ServerGroupArgs;
/// import com.pulumi.alicloud.slb.Rule;
/// import com.pulumi.alicloud.slb.RuleArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var slbRuleName = config.get("slbRuleName").orElse("terraform-example");
///         final var rule = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var ruleGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(rule.zones()[0].id())
///             .cpuCoreCount(1)
///             .memorySize(2)
///             .build());
///
///         final var ruleGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         var ruleNetwork = new Network("ruleNetwork", NetworkArgs.builder()
///             .vpcName(slbRuleName)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var ruleSwitch = new Switch("ruleSwitch", SwitchArgs.builder()
///             .vpcId(ruleNetwork.id())
///             .cidrBlock("172.16.0.0/16")
///             .zoneId(rule.zones()[0].id())
///             .vswitchName(slbRuleName)
///             .build());
///
///         var ruleSecurityGroup = new SecurityGroup("ruleSecurityGroup", SecurityGroupArgs.builder()
///             .name(slbRuleName)
///             .vpcId(ruleNetwork.id())
///             .build());
///
///         var ruleInstance = new Instance("ruleInstance", InstanceArgs.builder()
///             .imageId(ruleGetImages.images()[0].id())
///             .instanceType(ruleGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroups(ruleSecurityGroup.stream().map(element -> element.id()).collect(toList()))
///             .internetChargeType("PayByTraffic")
///             .internetMaxBandwidthOut(10)
///             .availabilityZone(rule.zones()[0].id())
///             .instanceChargeType("PostPaid")
///             .systemDiskCategory("cloud_efficiency")
///             .vswitchId(ruleSwitch.id())
///             .instanceName(slbRuleName)
///             .build());
///
///         var ruleApplicationLoadBalancer = new ApplicationLoadBalancer("ruleApplicationLoadBalancer", ApplicationLoadBalancerArgs.builder()
///             .loadBalancerName(slbRuleName)
///             .vswitchId(ruleSwitch.id())
///             .instanceChargeType("PayByCLCU")
///             .build());
///
///         var ruleListener = new Listener("ruleListener", ListenerArgs.builder()
///             .loadBalancerId(ruleApplicationLoadBalancer.id())
///             .backendPort(22)
///             .frontendPort(22)
///             .protocol("http")
///             .bandwidth(5)
///             .healthCheckConnectPort(20)
///             .build());
///
///         var ruleServerGroup = new ServerGroup("ruleServerGroup", ServerGroupArgs.builder()
///             .loadBalancerId(ruleApplicationLoadBalancer.id())
///             .name(slbRuleName)
///             .build());
///
///         var ruleRule = new Rule("ruleRule", RuleArgs.builder()
///             .loadBalancerId(ruleApplicationLoadBalancer.id())
///             .frontendPort(ruleListener.frontendPort())
///             .name(slbRuleName)
///             .domain("*.aliyun.com")
///             .url("/image")
///             .serverGroupId(ruleServerGroup.id())
///             .cookie("23ffsa")
///             .cookieTimeout(100)
///             .healthCheckHttpCode("http_2xx")
///             .healthCheckInterval(10)
///             .healthCheckUri("/test")
///             .healthCheckConnectPort(80)
///             .healthCheckTimeout(30)
///             .healthyThreshold(3)
///             .unhealthyThreshold(5)
///             .stickySession("on")
///             .stickySessionType("server")
///             .listenerSync("off")
///             .scheduler("rr")
///             .healthCheckDomain("test")
///             .healthCheck("on")
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Load balancer forwarding rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:slb/rule:Rule example <id>
/// ```
class Rule extends pulumi.CustomResource {
  /// The cookie configured on the server. It is mandatory when `sticky_session` is `on` and `sticky_session_type` is `server`. Otherwise, it will be ignored. Valid value：String in line with RFC 2965, with length being `1` - `200`. It only contains characters such as ASCII codes, English letters and digits instead of the comma, semicolon or spacing, and it cannot start with $.
  late final pulumi.Output<String?> cookie;
  /// Cookie timeout. It is mandatory when `sticky_session` is `on` and `sticky_session_type` is `insert`. Otherwise, it will be ignored. Valid values: [1-86400] in seconds.
  late final pulumi.Output<int?> cookieTimeout;
  /// Checking DeleteProtection of SLB instance before deleting. If `true`, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default value: `false`.
  late final pulumi.Output<bool?> deleteProtectionValidation;
  /// Domain name of the forwarding rule. It can contain letters a-z, numbers 0-9, hyphens (-), and periods (.),
  /// and wildcard characters. The following two domain name formats are supported:
  /// - Standard domain name: www.test.com
  /// - Wildcard domain name: *.test.com. wildcard (*) must be the first character in the format of (*.)
  late final pulumi.Output<String?> domain;
  /// The listener frontend port which is used to launch the new forwarding rule. Valid values: [1-65535].
  late final pulumi.Output<int> frontendPort;
  /// Whether to enable health check. Valid values: `on` and `off`. `TCP` and `UDP` listener's `health_check` is always `on`, so it will be ignore when launching `TCP` or `UDP` listener. **NOTE:** `health_check` is required and takes effect only when `listener_sync` is set to `off`.
  late final pulumi.Output<String?> healthCheck;
  /// Port used for health check. Valid values: [1-65535]. Default value: `None` means the backend server port is used.
  late final pulumi.Output<int> healthCheckConnectPort;
  /// Domain name used for health check. When it used to launch TCP listener, `health_check_type` must be `http`. Its length is limited to 1-80 and only characters such as letters, digits, ‘-‘ and ‘.’ are allowed. When it is not set or empty, Server Load Balancer uses the private network IP address of each backend server as Domain used for health check.
  late final pulumi.Output<String?> healthCheckDomain;
  /// Regular health check HTTP status code. Multiple codes are segmented by “,”. It is required when `health_check` is `on`. Default value: `http_2xx`. Valid values: `http_2xx`, `http_3xx`, `http_4xx` and `http_5xx`.
  late final pulumi.Output<String?> healthCheckHttpCode;
  /// Time interval of health checks. It is required when `health_check` is `on`. Valid values: [1-50] in seconds. Default value: `2`.
  late final pulumi.Output<int?> healthCheckInterval;
  /// Maximum timeout of each health check response. It is required when `health_check` is `on`. Valid values: [1-300] in seconds. Default value: `5`. Note: If `health_check_timeout` &lt; `health_check_interval`, its will be replaced by `health_check_interval`.
  late final pulumi.Output<int?> healthCheckTimeout;
  /// URI used for health check. When it used to launch TCP listener, `health_check_type` must be `http`. Its length is limited to 1-80 and it must start with /. Only characters such as letters, digits, ‘-’, ‘/’, ‘.’, ‘%’, ‘?’, #’ and ‘&’ are allowed.
  late final pulumi.Output<String?> healthCheckUri;
  /// Threshold determining the result of the health check is success. It is required when `health_check` is `on`. Valid values: [1-10] in seconds. Default value: `3`.
  late final pulumi.Output<int?> healthyThreshold;
  /// Indicates whether a forwarding rule inherits the settings of a health check , session persistence, and scheduling algorithm from a listener. Default value: `on`. Valid values: `on` and `off`.
  late final pulumi.Output<String?> listenerSync;
  /// The Load Balancer ID which is used to launch the new forwarding rule.
  late final pulumi.Output<String> loadBalancerId;
  /// Name of the forwarding rule. Our plugin provides a default name: "tf-slb-rule".
  late final pulumi.Output<String> name;
  /// Scheduling algorithm. Valid values: `wrr`, `rr` and `wlc`. Default value: `wrr`. **NOTE:** `scheduler` is required and takes effect only when `listener_sync` is set to `off`.
  late final pulumi.Output<String?> scheduler;
  /// ID of a virtual server group that will be forwarded.
  late final pulumi.Output<String> serverGroupId;
  /// Whether to enable session persistence. Valid values: `on` and `off`. Default value: `off`. **NOTE:** `sticky_session` is required and takes effect only when `listener_sync` is set to `off`.
  late final pulumi.Output<String?> stickySession;
  /// Mode for handling the cookie. If `sticky_session` is `on`, it is mandatory. Otherwise, it will be ignored. Valid values: `insert` and `server`. `insert` means it is inserted from Server Load Balancer; `server` means the Server Load Balancer learns from the backend server.
  late final pulumi.Output<String?> stickySessionType;
  /// Threshold determining the result of the health check is fail. It is required when `health_check` is `on`. Valid values: [1-10] in seconds. Default value: `3`.
  late final pulumi.Output<int?> unhealthyThreshold;
  /// Domain of the forwarding rule. It must be 2-80 characters in length. Only letters a-z, numbers 0-9, and characters '-' '/' '?' '%' '#' and '&' are allowed. URLs must be started with the character '/', but cannot be '/' alone.
  late final pulumi.Output<String?> url;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_slb_rule_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(
    String name, {
    RuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/rule:Rule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cookie = registerOutput<String?>('cookie');
    cookieTimeout = registerOutput<int?>('cookieTimeout');
    deleteProtectionValidation = registerOutput<bool?>('deleteProtectionValidation');
    domain = registerOutput<String?>('domain');
    frontendPort = registerOutput<int>('frontendPort');
    healthCheck = registerOutput<String?>('healthCheck');
    healthCheckConnectPort = registerOutput<int>('healthCheckConnectPort');
    healthCheckDomain = registerOutput<String?>('healthCheckDomain');
    healthCheckHttpCode = registerOutput<String?>('healthCheckHttpCode');
    healthCheckInterval = registerOutput<int?>('healthCheckInterval');
    healthCheckTimeout = registerOutput<int?>('healthCheckTimeout');
    healthCheckUri = registerOutput<String?>('healthCheckUri');
    healthyThreshold = registerOutput<int?>('healthyThreshold');
    listenerSync = registerOutput<String?>('listenerSync');
    loadBalancerId = registerOutput<String>('loadBalancerId');
    this.name = registerOutput<String>('name');
    scheduler = registerOutput<String?>('scheduler');
    serverGroupId = registerOutput<String>('serverGroupId');
    stickySession = registerOutput<String?>('stickySession');
    stickySessionType = registerOutput<String?>('stickySessionType');
    unhealthyThreshold = registerOutput<int?>('unhealthyThreshold');
    url = registerOutput<String?>('url');
  }

  /// Gets an existing [Rule] resource's state with the given [name] and [id].
  static Rule get(
    String name,
    pulumi.Input<String> id, {
    RuleState? state,
  }) {
    return Rule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Rule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/rule:Rule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cookie = registerOutput<String?>('cookie');
    cookieTimeout = registerOutput<int?>('cookieTimeout');
    deleteProtectionValidation = registerOutput<bool?>('deleteProtectionValidation');
    domain = registerOutput<String?>('domain');
    frontendPort = registerOutput<int>('frontendPort');
    healthCheck = registerOutput<String?>('healthCheck');
    healthCheckConnectPort = registerOutput<int>('healthCheckConnectPort');
    healthCheckDomain = registerOutput<String?>('healthCheckDomain');
    healthCheckHttpCode = registerOutput<String?>('healthCheckHttpCode');
    healthCheckInterval = registerOutput<int?>('healthCheckInterval');
    healthCheckTimeout = registerOutput<int?>('healthCheckTimeout');
    healthCheckUri = registerOutput<String?>('healthCheckUri');
    healthyThreshold = registerOutput<int?>('healthyThreshold');
    listenerSync = registerOutput<String?>('listenerSync');
    loadBalancerId = registerOutput<String>('loadBalancerId');
    this.name = registerOutput<String>('name');
    scheduler = registerOutput<String?>('scheduler');
    serverGroupId = registerOutput<String>('serverGroupId');
    stickySession = registerOutput<String?>('stickySession');
    stickySessionType = registerOutput<String?>('stickySessionType');
    unhealthyThreshold = registerOutput<int?>('unhealthyThreshold');
    url = registerOutput<String?>('url');
  }
}
