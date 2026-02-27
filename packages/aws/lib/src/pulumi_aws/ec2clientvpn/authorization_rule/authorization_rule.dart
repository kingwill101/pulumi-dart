import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_rule_args.dart';

/// Provides authorization rules for AWS Client VPN endpoints. For more information on usage, please see the
/// [AWS Client VPN Administrator's Guide](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/what-is.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using the endpoint ID, target network CIDR, and group name:
///
///
/// **Using `pulumi import` to import** AWS Client VPN authorization rules using the endpoint ID and target network CIDR. If there is a specific group name, include that also. All values are separated by a `,`. For example:
///
/// Using the endpoint ID and target network CIDR:
///
/// ```sh
/// $ pulumi import aws:ec2clientvpn/authorizationRule:AuthorizationRule example cvpn-endpoint-0ac3a1abbccddd666,10.1.0.0/24
/// ```
///
/// Using the endpoint ID, target network CIDR, and group name:
///
/// ```sh
/// $ pulumi import aws:ec2clientvpn/authorizationRule:AuthorizationRule example cvpn-endpoint-0ac3a1abbccddd666,10.1.0.0/24,team-a
/// ```
class AuthorizationRule extends pulumi.CustomResource {
  /// The ID of the group to which the authorization rule grants access. One of `access_group_id` or `authorize_all_groups` must be set.
  late final pulumi.Output<String?> accessGroupId;

  /// Indicates whether the authorization rule grants access to all clients. One of `access_group_id` or `authorize_all_groups` must be set.
  late final pulumi.Output<bool?> authorizeAllGroups;

  /// The ID of the Client VPN endpoint.
  late final pulumi.Output<String> clientVpnEndpointId;

  /// A brief description of the authorization rule.
  late final pulumi.Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The IPv4 or IPv6 address range, in CIDR notation, of the network to which the authorization rule applies.
  late final pulumi.Output<String> targetNetworkCidr;

  AuthorizationRule(
    String name, {
    AuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2clientvpn/authorizationRule:AuthorizationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessGroupId = registerOutput<String?>('accessGroupId');
    this.authorizeAllGroups = registerOutput<bool?>('authorizeAllGroups');
    this.clientVpnEndpointId = registerOutput<String>('clientVpnEndpointId');
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.targetNetworkCidr = registerOutput<String>('targetNetworkCidr');
  }
}
