import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_policy_args.dart';

/// Provides a Cloud Firewall Control Policy resource.
///
/// For information about Cloud Firewall Control Policy and how to use it, see [What is Control Policy](https://www.alibabacloud.com/help/doc-detail/138867.htm).
///
/// > **NOTE:** Available since v1.129.0.
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
/// const _default = new alicloud.cloudfirewall.ControlPolicy("default", {
///     direction: "in",
///     applicationName: "ANY",
///     description: name,
///     aclAction: "accept",
///     source: "127.0.0.1/32",
///     sourceType: "net",
///     destination: "127.0.0.2/32",
///     destinationType: "net",
///     proto: "ANY",
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
/// default = alicloud.cloudfirewall.ControlPolicy("default",
///     direction="in",
///     application_name="ANY",
///     description=name,
///     acl_action="accept",
///     source="127.0.0.1/32",
///     source_type="net",
///     destination="127.0.0.2/32",
///     destination_type="net",
///     proto="ANY")
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
///     var @default = new AliCloud.CloudFirewall.ControlPolicy("default", new()
///     {
///         Direction = "in",
///         ApplicationName = "ANY",
///         Description = name,
///         AclAction = "accept",
///         Source = "127.0.0.1/32",
///         SourceType = "net",
///         Destination = "127.0.0.2/32",
///         DestinationType = "net",
///         Proto = "ANY",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 		_, err := cloudfirewall.NewControlPolicy(ctx, "default", &cloudfirewall.ControlPolicyArgs{
/// 			Direction:       pulumi.String("in"),
/// 			ApplicationName: pulumi.String("ANY"),
/// 			Description:     pulumi.String(name),
/// 			AclAction:       pulumi.String("accept"),
/// 			Source:          pulumi.String("127.0.0.1/32"),
/// 			SourceType:      pulumi.String("net"),
/// 			Destination:     pulumi.String("127.0.0.2/32"),
/// 			DestinationType: pulumi.String("net"),
/// 			Proto:           pulumi.String("ANY"),
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
/// import com.pulumi.alicloud.cloudfirewall.ControlPolicy;
/// import com.pulumi.alicloud.cloudfirewall.ControlPolicyArgs;
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
///         var default_ = new ControlPolicy("default", ControlPolicyArgs.builder()
///             .direction("in")
///             .applicationName("ANY")
///             .description(name)
///             .aclAction("accept")
///             .source("127.0.0.1/32")
///             .sourceType("net")
///             .destination("127.0.0.2/32")
///             .destinationType("net")
///             .proto("ANY")
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
///   default:
///     type: alicloud:cloudfirewall:ControlPolicy
///     properties:
///       direction: in
///       applicationName: ANY
///       description: ${name}
///       aclAction: accept
///       source: 127.0.0.1/32
///       sourceType: net
///       destination: 127.0.0.2/32
///       destinationType: net
///       proto: ANY
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Firewall Control Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/controlPolicy:ControlPolicy example <acl_uuid>:<direction>
/// ```
class ControlPolicy extends pulumi.CustomResource {
  /// The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  late final pulumi.Output<String> aclAction;
  /// (Available since v1.148.0) The unique ID of the access control policy.
  late final pulumi.Output<String> aclUuid;
  /// The application type supported by the access control policy. Valid values: `ANY`, `HTTP`, `HTTPS`, `MQTT`, `Memcache`, `MongoDB`, `MySQL`, `RDP`, `Redis`, `SMTP`, `SMTPS`, `SSH`, `SSL`, `VNC`.
  /// > **NOTE:** If `proto` is set to `TCP`, you can set `application_name` to any valid value. If `proto` is set to `UDP`, `ICMP`, or `ANY`, you can only set `application_name` to `ANY`.
  late final pulumi.Output<String?> applicationName;
  /// The application types supported by the access control policy.
  /// > **NOTE:** If `proto` is set to `TCP`, you can set `application_name_list` to any valid value. If `proto` is set to `UDP`, `ICMP`, or `ANY`, you can only set `application_name_list` to `["ANY"]`. From version 1.232.0, You must specify at least one of the `application_name_list` and `application_name`. If you specify both `application_name_list` and `application_name`, only the `application_name_list` takes effect.
  late final pulumi.Output<List<String>?> applicationNameLists;
  /// (Available since v1.232.0) The time when the access control policy was created.
  late final pulumi.Output<String> createTime;
  /// The description of the access control policy.
  late final pulumi.Output<String> description;
  /// The destination port in the access control policy. **Note:** If `dest_port_type` is set to `port`, you must specify `dest_port`.
  late final pulumi.Output<String> destPort;
  /// The name of the destination port address book in the access control policy. **Note:** If `dest_port_type` is set to `group`, you must specify `dest_port_group`.
  late final pulumi.Output<String?> destPortGroup;
  /// The type of the destination port in the access control policy. Valid values: `port`, `group`.
  late final pulumi.Output<String> destPortType;
  /// The destination address in the access control policy.
  late final pulumi.Output<String> destination;
  /// The type of the destination address in the access control policy. Valid values: `net`, `group`, `domain`, `location`.
  late final pulumi.Output<String> destinationType;
  /// The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  late final pulumi.Output<String> direction;
  /// The domain name resolution method of the access control policy. Valid values:
  /// - `FQDN`: Fully qualified domain name (FQDN)-based resolution.
  /// - `DNS`: DNS-based dynamic resolution.
  /// - `FQDN_AND_DNS`: FQDN and DNS-based dynamic resolution.
  late final pulumi.Output<String?> domainResolveType;
  /// The time when the access control policy stops taking effect. The value is a UNIX timestamp. Unit: seconds. The value must be on the hour or on the half hour, and at least 30 minutes later than the start time.
  /// > **NOTE:** If `repeat_type` is set to `None`, `Daily`, `Weekly`, or `Monthly`, `start_time` and `end_time` must be set.
  late final pulumi.Output<int?> endTime;
  /// The IP version supported by the access control policy. Default value: `4`. Valid values:
  late final pulumi.Output<String> ipVersion;
  /// The language of the content within the request and response. Valid values: `zh`, `en`.
  late final pulumi.Output<String?> lang;
  /// The protocol type supported by the access control policy. Valid values: `ANY`, ` TCP`, `UDP`, `ICMP`.
  late final pulumi.Output<String> proto;
  /// The status of the access control policy. Valid values: `true`, `false`.
  late final pulumi.Output<String> release;
  /// The days of a week or of a month on which the access control policy takes effect. Valid values:
  /// - If `repeat_type` is set to `Weekly`. Valid values: `0` to `6`.
  /// - If `repeat_type` is set to `Monthly`. Valid values: `1` to `31`.
  /// > **NOTE:** If `repeat_type` is set to `Weekly`, or `Monthly`, `repeat_days` must be set.
  late final pulumi.Output<List<int>?> repeatDays;
  /// The point in time when the recurrence ends. Example: `23:30`. The end time must be on the hour or on the half hour, and at least 30 minutes later than the start time.
  /// > **NOTE:** If `repeat_type` is set to `Daily`, `Weekly`, or `Monthly`, `repeat_start_time` and `repeat_end_time` must be set.
  late final pulumi.Output<String?> repeatEndTime;
  /// The point in time when the recurrence starts. Example: `08:00`. The start time must be on the hour or on the half hour, and at least 30 minutes earlier than the end time.
  late final pulumi.Output<String?> repeatStartTime;
  /// The recurrence type for the access control policy to take effect. Default value: `Permanent`. Valid values:
  /// - `Permanent`: The policy always takes effect.
  /// - `None`: The policy takes effect for only once.
  /// - `Daily`: The policy takes effect on a daily basis.
  /// - `Weekly`: The policy takes effect on a weekly basis.
  /// - `Monthly`: The policy takes effect on a monthly basis.
  late final pulumi.Output<String> repeatType;
  /// The source address in the access control policy.
  late final pulumi.Output<String> source;
  /// The source IP address of the request.
  late final pulumi.Output<String?> sourceIp;
  /// The type of the source address in the access control policy. Valid values: `net`, `group`, `location`.
  late final pulumi.Output<String> sourceType;
  /// The time when the access control policy starts to take effect. The value is a UNIX timestamp. Unit: seconds. The value must be on the hour or on the half hour, and at least 30 minutes earlier than the end time.
  late final pulumi.Output<int?> startTime;

