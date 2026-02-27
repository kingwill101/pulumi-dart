import 'package:pulumi/pulumi.dart';
import 'resource_policy_args3.dart';

/// Resource for managing an AWS DynamoDB Resource Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DynamoDB table.
///
///
/// Using `pulumi import`, import DynamoDB Resource Policy using the `resource_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/resourcePolicy:ResourcePolicy example arn:aws:dynamodb:us-east-1:1234567890:table/my-table
/// ```
class ResourcePolicy3 extends CustomResource {
  /// Set this parameter to true to confirm that you want to remove your permissions to change the policy of this resource in the future.
  late final Output<bool> confirmRemoveSelfResourceAccess;

  /// n Amazon Web Services resource-based policy document in JSON format. The maximum size supported for a resource-based policy document is 20 KB. DynamoDB counts whitespaces when calculating the size of a policy against this limit. For a full list of all considerations that you should keep in mind while attaching a resource-based policy, see Resource-based policy considerations.
  ///
  /// The following arguments are optional:
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the DynamoDB resource to which the policy will be attached. The resources you can specify include tables and streams. You can control index permissions using the base table's policy. To specify the same permission level for your table and its indexes, you can provide both the table and index Amazon Resource Name (ARN)s in the Resource field of a given Statement in your policy document. Alternatively, to specify different permissions for your table, indexes, or both, you can define multiple Statement fields in your policy document.
  late final Output<String> resourceArn;

  /// A unique string that represents the revision ID of the policy. If you are comparing revision IDs, make sure to always use string comparison logic.
  late final Output<String> revisionId;

  ResourcePolicy3(
    String name, {
    ResourcePolicyArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/resourcePolicy:ResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.confirmRemoveSelfResourceAccess =
        registerOutput<bool>('confirmRemoveSelfResourceAccess');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.revisionId = registerOutput<String>('revisionId');
  }
}
