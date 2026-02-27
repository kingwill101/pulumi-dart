import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_version_args.dart';

/// Provides a SageMaker AI Image Version resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ### With Aliases
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Image Versions using a comma-delimited string concatenating `image_name` and `version`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/imageVersion:ImageVersion example example-name,1
/// ```
class ImageVersion extends pulumi.CustomResource {
  /// A list of aliases for the image version.
  late final pulumi.Output<List<String>?> aliases;

  /// The Amazon Resource Name (ARN) assigned by AWS to this Image Version.
  late final pulumi.Output<String> arn;

  /// The registry path of the container image on which this image version is based.
  late final pulumi.Output<String> baseImage;

  /// The registry path of the container image that contains this image version.
  late final pulumi.Output<String> containerImage;

  /// Indicates Horovod compatibility.
  late final pulumi.Output<bool?> horovod;
  late final pulumi.Output<String> imageArn;

  /// The name of the image. Must be unique to your account.
  late final pulumi.Output<String> imageName;

  /// Indicates SageMaker AI job type compatibility. Valid values are: `TRAINING`, `INFERENCE`, and `NOTEBOOK_KERNEL`.
  late final pulumi.Output<String?> jobType;

  /// The machine learning framework vended in the image version.
  late final pulumi.Output<String?> mlFramework;

  /// Indicates CPU or GPU compatibility. Valid values are: `CPU` and `GPU`.
  late final pulumi.Output<String?> processor;

  /// The supported programming language and its version.
  late final pulumi.Output<String?> programmingLang;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The maintainer description of the image version.
  late final pulumi.Output<String?> releaseNotes;

  /// The stability of the image version, specified by the maintainer. Valid values are: `NOT_PROVIDED`, `STABLE`, `TO_BE_ARCHIVED`, and `ARCHIVED`.
  late final pulumi.Output<String?> vendorGuidance;

  /// The version of the image. If not specified, the latest version is described.
  late final pulumi.Output<int> version;

  ImageVersion(
    String name, {
    ImageVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/imageVersion:ImageVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aliases = registerOutput<List<String>?>('aliases');
    this.arn = registerOutput<String>('arn');
    this.baseImage = registerOutput<String>('baseImage');
    this.containerImage = registerOutput<String>('containerImage');
    this.horovod = registerOutput<bool?>('horovod');
    this.imageArn = registerOutput<String>('imageArn');
    this.imageName = registerOutput<String>('imageName');
    this.jobType = registerOutput<String?>('jobType');
    this.mlFramework = registerOutput<String?>('mlFramework');
    this.processor = registerOutput<String?>('processor');
    this.programmingLang = registerOutput<String?>('programmingLang');
    this.region = registerOutput<String>('region');
    this.releaseNotes = registerOutput<String?>('releaseNotes');
    this.vendorGuidance = registerOutput<String?>('vendorGuidance');
    this.version = registerOutput<int>('version');
  }
}
