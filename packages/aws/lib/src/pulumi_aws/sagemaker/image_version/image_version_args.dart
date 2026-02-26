// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ImageVersion.
class ImageVersionArgs {
  /// A list of aliases for the image version.
  final Input<List<String>>? aliases;

  /// The registry path of the container image on which this image version is based.
  final Input<String> baseImage;

  /// Indicates Horovod compatibility.
  final Input<bool>? horovod;

  /// The name of the image. Must be unique to your account.
  final Input<String> imageName;

  /// Indicates SageMaker AI job type compatibility. Valid values are: `TRAINING`, `INFERENCE`, and `NOTEBOOK_KERNEL`.
  final Input<String>? jobType;

  /// The machine learning framework vended in the image version.
  final Input<String>? mlFramework;

  /// Indicates CPU or GPU compatibility. Valid values are: `CPU` and `GPU`.
  final Input<String>? processor;

  /// The supported programming language and its version.
  final Input<String>? programmingLang;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The maintainer description of the image version.
  final Input<String>? releaseNotes;

  /// The stability of the image version, specified by the maintainer. Valid values are: `NOT_PROVIDED`, `STABLE`, `TO_BE_ARCHIVED`, and `ARCHIVED`.
  final Input<String>? vendorGuidance;

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
      aliases: Input.asOptionalInput<List<String>>(map['aliases']),
      baseImage: Input.asInput<String>(map['baseImage']),
      horovod: Input.asOptionalInput<bool>(map['horovod']),
      imageName: Input.asInput<String>(map['imageName']),
      jobType: Input.asOptionalInput<String>(map['jobType']),
      mlFramework: Input.asOptionalInput<String>(map['mlFramework']),
      processor: Input.asOptionalInput<String>(map['processor']),
      programmingLang: Input.asOptionalInput<String>(map['programmingLang']),
      region: Input.asOptionalInput<String>(map['region']),
      releaseNotes: Input.asOptionalInput<String>(map['releaseNotes']),
      vendorGuidance: Input.asOptionalInput<String>(map['vendorGuidance']),
    );
  }
}
