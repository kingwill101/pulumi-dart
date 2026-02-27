import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_transfer_args.dart';

/// Manages an individual Transfer Family resource tag. This resource should only be used in cases where Transfer Family resources are created outside the provider (e.g., Servers without AWS Management Console) or the tag key has the `aws:` prefix.
///
/// > **NOTE:** This tagging resource should not be combined with the resource for managing the parent resource. For example, using `aws.transfer.Server` and `aws.transfer.Tag` to manage tags of the same server will cause a perpetual difference where the `aws.transfer.Server` resource will try to remove the tag being added by the `aws.transfer.Tag` resource.
///
/// > **NOTE:** This tagging resource does not use the provider `ignore_tags` configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.transfer.Tag` using the Transfer Family resource identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:transfer/tag:Tag example arn:aws:transfer:us-east-1:123456789012:server/s-1234567890abcdef0,Name
/// ```
class TagTransfer extends pulumi.CustomResource {
  /// Tag name.
  late final pulumi.Output<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Amazon Resource Name (ARN) of the Transfer Family resource to tag.
  late final pulumi.Output<String> resourceArn;

  /// Tag value.
  late final pulumi.Output<String> value;

  TagTransfer(
    String name, {
    TagTransferArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/tag:Tag',
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
