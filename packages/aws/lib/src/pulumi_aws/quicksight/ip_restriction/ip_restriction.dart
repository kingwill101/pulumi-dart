import 'package:pulumi/pulumi.dart' as pulumi;
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
class IpRestriction extends pulumi.CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// Whether IP rules are turned on.
  late final pulumi.Output<bool> enabled;

  /// Map of allowed IPv4 CIDR ranges and descriptions.
  late final pulumi.Output<Map<String, String>?> ipRestrictionRuleMap;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of allowed VPC endpoint IDs and descriptions.
  late final pulumi.Output<Map<String, String>?>
      vpcEndpointIdRestrictionRuleMap;

  /// Map of VPC IDs and descriptions. Traffic from all VPC endpoints that are present in the specified VPC is allowed.
  late final pulumi.Output<Map<String, String>?> vpcIdRestrictionRuleMap;

  IpRestriction(
    String name, {
    IpRestrictionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/ipRestriction:IpRestriction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
