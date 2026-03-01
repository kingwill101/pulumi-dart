import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_monitoring_agent_process_args.dart';
import 'service_monitoring_agent_process_state.dart';

/// Provides a Cloud Monitor Service Monitoring Agent Process resource.
///
/// For information about Cloud Monitor Service Monitoring Agent Process and how to use it, see [What is Monitoring Agent Process](https://www.alibabacloud.com/help/en/cms/developer-reference/api-cms-2019-01-01-createmonitoragentprocess).
///
/// > **NOTE:** Available since v1.212.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     instanceTypeFamily: "ecs.sn1ne",
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultSwitch.vpcId,
/// });
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     instanceName: name,
///     securityGroups: [defaultSecurityGroup].map(__item => __item.id),
///     internetChargeType: "PayByTraffic",
///     internetMaxBandwidthOut: 10,
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     instanceChargeType: "PostPaid",
///     systemDiskCategory: "cloud_efficiency",
///     vswitchId: defaultSwitch.id,
/// });
/// const defaultServiceMonitoringAgentProcess = new alicloud.cloudmonitor.ServiceMonitoringAgentProcess("default", {
///     instanceId: defaultInstance.id,
///     processName: name,
///     processUser: "root",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     instance_type_family="ecs.sn1ne")
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_switch.vpc_id)
/// default_instance = alicloud.ecs.Instance("default",
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     instance_name=name,
///     security_groups=[__item.id for __item in [default_security_group]],
///     internet_charge_type="PayByTraffic",
///     internet_max_bandwidth_out=10,
///     availability_zone=default.zones[0].id,
///     instance_charge_type="PostPaid",
///     system_disk_category="cloud_efficiency",
///     vswitch_id=default_switch.id)
/// default_service_monitoring_agent_process = alicloud.cloudmonitor.ServiceMonitoringAgentProcess("default",
///     instance_id=default_instance.id,
///     process_name=name,
///     process_user="root")
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         InstanceTypeFamily = "ecs.sn1ne",
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultSwitch.VpcId,
///     });
///
///     var defaultInstance = new AliCloud.Ecs.Instance("default", new()
///     {
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         InstanceName = name,
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup,
///         }.Select(__item => __item.Id).ToList(),
///         InternetChargeType = "PayByTraffic",
///         InternetMaxBandwidthOut = 10,
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         InstanceChargeType = "PostPaid",
///         SystemDiskCategory = "cloud_efficiency",
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var defaultServiceMonitoringAgentProcess = new AliCloud.CloudMonitor.ServiceMonitoringAgentProcess("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         ProcessName = name,
///         ProcessUser = "root",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudmonitor"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// _default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableDiskCategory: pulumi.StringRef("cloud_efficiency"),
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// InstanceTypeFamily: pulumi.StringRef("ecs.sn1ne"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// NameRegex: pulumi.StringRef("^ubuntu_18.*64"),
/// MostRecent: pulumi.BoolRef(true),
/// Owners: pulumi.StringRef("system"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.String(name),
/// CidrBlock: pulumi.String("172.16.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String("172.16.0.0/24"),
/// ZoneId: pulumi.String(_default.Zones[0].Id),
/// VswitchName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// Name: pulumi.String(name),
/// VpcId: defaultSwitch.VpcId,
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 pulumi.StringArray
/// for _, val0 := range %!v(PANIC=Format method: fatal: An assertion has failed: tok: ) {
/// splat0 = append(splat0, val0.ID())
/// }
/// defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// ImageId: pulumi.String(defaultGetImages.Images[0].Id),
/// InstanceType: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// InstanceName: pulumi.String(name),
/// SecurityGroups: splat0,
/// InternetChargeType: pulumi.String("PayByTraffic"),
/// InternetMaxBandwidthOut: pulumi.Int(10),
/// AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// InstanceChargeType: pulumi.String("PostPaid"),
/// SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// VswitchId: defaultSwitch.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudmonitor.NewServiceMonitoringAgentProcess(ctx, "default", &cloudmonitor.ServiceMonitoringAgentProcessArgs{
/// InstanceId: defaultInstance.ID(),
/// ProcessName: pulumi.String(name),
/// ProcessUser: pulumi.String("root"),
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
/// import com.pulumi.alicloud.cloudmonitor.ServiceMonitoringAgentProcess;
/// import com.pulumi.alicloud.cloudmonitor.ServiceMonitoringAgentProcessArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .instanceTypeFamily("ecs.sn1ne")
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultSwitch.vpcId())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .instanceName(name)
///             .securityGroups(defaultSecurityGroup.stream().map(element -> element.id()).collect(toList()))
///             .internetChargeType("PayByTraffic")
///             .internetMaxBandwidthOut(10)
///             .availabilityZone(default_.zones()[0].id())
///             .instanceChargeType("PostPaid")
///             .systemDiskCategory("cloud_efficiency")
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         var defaultServiceMonitoringAgentProcess = new ServiceMonitoringAgentProcess("defaultServiceMonitoringAgentProcess", ServiceMonitoringAgentProcessArgs.builder()
///             .instanceId(defaultInstance.id())
///             .processName(name)
///             .processUser("root")
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
/// Cloud Monitor Service Monitoring Agent Process can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudmonitor/serviceMonitoringAgentProcess:ServiceMonitoringAgentProcess example <instance_id>:<process_id>
/// ```
class ServiceMonitoringAgentProcess extends pulumi.CustomResource {
  /// The ID of the instance.
  late final pulumi.Output<String> instanceId;
  /// The ID of the process.
  late final pulumi.Output<String> processId;
  /// The name of the process.
  late final pulumi.Output<String> processName;
  /// The user who launches the process.
  late final pulumi.Output<String?> processUser;

  /// Creates a new [ServiceMonitoringAgentProcess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceMonitoringAgentProcess]. {@macro pulumi_cloudmonitor_service_monitoring_agent_process_service_monitoring_agent_process_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceMonitoringAgentProcess(
    String name, {
    ServiceMonitoringAgentProcessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudmonitor/serviceMonitoringAgentProcess:ServiceMonitoringAgentProcess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceId = registerOutput<String>('instanceId');
    this.processId = registerOutput<String>('processId');
    this.processName = registerOutput<String>('processName');
    this.processUser = registerOutput<String?>('processUser');
  }

  /// Gets an existing [ServiceMonitoringAgentProcess] resource's state with the given [name] and [id].
  static ServiceMonitoringAgentProcess get(
    String name,
    pulumi.Input<String> id, {
    ServiceMonitoringAgentProcessState? state,
  }) {
    return ServiceMonitoringAgentProcess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceMonitoringAgentProcess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudmonitor/serviceMonitoringAgentProcess:ServiceMonitoringAgentProcess',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceId = registerOutput<String>('instanceId');
    this.processId = registerOutput<String>('processId');
    this.processName = registerOutput<String>('processName');
    this.processUser = registerOutput<String?>('processUser');
  }
}
