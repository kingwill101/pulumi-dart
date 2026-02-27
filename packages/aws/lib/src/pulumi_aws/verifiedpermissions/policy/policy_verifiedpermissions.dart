import 'package:pulumi/pulumi.dart' as pulumi;
import '../policy_definition/policy_definition.dart';
import 'policy_verifiedpermissions_args.dart';

/// Resource for managing an AWS Verified Permissions Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Permissions Policy using the `policy_id,policy_store_id`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedpermissions/policy:Policy example policy-id-12345678,policy-store-id-12345678
/// ```
class PolicyVerifiedpermissions extends pulumi.CustomResource {
  /// The date the policy was created.
  late final pulumi.Output<String> createdDate;

  /// The definition of the policy. See Definition below.
  late final pulumi.Output<PolicyDefinition> definition;

  /// The Policy ID of the policy.
  late final pulumi.Output<String> policyId;

  /// The Policy Store ID of the policy store.
  late final pulumi.Output<String> policyStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  PolicyVerifiedpermissions(
    String name, {
    PolicyVerifiedpermissionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedpermissions/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdDate = registerOutput<String>('createdDate');
    this.definition = registerOutput<PolicyDefinition>('definition');
    this.policyId = registerOutput<String>('policyId');
    this.policyStoreId = registerOutput<String>('policyStoreId');
    this.region = registerOutput<String>('region');
  }
}
