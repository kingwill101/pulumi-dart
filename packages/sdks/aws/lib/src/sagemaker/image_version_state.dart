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
    this.aliases,
    this.arn,
    this.baseImage,
    this.containerImage,
    this.horovod,
    this.imageArn,
    this.imageName,
    this.jobType,
    this.mlFramework,
    this.processor,
    this.programmingLang,
    this.region,
    this.releaseNotes,
    this.vendorGuidance,
    this.version,
  });

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
      aliases: map['aliases'] == null ? null : ((map['aliases'] as List).cast<String>()).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      baseImage: map['baseImage'] == null ? null : (map['baseImage'] as String).input(),
      containerImage: map['containerImage'] == null ? null : (map['containerImage'] as String).input(),
      horovod: map['horovod'] == null ? null : (map['horovod'] as bool).input(),
      imageArn: map['imageArn'] == null ? null : (map['imageArn'] as String).input(),
      imageName: map['imageName'] == null ? null : (map['imageName'] as String).input(),
      jobType: map['jobType'] == null ? null : (map['jobType'] as String).input(),
      mlFramework: map['mlFramework'] == null ? null : (map['mlFramework'] as String).input(),
      processor: map['processor'] == null ? null : (map['processor'] as String).input(),
      programmingLang: map['programmingLang'] == null ? null : (map['programmingLang'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      releaseNotes: map['releaseNotes'] == null ? null : (map['releaseNotes'] as String).input(),
      vendorGuidance: map['vendorGuidance'] == null ? null : (map['vendorGuidance'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as int).input(),
    );
  }
}

