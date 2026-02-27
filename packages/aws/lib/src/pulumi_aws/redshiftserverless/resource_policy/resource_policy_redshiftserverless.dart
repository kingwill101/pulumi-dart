import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_redshiftserverless_args.dart';

/// Creates a new Amazon Redshift Serverless Resource Policy.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Resource Policies using the `resource_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/resourcePolicy:ResourcePolicy example example
/// ```
class ResourcePolicyRedshiftserverless extends pulumi.CustomResource {
  /// The policy to create or update. For example, the following policy grants a user authorization to restore a snapshot.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the account to create or update a resource policy for.
  late final pulumi.Output<String> resourceArn;

  ResourcePolicyRedshiftserverless(
    String name, {
    ResourcePolicyRedshiftserverlessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
