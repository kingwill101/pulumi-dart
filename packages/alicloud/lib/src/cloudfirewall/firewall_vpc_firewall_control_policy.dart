import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_vpc_firewall_control_policy_args.dart';

/// Provides a Cloud Firewall Vpc Firewall Control Policy resource.
///
/// VPC Control Policy.
///
/// For information about Cloud Firewall Vpc Firewall Control Policy and how to use it, see [What is Vpc Firewall Control Policy](https://www.alibabacloud.com/help/en/cloud-firewall/latest/createvpcfirewallcontrolpolicy).
///
/// > **NOTE:** Available since v1.194.0.
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
/// const _default = alicloud.getAccount({});
/// const defaultInstance = new alicloud.cen.Instance("default", {
///     cenInstanceName: name,
///     description: "example_value",
///     tags: {
///         Created: "TF",
///         For: "acceptance test",
///     },
/// });
/// const defaultFirewallVpcFirewallControlPolicy = new alicloud.cloudfirewall.FirewallVpcFirewallControlPolicy("default", {
///     order: 1,
///     destination: "127.0.0.2/32",
///     applicationName: "ANY",
///     description: "example_value",
///     sourceType: "net",
///     destPort: "80/88",
///     aclAction: "accept",
///     lang: "zh",
///     destinationType: "net",
///     source: "127.0.0.1/32",
///     destPortType: "port",
///     proto: "TCP",
///     release: "true",
///     memberUid: _default.then(_default => _default.id),
///     vpcFirewallId: defaultInstance.id,
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
/// default = alicloud.get_account()
/// default_instance = alicloud.cen.Instance("default",
///     cen_instance_name=name,
///     description="example_value",
///     tags={
///         "Created": "TF",
///         "For": "acceptance test",
///     })
/// default_firewall_vpc_firewall_control_policy = alicloud.cloudfirewall.FirewallVpcFirewallControlPolicy("default",
///     order=1,
///     destination="127.0.0.2/32",
///     application_name="ANY",
///     description="example_value",
///     source_type="net",
///     dest_port="80/88",
///     acl_action="accept",
///     lang="zh",
///     destination_type="net",
///     source="127.0.0.1/32",
///     dest_port_type="port",
///     proto="TCP",
///     release="true",
///     member_uid=default.id,
///     vpc_firewall_id=default_instance.id)
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
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultInstance = new AliCloud.Cen.Instance("default", new()
///     {
///         CenInstanceName = name,
///         Description = "example_value",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "acceptance test" },
///         },
///     });
///
///     var defaultFirewallVpcFirewallControlPolicy = new AliCloud.CloudFirewall.FirewallVpcFirewallControlPolicy("default", new()
///     {
///         Order = 1,
///         Destination = "127.0.0.2/32",
///         ApplicationName = "ANY",
///         Description = "example_value",
///         SourceType = "net",
///         DestPort = "80/88",
///         AclAction = "accept",
///         Lang = "zh",
///         DestinationType = "net",
///         Source = "127.0.0.1/32",
///         DestPortType = "port",
///         Proto = "TCP",
///         Release = "true",
///         MemberUid = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         VpcFirewallId = defaultInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := cen.NewInstance(ctx, "default", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 			Description:     pulumi.String("example_value"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("acceptance test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfirewall.NewFirewallVpcFirewallControlPolicy(ctx, "default", &cloudfirewall.FirewallVpcFirewallControlPolicyArgs{
/// 			Order:           pulumi.Int(1),
/// 			Destination:     pulumi.String("127.0.0.2/32"),
/// 			ApplicationName: pulumi.String("ANY"),
/// 			Description:     pulumi.String("example_value"),
/// 			SourceType:      pulumi.String("net"),
/// 			DestPort:        pulumi.String("80/88"),
/// 			AclAction:       pulumi.String("accept"),
/// 			Lang:            pulumi.String("zh"),
/// 			DestinationType: pulumi.String("net"),
/// 			Source:          pulumi.String("127.0.0.1/32"),
/// 			DestPortType:    pulumi.String("port"),
/// 			Proto:           pulumi.String("TCP"),
/// 			Release:         pulumi.String("true"),
/// 			MemberUid:       pulumi.String(_default.Id),
/// 			VpcFirewallId:   defaultInstance.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cloudfirewall.FirewallVpcFirewallControlPolicy;
/// import com.pulumi.alicloud.cloudfirewall.FirewallVpcFirewallControlPolicyArgs;
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
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .description("example_value")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "acceptance test")
///             ))
///             .build());
///
///         var defaultFirewallVpcFirewallControlPolicy = new FirewallVpcFirewallControlPolicy("defaultFirewallVpcFirewallControlPolicy", FirewallVpcFirewallControlPolicyArgs.builder()
///             .order(1)
///             .destination("127.0.0.2/32")
///             .applicationName("ANY")
///             .description("example_value")
///             .sourceType("net")
///             .destPort("80/88")
///             .aclAction("accept")
///             .lang("zh")
///             .destinationType("net")
///             .source("127.0.0.1/32")
///             .destPortType("port")
///             .proto("TCP")
///             .release("true")
///             .memberUid(default_.id())
///             .vpcFirewallId(defaultInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultInstance:
///     type: alicloud:cen:Instance
///     name: default
///     properties:
///       cenInstanceName: ${name}
///       description: example_value
///       tags:
///         Created: TF
///         For: acceptance test
///   defaultFirewallVpcFirewallControlPolicy:
///     type: alicloud:cloudfirewall:FirewallVpcFirewallControlPolicy
///     name: default
///     properties:
///       order: '1'
///       destination: 127.0.0.2/32
///       applicationName: ANY
///       description: example_value
///       sourceType: net
///       destPort: 80/88
///       aclAction: accept
///       lang: zh
///       destinationType: net
///       source: 127.0.0.1/32
///       destPortType: port
///       proto: TCP
///       release: true
///       memberUid: ${default.id}
///       vpcFirewallId: ${defaultInstance.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Firewall Vpc Firewall Control Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/firewallVpcFirewallControlPolicy:FirewallVpcFirewallControlPolicy example <vpc_firewall_id>:<acl_uuid>
/// ```
class FirewallVpcFirewallControlPolicy extends pulumi.CustomResource {
  /// The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  late final pulumi.Output<String> aclAction;
  /// Access control over VPC firewalls strategy unique identifier.
  late final pulumi.Output<String> aclUuid;
  /// Policy specifies the application ID.
  late final pulumi.Output<String> applicationId;
  /// The type of the applications that the access control policy supports. Valid values: `FTP`, `HTTP`, `HTTPS`, `MySQL`, `SMTP`, `SMTPS`, `RDP`, `VNC`, `SSH`, `Redis`, `MQTT`, `MongoDB`, `Memcache`, `SSL`, `ANY`.
  late final pulumi.Output<String?> applicationName;
  /// The list of application types that the access control policy supports.
  /// > **NOTE:** If `proto` is set to `TCP`, you can set `application_name_list` to any valid value. If `proto` is set to `UDP`, `ICMP`, or `ANY`, you can only set `application_name_list` to `["ANY"]`. From version 1.267.0, You must specify at least one of the `application_name_list` and `application_name`. If you specify both `application_name_list` and `application_name`, only the `application_name_list` takes effect.
  late final pulumi.Output<List<String>?> applicationNameLists;
  /// (Available since v1.267.0) The time when the policy was created.
  late final pulumi.Output<int> createTime;
  /// Access control over VPC firewalls description of the strategy information.
  late final pulumi.Output<String> description;
  /// The destination port in the access control policy. **Note:** If `dest_port_type` is set to `port`, you must specify this parameter.
  late final pulumi.Output<String> destPort;
  /// Access control policy in the access traffic of the destination port address book name. **Note:** If `dest_port_type` is set to `group`, you must specify this parameter.
  late final pulumi.Output<String?> destPortGroup;
  /// Port Address Book port list.
  late final pulumi.Output<List<String>> destPortGroupPorts;
  /// The type of the destination port in the access control policy. Valid values: `port`, `group`.
  late final pulumi.Output<String> destPortType;
  /// The destination address in the access control policy. Valid values:
  /// - If `destination_type` is set to `net`, the value of `destination` must be a CIDR block.
  /// - If `destination_type` is set to `group`, the value of `destination` must be an address book.
  /// - If `destination_type` is set to `domain`, the value of `destination` must be a domain name.
  late final pulumi.Output<String> destination;
  /// Destination address book defined in the address list.
  late final pulumi.Output<List<String>> destinationGroupCidrs;
  /// The destination address book type in the access control policy.
  late final pulumi.Output<String> destinationGroupType;
  /// The type of the destination address in the access control policy. Valid values: `net`, `group`, `domain`.
  late final pulumi.Output<String> destinationType;
  /// The domain name resolution method for the access control policy. Valid values: `FQDN`, `DNS`, `FQDN_AND_DNS`.
  late final pulumi.Output<String> domainResolveType;
  /// The end time of the policy validity period.
  late final pulumi.Output<int?> endTime;
  /// Control strategy of hits per second.
  late final pulumi.Output<int> hitTimes;
  /// The language of the content within the request and response. Valid values: `zh`, `en`.
  late final pulumi.Output<String?> lang;
  /// The UID of the member account of the current Alibaba cloud account.
  late final pulumi.Output<String> memberUid;
  /// The priority of the access control policy. The priority value starts from 1. A smaller priority value indicates a higher priority.
  late final pulumi.Output<int> order;
  /// The type of the protocol in the access control policy. Valid values: `ANY`, `TCP`, `UDP`, `ICMP`.
  late final pulumi.Output<String> proto;
  /// The enabled status of the access control policy. The policy is enabled by default after it is created.. Valid values:
  late final pulumi.Output<String> release;
  /// The days of the week or month on which the policy is recurrently active. Valid values:
  /// - If `repeat_type` is set to `Weekly`. Valid values: `0` to `6`.
  /// - If `repeat_type` is set to `Monthly`. Valid values: `1` to `31`.
  late final pulumi.Output<List<int>?> repeatDays;
  /// The recurring end time of the policy validity period.
  late final pulumi.Output<String?> repeatEndTime;
  /// The recurring start time of the policy validity period.
  late final pulumi.Output<String?> repeatStartTime;
  /// The recurrence type for the policy validity period. Default value: `Permanent`. Valid values: `Permanent`, `None`, `Daily`, `Weekly`, `Monthly`.
  late final pulumi.Output<String> repeatType;
  /// Access control over VPC firewalls strategy in the source address.
  late final pulumi.Output<String> source;
  /// SOURCE address of the address list.
  late final pulumi.Output<List<String>> sourceGroupCidrs;
  /// The source address type in the access control policy.
  late final pulumi.Output<String> sourceGroupType;
  /// The type of the source address in the access control policy. Valid values: `net`, `group`.
  late final pulumi.Output<String> sourceType;
  /// The start time of the policy validity period.
  late final pulumi.Output<int?> startTime;
  /// The ID of the VPC firewall instance. Valid values:
  /// - When the VPC firewall protects traffic between two VPCs connected through the cloud enterprise network, the policy group ID uses the cloud enterprise network instance ID.
  /// - When the VPC firewall protects traffic between two VPCs connected through the express connection, the policy group ID uses the ID of the VPC firewall instance.
  late final pulumi.Output<String> vpcFirewallId;

