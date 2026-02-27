// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ImageVersion.
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

  ImageVersionArgs({
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
    final map = <String, dynamic>{};
    final aliasesValue = aliases;
    if (aliasesValue != null) {
      map['aliases'] = aliasesValue;
    }
    map['baseImage'] = baseImage;
    final horovodValue = horovod;
    if (horovodValue != null) {
      map['horovod'] = horovodValue;
    }
    map['imageName'] = imageName;
    final jobTypeValue = jobType;
    if (jobTypeValue != null) {
      map['jobType'] = jobTypeValue;
    }
    final mlFrameworkValue = mlFramework;
    if (mlFrameworkValue != null) {
      map['mlFramework'] = mlFrameworkValue;
    }
    final processorValue = processor;
    if (processorValue != null) {
      map['processor'] = processorValue;
    }
    final programmingLangValue = programmingLang;
    if (programmingLangValue != null) {
      map['programmingLang'] = programmingLangValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final releaseNotesValue = releaseNotes;
    if (releaseNotesValue != null) {
      map['releaseNotes'] = releaseNotesValue;
    }
    final vendorGuidanceValue = vendorGuidance;
    if (vendorGuidanceValue != null) {
      map['vendorGuidance'] = vendorGuidanceValue;
    }
    return map;
  }

  factory ImageVersionArgs.fromMap(Map<String, dynamic> map) {
    return ImageVersionArgs(
      aliases: pulumi.Input.asOptionalInput<List<String>>(map['aliases']),
      baseImage: pulumi.Input.asInput<String>(map['baseImage']),
      horovod: pulumi.Input.asOptionalInput<bool>(map['horovod']),
      imageName: pulumi.Input.asInput<String>(map['imageName']),
      jobType: pulumi.Input.asOptionalInput<String>(map['jobType']),
      mlFramework: pulumi.Input.asOptionalInput<String>(map['mlFramework']),
      processor: pulumi.Input.asOptionalInput<String>(map['processor']),
      programmingLang:
          pulumi.Input.asOptionalInput<String>(map['programmingLang']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      releaseNotes: pulumi.Input.asOptionalInput<String>(map['releaseNotes']),
      vendorGuidance:
          pulumi.Input.asOptionalInput<String>(map['vendorGuidance']),
    );
  }
}
