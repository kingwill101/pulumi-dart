import 'package:pulumi/pulumi.dart';
import '../policy_definition/policy_definition.dart';
import 'policy_args8.dart';

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
class Policy8 extends CustomResource {
  /// The date the policy was created.
  late final Output<String> createdDate;

  /// The definition of the policy. See Definition below.
  late final Output<PolicyDefinition> definition;

  /// The Policy ID of the policy.
  late final Output<String> policyId;

  /// The Policy Store ID of the policy store.
  late final Output<String> policyStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Policy8(
    String name, {
    PolicyArgs8? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:verifiedpermissions/policy:Policy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdDate = registerOutput<String>('createdDate');
    this.definition = registerOutput<PolicyDefinition>('definition');
    this.policyId = registerOutput<String>('policyId');
    this.policyStoreId = registerOutput<String>('policyStoreId');
    this.region = registerOutput<String>('region');
  }
}
