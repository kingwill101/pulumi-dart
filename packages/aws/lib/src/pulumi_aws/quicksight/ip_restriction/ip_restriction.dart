import 'package:pulumi/pulumi.dart';
import 'ip_restriction_args.dart';

/// Manages the content and status of IP rules.
///
/// > Deletion of this resource clears all IP restrictions from a QuickSight account.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight IP restriction using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/ipRestriction:IpRestriction example "012345678901"
/// ```
class IpRestriction extends CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// Whether IP rules are turned on.
  late final Output<bool> enabled;

  /// Map of allowed IPv4 CIDR ranges and descriptions.
  late final Output<Map<String, String>?> ipRestrictionRuleMap;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of allowed VPC endpoint IDs and descriptions.
  late final Output<Map<String, String>?> vpcEndpointIdRestrictionRuleMap;

  /// Map of VPC IDs and descriptions. Traffic from all VPC endpoints that are present in the specified VPC is allowed.
  late final Output<Map<String, String>?> vpcIdRestrictionRuleMap;

  IpRestriction(
    String name, {
    IpRestrictionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/ipRestriction:IpRestriction',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.enabled = registerOutput<bool>('enabled');
    this.ipRestrictionRuleMap =
        registerOutput<Map<String, String>?>('ipRestrictionRuleMap');
    this.region = registerOutput<String>('region');
    this.vpcEndpointIdRestrictionRuleMap =
        registerOutput<Map<String, String>?>('vpcEndpointIdRestrictionRuleMap');
    this.vpcIdRestrictionRuleMap =
        registerOutput<Map<String, String>?>('vpcIdRestrictionRuleMap');
  }
}
