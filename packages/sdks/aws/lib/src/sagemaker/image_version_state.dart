// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ImageVersion resources.
class ImageVersionState {
  /// A list of aliases for the image version.
  final pulumi.Input<List<String>>? aliases;
  /// The Amazon Resource Name (ARN) assigned by AWS to this Image Version.
  final pulumi.Input<String>? arn;
  /// The registry path of the container image on which this image version is based.
  final pulumi.Input<String>? baseImage;
  /// The registry path of the container image that contains this image version.
  final pulumi.Input<String>? containerImage;
  /// Indicates Horovod compatibility.
  final pulumi.Input<bool>? horovod;
  final pulumi.Input<String>? imageArn;
  /// The name of the image. Must be unique to your account.
  final pulumi.Input<String>? imageName;
  /// Indicates SageMaker AI job type compatibility. Valid values are: `TRAINING`, `INFERENCE`, and `NOTEBOOK_KERNEL`.
  final pulumi.Input<String>? jobType;
  /// The machine learning framework vended in the image version.
  final pulumi.Input<String>? mlFramework;
  /// Indicates CPU or GPU compatibility. Valid values are: `CPU` and `GPU`.
  final pulumi.Input<String>? processor;
  /// The supported programming language and its version.
  final pulumi.Input<String>? programmingLang;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The maintainer description of the image version.
  final pulumi.Input<String>? releaseNotes;
  /// The stability of the image version, specified by the maintainer. Valid values are: `NOT_PROVIDED`, `STABLE`, `TO_BE_ARCHIVED`, and `ARCHIVED`.
  final pulumi.Input<String>? vendorGuidance;
  /// The version of the image. If not specified, the latest version is described.
  final pulumi.Input<int>? version;

  /// Creates a new [ImageVersionState].
  /// [aliases] A list of aliases for the image version.
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this Image Version.
  /// [baseImage] The registry path of the container image on which this image version is based.
  /// [containerImage] The registry path of the container image that contains this image version.
  /// [horovod] Indicates Horovod compatibility.
  /// [imageArn] Optional.
  /// [imageName] The name of the image. Must be unique to your account.
  /// [jobType] Indicates SageMaker AI job type compatibility. Valid values are: `TRAINING`, `INFERENCE`, and `NOTEBOOK_KERNEL`.
  /// [mlFramework] The machine learning framework vended in the image version.
  /// [processor] Indicates CPU or GPU compatibility. Valid values are: `CPU` and `GPU`.
  /// [programmingLang] The supported programming language and its version.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [releaseNotes] The maintainer description of the image version.
  /// [vendorGuidance] The stability of the image version, specified by the maintainer. Valid values are: `NOT_PROVIDED`, `STABLE`, `TO_BE_ARCHIVED`, and `ARCHIVED`.
  /// [version] The version of the image. If not specified, the latest version is described.
  ImageVersionState({
    pulumi.Output<List<String>>? aliases,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? baseImage,
    pulumi.Output<String>? containerImage,
    pulumi.Output<bool>? horovod,
    pulumi.Output<String>? imageArn,
    pulumi.Output<String>? imageName,
    pulumi.Output<String>? jobType,
    pulumi.Output<String>? mlFramework,
    pulumi.Output<String>? processor,
    pulumi.Output<String>? programmingLang,
    pulumi.Output<String>? region,
    pulumi.Output<String>? releaseNotes,
    pulumi.Output<String>? vendorGuidance,
    pulumi.Output<int>? version,
  }) :
      aliases = pulumi.Input.asOptionalInput<List<String>>(aliases),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      baseImage = pulumi.Input.asOptionalInput<String>(baseImage),
      containerImage = pulumi.Input.asOptionalInput<String>(containerImage),
      horovod = pulumi.Input.asOptionalInput<bool>(horovod),
      imageArn = pulumi.Input.asOptionalInput<String>(imageArn),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      jobType = pulumi.Input.asOptionalInput<String>(jobType),
      mlFramework = pulumi.Input.asOptionalInput<String>(mlFramework),
      processor = pulumi.Input.asOptionalInput<String>(processor),
      programmingLang = pulumi.Input.asOptionalInput<String>(programmingLang),
      region = pulumi.Input.asOptionalInput<String>(region),
      releaseNotes = pulumi.Input.asOptionalInput<String>(releaseNotes),
      vendorGuidance = pulumi.Input.asOptionalInput<String>(vendorGuidance),
      version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'arn': ?arn,
      'baseImage': ?baseImage,
      'containerImage': ?containerImage,
      'horovod': ?horovod,
      'imageArn': ?imageArn,
      'imageName': ?imageName,
      'jobType': ?jobType,
      'mlFramework': ?mlFramework,
      'processor': ?processor,
      'programmingLang': ?programmingLang,
      'region': ?region,
      'releaseNotes': ?releaseNotes,
      'vendorGuidance': ?vendorGuidance,
      'version': ?version,
    };
  }

  factory ImageVersionState.fromMap(Map<String, dynamic> map) {
    return ImageVersionState(
      aliases: map['aliases'] == null ? null : pulumi.Output.create<List<String>>((map['aliases'] as List).cast<String>()),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      baseImage: map['baseImage'] == null ? null : pulumi.Output.create<String>(map['baseImage'] as String),
      containerImage: map['containerImage'] == null ? null : pulumi.Output.create<String>(map['containerImage'] as String),
      horovod: map['horovod'] == null ? null : pulumi.Output.create<bool>(map['horovod'] as bool),
      imageArn: map['imageArn'] == null ? null : pulumi.Output.create<String>(map['imageArn'] as String),
      imageName: map['imageName'] == null ? null : pulumi.Output.create<String>(map['imageName'] as String),
      jobType: map['jobType'] == null ? null : pulumi.Output.create<String>(map['jobType'] as String),
      mlFramework: map['mlFramework'] == null ? null : pulumi.Output.create<String>(map['mlFramework'] as String),
      processor: map['processor'] == null ? null : pulumi.Output.create<String>(map['processor'] as String),
      programmingLang: map['programmingLang'] == null ? null : pulumi.Output.create<String>(map['programmingLang'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      releaseNotes: map['releaseNotes'] == null ? null : pulumi.Output.create<String>(map['releaseNotes'] as String),
      vendorGuidance: map['vendorGuidance'] == null ? null : pulumi.Output.create<String>(map['vendorGuidance'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