  /// Creates a new [FirewallVpcFirewallControlPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallVpcFirewallControlPolicy]. {@macro pulumi_cloudfirewall_firewall_vpc_firewall_control_policy_firewall_vpc_firewall_control_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallVpcFirewallControlPolicy(
    String name, {
    FirewallVpcFirewallControlPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/firewallVpcFirewallControlPolicy:FirewallVpcFirewallControlPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclAction = registerOutput<String>('aclAction');
    this.aclUuid = registerOutput<String>('aclUuid');
    this.applicationId = registerOutput<String>('applicationId');
    this.applicationName = registerOutput<String?>('applicationName');
    this.applicationNameLists = registerOutput<List<String>?>('applicationNameLists');
    this.createTime = registerOutput<int>('createTime');
    this.description = registerOutput<String>('description');
    this.destPort = registerOutput<String>('destPort');
    this.destPortGroup = registerOutput<String?>('destPortGroup');
    this.destPortGroupPorts = registerOutput<List<String>>('destPortGroupPorts');
    this.destPortType = registerOutput<String>('destPortType');
    this.destination = registerOutput<String>('destination');
    this.destinationGroupCidrs = registerOutput<List<String>>('destinationGroupCidrs');
    this.destinationGroupType = registerOutput<String>('destinationGroupType');
    this.destinationType = registerOutput<String>('destinationType');
    this.domainResolveType = registerOutput<String>('domainResolveType');
    this.endTime = registerOutput<int?>('endTime');
    this.hitTimes = registerOutput<int>('hitTimes');
    this.lang = registerOutput<String?>('lang');
    this.memberUid = registerOutput<String>('memberUid');
    this.order = registerOutput<int>('order');
    this.proto = registerOutput<String>('proto');
    this.release = registerOutput<String>('release');
    this.repeatDays = registerOutput<List<int>?>('repeatDays');
    this.repeatEndTime = registerOutput<String?>('repeatEndTime');
    this.repeatStartTime = registerOutput<String?>('repeatStartTime');
    this.repeatType = registerOutput<String>('repeatType');
    this.source = registerOutput<String>('source');
    this.sourceGroupCidrs = registerOutput<List<String>>('sourceGroupCidrs');
    this.sourceGroupType = registerOutput<String>('sourceGroupType');
    this.sourceType = registerOutput<String>('sourceType');
    this.startTime = registerOutput<int?>('startTime');
    this.vpcFirewallId = registerOutput<String>('vpcFirewallId');
  }
}
