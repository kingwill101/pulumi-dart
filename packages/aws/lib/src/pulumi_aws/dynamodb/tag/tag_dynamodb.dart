import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_dynamodb_args.dart';

/// Manages an individual DynamoDB resource tag. This resource should only be used in cases where DynamoDB resources are created outside the provider (e.g., Table replicas in other regions).
///
/// > **NOTE:** This tagging resource should not be combined with the resource for managing the parent resource. For example, using `aws.dynamodb.Table` and `aws.dynamodb.Tag` to manage tags of the same DynamoDB Table in the same region will cause a perpetual difference where the `aws_dynamodb_cluster` resource will try to remove the tag being added by the `aws.dynamodb.Tag` resource.
///
/// > **NOTE:** This tagging resource does not use the provider `ignore_tags` configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.dynamodb.Tag` using the DynamoDB resource identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/tag:Tag example arn:aws:dynamodb:us-east-1:123456789012:table/example,Name
/// ```
class TagDynamodb extends pulumi.CustomResource {
  /// Tag name.
  late final pulumi.Output<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Amazon Resource Name (ARN) of the DynamoDB resource to tag.
  late final pulumi.Output<String> resourceArn;

  /// Tag value.
  late final pulumi.Output<String> value;

  TagDynamodb(
    String name, {
    TagDynamodbArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/tag:Tag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.key = registerOutput<String>('key');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.value = registerOutput<String>('value');
  }
}
