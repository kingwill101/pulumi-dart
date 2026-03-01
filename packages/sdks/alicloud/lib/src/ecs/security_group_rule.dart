import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_group_rule_args.dart';
import 'security_group_rule_state.dart';

/// Provides a Security Group Rule resource.
///
/// For information about Security Group Rule and how to use it, see [What is Rule](https://www.alibabacloud.com/help/en/ecs/user-guide/security-group-rules).
///
/// > **NOTE:** Available since v0.1.0.
///
/// Represents a single `ingress` or `egress` group rule, which can be added to external Security Groups.
///
/// > **NOTE:**  `nic_type` should set to `intranet` when security group type is `vpc` or specifying the `source_security_group_id`. In this situation it does not distinguish between intranet and internet, the rule is effective on them both.
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
/// const _default = new alicloud.ecs.SecurityGroup("default", {securityGroupName: "default"});
/// const allowAllTcp = new alicloud.ecs.SecurityGroupRule("allow_all_tcp", {
///     type: "ingress",
///     ipProtocol: "tcp",
///     nicType: "intranet",
///     policy: "accept",
///     portRange: "1/65535",
///     priority: 1,
///     securityGroupId: _default.id,
///     cidrIp: "0.0.0.0/0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ecs.SecurityGroup("default", security_group_name="default")
/// allow_all_tcp = alicloud.ecs.SecurityGroupRule("allow_all_tcp",
///     type="ingress",
///     ip_protocol="tcp",
///     nic_type="intranet",
///     policy="accept",
///     port_range="1/65535",
///     priority=1,
///     security_group_id=default.id,
///     cidr_ip="0.0.0.0/0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         SecurityGroupName = "default",
///     });
///
///     var allowAllTcp = new AliCloud.Ecs.SecurityGroupRule("allow_all_tcp", new()
///     {
///         Type = "ingress",
///         IpProtocol = "tcp",
///         NicType = "intranet",
///         Policy = "accept",
///         PortRange = "1/65535",
///         Priority = 1,
///         SecurityGroupId = @default.Id,
///         CidrIp = "0.0.0.0/0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			SecurityGroupName: pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewSecurityGroupRule(ctx, "allow_all_tcp", &ecs.SecurityGroupRuleArgs{
/// 			Type:            pulumi.String("ingress"),
/// 			IpProtocol:      pulumi.String("tcp"),
/// 			NicType:         pulumi.String("intranet"),
/// 			Policy:          pulumi.String("accept"),
/// 			PortRange:       pulumi.String("1/65535"),
/// 			Priority:        pulumi.Int(1),
/// 			SecurityGroupId: _default.ID(),
/// 			CidrIp:          pulumi.String("0.0.0.0/0"),
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
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroupRule;
/// import com.pulumi.alicloud.ecs.SecurityGroupRuleArgs;
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
///         var default_ = new SecurityGroup("default", SecurityGroupArgs.builder()
///             .securityGroupName("default")
///             .build());
///
///         var allowAllTcp = new SecurityGroupRule("allowAllTcp", SecurityGroupRuleArgs.builder()
///             .type("ingress")
///             .ipProtocol("tcp")
///             .nicType("intranet")
///             .policy("accept")
///             .portRange("1/65535")
///             .priority(1)
///             .securityGroupId(default_.id())
///             .cidrIp("0.0.0.0/0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ecs:SecurityGroup
///     properties:
///       securityGroupName: default
///   allowAllTcp:
///     type: alicloud:ecs:SecurityGroupRule
///     name: allow_all_tcp
///     properties:
///       type: ingress
///       ipProtocol: tcp
///       nicType: intranet
///       policy: accept
///       portRange: 1/65535
///       priority: 1
///       securityGroupId: ${default.id}
///       cidrIp: 0.0.0.0/0
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Module Support
///
/// You can use the existing security-group module
/// to create a security group and add several rules one-click.
///
/// ## Import
///
/// Security Group Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/securityGroupRule:SecurityGroupRule example <id>
/// ```
class SecurityGroupRule extends pulumi.CustomResource {
  /// The target IP address range. The default value is 0.0.0.0/0 (which means no restriction will be applied). Other supported formats include 10.159.6.18/12. Only IPv4 is supported.
  late final pulumi.Output<String?> cidrIp;
  /// The description of the security group rule. The description can be up to 1 to 512 characters in length. Defaults to null.
  ///
  /// > **NOTE:**  You must specify one of the following field: `cidr_ip`,`source_security_group_id`,`prefix_list_id`,`ipv6_cidr_ip`.
  late final pulumi.Output<String?> description;
  /// The transport layer protocol of the Security Group Rule. Valid values: `tcp`, `udp`, `icmp`, `icmpv6`, `gre`, `all`. **NOTE:** From version 1.262.0, `ip_protocol` can be set to `icmpv6`.
  late final pulumi.Output<String> ipProtocol;
  /// Source IPv6 CIDR address block that requires access. Supports IP address ranges in CIDR format and IPv6 format. **NOTE:** This parameter cannot be set at the same time as the `cidr_ip` parameter.
  late final pulumi.Output<String?> ipv6CidrIp;
  /// Network type, can be either `internet` or `intranet`, the default value is `internet`.
  late final pulumi.Output<String> nicType;
  /// The action of the Security Group Rule that determines whether to allow inbound access. Default value: `accept`. Valid values: `accept`, `drop`.
  late final pulumi.Output<String?> policy;
  /// The range of port numbers relevant to the IP protocol. Default to "-1/-1". When the protocol is tcp or udp, each side port number range from 1 to 65535 and '-1/-1' will be invalid.
  /// For example, `1/200` means that the range of the port numbers is 1-200. Other protocols' 'port_range' can only be "-1/-1", and other values will be invalid.
  late final pulumi.Output<String?> portRange;
  /// The ID of the source/destination prefix list to which you want to control access. **NOTE:** If you specify `cidr_ip`,`source_security_group_id`,`ipv6_cidr_ip` parameter, this parameter is ignored.
  late final pulumi.Output<String> prefixListId;
  /// The priority of the Security Group Rule. Default value: `1`. Valid values: `1` to `100`.
  late final pulumi.Output<int?> priority;
  /// The ID of the Security Group.
  late final pulumi.Output<String> securityGroupId;
  /// The ID of the Security Group Rule.
  late final pulumi.Output<String> securityGroupRuleId;
  /// The Alibaba Cloud user account Id of the target security group when security groups are authorized across accounts.  This parameter is invalid if `cidr_ip` has already been set.
  late final pulumi.Output<String?> sourceGroupOwnerAccount;
  /// The target security group ID within the same region. If this field is specified, the `nic_type` can only select `intranet`.
  late final pulumi.Output<String?> sourceSecurityGroupId;
  /// The type of the Security Group Rule. Valid values:
  late final pulumi.Output<String> type;

