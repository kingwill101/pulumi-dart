import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_rule_args.dart';
import 'acl_rule_state.dart';

/// Provides a Sag Acl Rule resource. This topic describes how to configure an access control list (ACL) rule for a target Smart Access Gateway instance to permit or deny access to or from specified IP addresses in the ACL rule.
///
/// For information about Sag Acl Rule and how to use it, see [What is access control list (ACL) rule](https://www.alibabacloud.com/help/en/smart-access-gateway/latest/addaclrule).
///
/// > **NOTE:** Available since v1.60.0.
///
/// > **NOTE:** Only the following regions support create Cloud Connect Network. [`cn-shanghai`, `cn-shanghai-finance-1`, `cn-hongkong`, `ap-southeast-1`, `ap-southeast-3`, `ap-southeast-5`, `ap-northeast-1`, `eu-central-1`]
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
/// const name = config.get("name") || "tf_example";
/// const _default = new alicloud.sag.Acl("default", {name: name});
/// const defaultAclRule = new alicloud.sag.AclRule("default", {
///     aclId: _default.id,
///     description: name,
///     policy: "accept",
///     ipProtocol: "ALL",
///     direction: "in",
///     sourceCidr: "10.10.1.0/24",
///     sourcePortRange: "-1/-1",
///     destCidr: "192.168.1.0/24",
///     destPortRange: "-1/-1",
///     priority: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.sag.Acl("default", name=name)
/// default_acl_rule = alicloud.sag.AclRule("default",
///     acl_id=default.id,
///     description=name,
///     policy="accept",
///     ip_protocol="ALL",
///     direction="in",
///     source_cidr="10.10.1.0/24",
///     source_port_range="-1/-1",
///     dest_cidr="192.168.1.0/24",
///     dest_port_range="-1/-1",
///     priority=1)
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = new AliCloud.Sag.Acl("default", new()
///     {
///         Name = name,
///     });
///
///     var defaultAclRule = new AliCloud.Sag.AclRule("default", new()
///     {
///         AclId = @default.Id,
///         Description = name,
///         Policy = "accept",
///         IpProtocol = "ALL",
///         Direction = "in",
///         SourceCidr = "10.10.1.0/24",
///         SourcePortRange = "-1/-1",
///         DestCidr = "192.168.1.0/24",
///         DestPortRange = "-1/-1",
///         Priority = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sag"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := sag.NewAcl(ctx, "default", &sag.AclArgs{
/// 			Name: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sag.NewAclRule(ctx, "default", &sag.AclRuleArgs{
/// 			AclId:           _default.ID(),
/// 			Description:     pulumi.String(name),
/// 			Policy:          pulumi.String("accept"),
/// 			IpProtocol:      pulumi.String("ALL"),
/// 			Direction:       pulumi.String("in"),
/// 			SourceCidr:      pulumi.String("10.10.1.0/24"),
/// 			SourcePortRange: pulumi.String("-1/-1"),
/// 			DestCidr:        pulumi.String("192.168.1.0/24"),
/// 			DestPortRange:   pulumi.String("-1/-1"),
/// 			Priority:        pulumi.Int(1),
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
/// import com.pulumi.alicloud.sag.Acl;
/// import com.pulumi.alicloud.sag.AclArgs;
/// import com.pulumi.alicloud.sag.AclRule;
/// import com.pulumi.alicloud.sag.AclRuleArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         var default_ = new Acl("default", AclArgs.builder()
///             .name(name)
///             .build());
///
///         var defaultAclRule = new AclRule("defaultAclRule", AclRuleArgs.builder()
///             .aclId(default_.id())
///             .description(name)
///             .policy("accept")
///             .ipProtocol("ALL")
///             .direction("in")
///             .sourceCidr("10.10.1.0/24")
///             .sourcePortRange("-1/-1")
///             .destCidr("192.168.1.0/24")
///             .destPortRange("-1/-1")
///             .priority(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   default:
///     type: alicloud:sag:Acl
///     properties:
///       name: ${name}
///   defaultAclRule:
///     type: alicloud:sag:AclRule
///     name: default
///     properties:
///       aclId: ${default.id}
///       description: ${name}
///       policy: accept
///       ipProtocol: ALL
///       direction: in
///       sourceCidr: 10.10.1.0/24
///       sourcePortRange: -1/-1
///       destCidr: 192.168.1.0/24
///       destPortRange: -1/-1
///       priority: '1'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// The Sag Acl Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sag/aclRule:AclRule example acr-abc123456
/// ```
class AclRule extends pulumi.CustomResource {
  /// The ID of the ACL.
  late final pulumi.Output<String> aclId;
  /// The description of the ACL rule. It must be 1 to 512 characters in length.
  late final pulumi.Output<String?> description;
  /// The destination address. It is an IPv4 address range in CIDR format. Default value: 0.0.0.0/0.
  late final pulumi.Output<String> destCidr;
  /// The range of the destination port. Valid value: 80/80.
  late final pulumi.Output<String> destPortRange;
  /// The direction of the ACL rule. Valid values: in|out.
  late final pulumi.Output<String> direction;
  /// The protocol used by the ACL rule. The value is not case sensitive.
  late final pulumi.Output<String> ipProtocol;
  /// The policy used by the ACL rule. Valid values: accept|drop.
  late final pulumi.Output<String> policy;
  /// The priority of the ACL rule. Value range: 1 to 100.
  late final pulumi.Output<int?> priority;
  /// The source address. It is an IPv4 address range in the CIDR format. Default value: 0.0.0.0/0.
  late final pulumi.Output<String> sourceCidr;
  /// The range of the source port. Valid value: 80/80.
  late final pulumi.Output<String> sourcePortRange;

  /// Creates a new [AclRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AclRule]. {@macro pulumi_sag_acl_rule_acl_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AclRule(
    String name, {
    AclRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sag/aclRule:AclRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclId = registerOutput<String>('aclId');
    this.description = registerOutput<String?>('description');
    this.destCidr = registerOutput<String>('destCidr');
    this.destPortRange = registerOutput<String>('destPortRange');
    this.direction = registerOutput<String>('direction');
    this.ipProtocol = registerOutput<String>('ipProtocol');
    this.policy = registerOutput<String>('policy');
    this.priority = registerOutput<int?>('priority');
    this.sourceCidr = registerOutput<String>('sourceCidr');
    this.sourcePortRange = registerOutput<String>('sourcePortRange');
  }

  /// Gets an existing [AclRule] resource's state with the given [name] and [id].
  static AclRule get(
    String name,
    pulumi.Input<String> id, {
    AclRuleState? state,
  }) {
    return AclRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AclRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sag/aclRule:AclRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclId = registerOutput<String>('aclId');
    this.description = registerOutput<String?>('description');
    this.destCidr = registerOutput<String>('destCidr');
    this.destPortRange = registerOutput<String>('destPortRange');
    this.direction = registerOutput<String>('direction');
    this.ipProtocol = registerOutput<String>('ipProtocol');
    this.policy = registerOutput<String>('policy');
    this.priority = registerOutput<int?>('priority');
    this.sourceCidr = registerOutput<String>('sourceCidr');
    this.sourcePortRange = registerOutput<String>('sourcePortRange');
  }
}
