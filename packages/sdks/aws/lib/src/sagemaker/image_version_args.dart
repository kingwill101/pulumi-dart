// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sagemaker_image_version_image_version_args_doc}
/// The set of arguments for ImageVersion.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_image_version_image_version_args_doc}
class ImageVersionArgs {
  /// A list of aliases for the image version.
  final pulumi.Input<List<String>>? aliases;
  /// The registry path of the container image on which this image version is based.
  final pulumi.Input<String> baseImage;
  /// Indicates Horovod compatibility.
  final pulumi.Input<bool>? horovod;
  /// The name of the image. Must be unique to your account.
  final pulumi.Input<String> imageName;
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

  /// Creates a new [ImageVersionArgs].
  /// [aliases] A list of aliases for the image version.
  /// [baseImage] The registry path of the container image on which this image version is based.
  /// [horovod] Indicates Horovod compatibility.
  /// [imageName] The name of the image. Must be unique to your account.
  /// [jobType] Indicates SageMaker AI job type compatibility. Valid values are: `TRAINING`, `INFERENCE`, and `NOTEBOOK_KERNEL`.
  /// [mlFramework] The machine learning framework vended in the image version.
  /// [processor] Indicates CPU or GPU compatibility. Valid values are: `CPU` and `GPU`.
  /// [programmingLang] The supported programming language and its version.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [releaseNotes] The maintainer description of the image version.
  /// [vendorGuidance] The stability of the image version, specified by the maintainer. Valid values are: `NOT_PROVIDED`, `STABLE`, `TO_BE_ARCHIVED`, and `ARCHIVED`.
  const ImageVersionArgs({
    this.aliases,
    required this.baseImage,
    this.horovod,
    required this.imageName,
    this.jobType,
    this.mlFramework,
    this.processor,
    this.programmingLang,
    this.region,
    this.releaseNotes,
    this.vendorGuidance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'baseImage': baseImage,
      'horovod': ?horovod,
      'imageName': imageName,
      'jobType': ?jobType,
      'mlFramework': ?mlFramework,
      'processor': ?processor,
      'programmingLang': ?programmingLang,
      'region': ?region,
      'releaseNotes': ?releaseNotes,
      'vendorGuidance': ?vendorGuidance,
    };
  }

  factory ImageVersionArgs.fromMap(Map<String, dynamic> map) {
    return ImageVersionArgs(
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      baseImage: pulumi.Input.fromValue(map['baseImage'] as String),
      horovod: (() { final guardedValue = map['horovod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      jobType: (() { final guardedValue = map['jobType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mlFramework: (() { final guardedValue = map['mlFramework']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processor: (() { final guardedValue = map['processor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      programmingLang: (() { final guardedValue = map['programmingLang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseNotes: (() { final guardedValue = map['releaseNotes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vendorGuidance: (() { final guardedValue = map['vendorGuidance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

