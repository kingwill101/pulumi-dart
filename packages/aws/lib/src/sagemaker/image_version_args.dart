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
  ImageVersionArgs({
    List<String>? aliases,
    required String baseImage,
    bool? horovod,
    required String imageName,
    String? jobType,
    String? mlFramework,
    String? processor,
    String? programmingLang,
    String? region,
    String? releaseNotes,
    String? vendorGuidance,
  })  : aliases = pulumi.Input.asOptionalInput<List<String>>(aliases),
        baseImage = pulumi.Input.asInput<String>(baseImage),
        horovod = pulumi.Input.asOptionalInput<bool>(horovod),
        imageName = pulumi.Input.asInput<String>(imageName),
        jobType = pulumi.Input.asOptionalInput<String>(jobType),
        mlFramework = pulumi.Input.asOptionalInput<String>(mlFramework),
        processor = pulumi.Input.asOptionalInput<String>(processor),
        programmingLang = pulumi.Input.asOptionalInput<String>(programmingLang),
        region = pulumi.Input.asOptionalInput<String>(region),
        releaseNotes = pulumi.Input.asOptionalInput<String>(releaseNotes),
        vendorGuidance = pulumi.Input.asOptionalInput<String>(vendorGuidance);

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
      aliases: map['aliases'] == null
          ? null
          : (map['aliases'] as List).cast<String>(),
      baseImage: map['baseImage'] as String,
      horovod: map['horovod'] == null ? null : map['horovod'] as bool,
      imageName: map['imageName'] as String,
      jobType: map['jobType'] == null ? null : map['jobType'] as String,
      mlFramework:
          map['mlFramework'] == null ? null : map['mlFramework'] as String,
      processor: map['processor'] == null ? null : map['processor'] as String,
      programmingLang: map['programmingLang'] == null
          ? null
          : map['programmingLang'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      releaseNotes:
          map['releaseNotes'] == null ? null : map['releaseNotes'] as String,
      vendorGuidance: map['vendorGuidance'] == null
          ? null
          : map['vendorGuidance'] as String,
    );
  }
}
