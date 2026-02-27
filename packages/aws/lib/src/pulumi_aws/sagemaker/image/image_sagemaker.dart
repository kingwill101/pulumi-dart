import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_sagemaker_args.dart';

/// Provides a SageMaker AI Image resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Code Images using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/image:Image test_image my-code-repo
/// ```
class ImageSagemaker extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Image.
  late final pulumi.Output<String> arn;

  /// The description of the image.
  late final pulumi.Output<String?> description;

  /// The display name of the image. When the image is added to a domain (must be unique to the domain).
  late final pulumi.Output<String?> displayName;

  /// The name of the image. Must be unique to your account.
  late final pulumi.Output<String> imageName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of an IAM role that enables Amazon SageMaker AI to perform tasks on your behalf.
  late final pulumi.Output<String> roleArn;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ImageSagemaker(
    String name, {
    ImageSagemakerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/image:Image',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.imageName = registerOutput<String>('imageName');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
