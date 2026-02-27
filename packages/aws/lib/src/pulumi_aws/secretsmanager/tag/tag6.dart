import 'package:pulumi/pulumi.dart';
import 'tag_args6.dart';

/// Manages an individual AWS Secrets Manager secret tag. This resource should only be used in cases where AWS Secrets Manager secrets are created outside Terraform (e.g., [AWS Secrets Manager secrets managed by other AWS services](https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html), such as RDS).
///
/// > **NOTE:** This tagging resource should not be combined with the Terraform resource for managing the parent resource. For example, using `aws.secretsmanager.Secret` and `aws.secretsmanager.Tag` to manage tags of the same AWS Secrets Manager secret will cause a perpetual difference where the `aws.secretsmanager.Secret` resource will try to remove the tag being added by the `aws.secretsmanager.Tag` resource. However, if the parent resource is created in the same configuration (i.e., if you have no other choice), you should add `ignore_changes = [tags]` in the parent resource's lifecycle block. This ensures that Terraform ignores differences in tags managed via the separate tagging resource, avoiding the perpetual difference mentioned above.
///
/// > **NOTE:** This tagging resource does not use the provider `ignore_tags` configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.secretsmanager.Tag` using the AWS Secrets Manager secret identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:secretsmanager/tag:Tag example arn:aws:secretsmanager:us-east-1:123456789012:example-secret,ExampleKey
/// ```
class Tag6 extends CustomResource {
  /// Tag name.
  late final Output<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the AWS Secrets Manager secret to tag.
  late final Output<String> secretId;

  /// Tag value.
  late final Output<String> value;

  Tag6(
    String name, {
    TagArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/tag:Tag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.key = registerOutput<String>('key');
    this.region = registerOutput<String>('region');
    this.secretId = registerOutput<String>('secretId');
    this.value = registerOutput<String>('value');
  }
}
