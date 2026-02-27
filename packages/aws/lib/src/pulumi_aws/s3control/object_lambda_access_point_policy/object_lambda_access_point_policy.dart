import 'package:pulumi/pulumi.dart';
import 'object_lambda_access_point_policy_args.dart';

/// Provides a resource to manage an S3 Object Lambda Access Point resource policy.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Object Lambda Access Point policies using the `account_id` and `name`, separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/objectLambdaAccessPointPolicy:ObjectLambdaAccessPointPolicy example 123456789012:example
/// ```
class ObjectLambdaAccessPointPolicy extends CustomResource {
  /// The AWS account ID for the account that owns the Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  late final Output<String> accountId;

  /// Indicates whether this access point currently has a policy that allows public access.
  late final Output<bool> hasPublicAccessPolicy;

  /// The name of the Object Lambda Access Point.
  late final Output<String> name;

  /// The Object Lambda Access Point resource policy document.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ObjectLambdaAccessPointPolicy(
    String name, {
    ObjectLambdaAccessPointPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3control/objectLambdaAccessPointPolicy:ObjectLambdaAccessPointPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.hasPublicAccessPolicy = registerOutput<bool>('hasPublicAccessPolicy');
    this.name = registerOutput<String>('name');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
