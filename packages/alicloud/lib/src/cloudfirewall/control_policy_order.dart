import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_policy_order_args.dart';

/// Provides a Cloud Firewall Control Policy Order resource.
///
/// For information about Cloud Firewall Control Policy Order and how to use it, see [What is Control Policy Order](https://www.alibabacloud.com/help/doc-detail/138867.htm).
///
/// > **NOTE:** Available since v1.130.0.
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
/// const defaultControlPolicyOrder = new alicloud.cloudfirewall.ControlPolicyOrder("default", {
///     aclUuid: _default.aclUuid,
///     direction: _default.direction,
///     order: 1,
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
/// default_control_policy_order = alicloud.cloudfirewall.ControlPolicyOrder("default",
///     acl_uuid=default.acl_uuid,
///     direction=default.direction,
///     order=1)
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
///     var defaultControlPolicyOrder = new AliCloud.CloudFirewall.ControlPolicyOrder("default", new()
///     {
///         AclUuid = @default.AclUuid,
///         Direction = @default.Direction,
///         Order = 1,
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
/// 		_default, err := cloudfirewall.NewControlPolicy(ctx, "default", &cloudfirewall.ControlPolicyArgs{
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
/// 		_, err = cloudfirewall.NewControlPolicyOrder(ctx, "default", &cloudfirewall.ControlPolicyOrderArgs{
/// 			AclUuid:   _default.AclUuid,
/// 			Direction: _default.Direction,
/// 			Order:     pulumi.Int(1),
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
/// import com.pulumi.alicloud.cloudfirewall.ControlPolicyOrder;
/// import com.pulumi.alicloud.cloudfirewall.ControlPolicyOrderArgs;
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
///         var defaultControlPolicyOrder = new ControlPolicyOrder("defaultControlPolicyOrder", ControlPolicyOrderArgs.builder()
///             .aclUuid(default_.aclUuid())
///             .direction(default_.direction())
///             .order(1)
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
///   defaultControlPolicyOrder:
///     type: alicloud:cloudfirewall:ControlPolicyOrder
///     name: default
///     properties:
///       aclUuid: ${default.aclUuid}
///       direction: ${default.direction}
///       order: 1
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Firewall Control Policy Order can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/controlPolicyOrder:ControlPolicyOrder example <acl_uuid>:<direction>
/// ```
class ControlPolicyOrder extends pulumi.CustomResource {
  /// The unique ID of the access control policy.
  late final pulumi.Output<String> aclUuid;
  /// The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  late final pulumi.Output<String> direction;
  /// The priority of the access control policy. The priority value starts from 1. A small priority value indicates a high priority. **NOTE:** The value of `-1` indicates the lowest priority.
  /// > **NOTE:** From version 1.227.1, `order` must be set.
  late final pulumi.Output<int> order;

  /// Creates a new [ControlPolicyOrder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ControlPolicyOrder]. {@macro pulumi_cloudfirewall_control_policy_order_control_policy_order_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ControlPolicyOrder(
    String name, {
    ControlPolicyOrderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/controlPolicyOrder:ControlPolicyOrder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclUuid = registerOutput<String>('aclUuid');
    this.direction = registerOutput<String>('direction');
    this.order = registerOutput<int>('order');
  }
}
