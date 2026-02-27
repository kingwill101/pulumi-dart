import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_ec2_args.dart';

/// Manages an individual EC2 resource tag. This resource should only be used in cases where EC2 resources are created outside the provider (e.g. AMIs), being shared via Resource Access Manager (RAM), or implicitly created by other means (e.g. Transit Gateway VPN Attachments).
///
/// > **NOTE:** This tagging resource should not be combined with the providers resource for managing the parent resource. For example, using `aws.ec2.Vpc` and `aws.ec2.Tag` to manage tags of the same VPC will cause a perpetual difference where the `aws.ec2.Vpc` resource will try to remove the tag being added by the `aws.ec2.Tag` resource.
///
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2.Tag` using the EC2 resource identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ec2/tag:Tag example tgw-attach-1234567890abcdef,Name
/// ```
class TagEc2 extends pulumi.CustomResource {
  /// The tag name.
  late final pulumi.Output<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the EC2 resource to manage the tag for.
  late final pulumi.Output<String> resourceId;

  /// The value of the tag.
  late final pulumi.Output<String> value;

  TagEc2(
    String name, {
    TagEc2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/tag:Tag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.key = registerOutput<String>('key');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.value = registerOutput<String>('value');
  }
}