  /// Creates a new [ControlPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ControlPolicy]. {@macro pulumi_cloudfirewall_control_policy_control_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ControlPolicy(
    String name, {
    ControlPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/controlPolicy:ControlPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclAction = registerOutput<String>('aclAction');
    this.aclUuid = registerOutput<String>('aclUuid');
    this.applicationName = registerOutput<String?>('applicationName');
    this.applicationNameLists = registerOutput<List<String>?>('applicationNameLists');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.destPort = registerOutput<String>('destPort');
    this.destPortGroup = registerOutput<String?>('destPortGroup');
    this.destPortType = registerOutput<String>('destPortType');
    this.destination = registerOutput<String>('destination');
    this.destinationType = registerOutput<String>('destinationType');
    this.direction = registerOutput<String>('direction');
    this.domainResolveType = registerOutput<String?>('domainResolveType');
    this.endTime = registerOutput<int?>('endTime');
    this.ipVersion = registerOutput<String>('ipVersion');
    this.lang = registerOutput<String?>('lang');
    this.proto = registerOutput<String>('proto');
    this.release = registerOutput<String>('release');
    this.repeatDays = registerOutput<List<int>?>('repeatDays');
    this.repeatEndTime = registerOutput<String?>('repeatEndTime');
    this.repeatStartTime = registerOutput<String?>('repeatStartTime');
    this.repeatType = registerOutput<String>('repeatType');
    this.source = registerOutput<String>('source');
    this.sourceIp = registerOutput<String?>('sourceIp');
    this.sourceType = registerOutput<String>('sourceType');
    this.startTime = registerOutput<int?>('startTime');
  }
}