  /// Creates a new [SecurityGroupRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityGroupRule]. {@macro pulumi_ecs_security_group_rule_security_group_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityGroupRule(
    String name, {
    SecurityGroupRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/securityGroupRule:SecurityGroupRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrIp = registerOutput<String?>('cidrIp');
    this.description = registerOutput<String?>('description');
    this.ipProtocol = registerOutput<String>('ipProtocol');
    this.ipv6CidrIp = registerOutput<String?>('ipv6CidrIp');
    this.nicType = registerOutput<String>('nicType');
    this.policy = registerOutput<String?>('policy');
    this.portRange = registerOutput<String?>('portRange');
    this.prefixListId = registerOutput<String>('prefixListId');
    this.priority = registerOutput<int?>('priority');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.securityGroupRuleId = registerOutput<String>('securityGroupRuleId');
    this.sourceGroupOwnerAccount = registerOutput<String?>('sourceGroupOwnerAccount');
    this.sourceSecurityGroupId = registerOutput<String?>('sourceSecurityGroupId');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [SecurityGroupRule] resource's state with the given [name] and [id].
  static SecurityGroupRule get(
    String name,
    pulumi.Input<String> id, {
    SecurityGroupRuleState? state,
  }) {
    return SecurityGroupRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecurityGroupRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/securityGroupRule:SecurityGroupRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrIp = registerOutput<String?>('cidrIp');
    this.description = registerOutput<String?>('description');
    this.ipProtocol = registerOutput<String>('ipProtocol');
    this.ipv6CidrIp = registerOutput<String?>('ipv6CidrIp');
    this.nicType = registerOutput<String>('nicType');
    this.policy = registerOutput<String?>('policy');
    this.portRange = registerOutput<String?>('portRange');
    this.prefixListId = registerOutput<String>('prefixListId');
    this.priority = registerOutput<int?>('priority');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.securityGroupRuleId = registerOutput<String>('securityGroupRuleId');
    this.sourceGroupOwnerAccount = registerOutput<String?>('sourceGroupOwnerAccount');
    this.sourceSecurityGroupId = registerOutput<String?>('sourceSecurityGroupId');
    this.type = registerOutput<String>('type');
  }
}
