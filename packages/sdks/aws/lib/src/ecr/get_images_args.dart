// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecr_get_images_get_images_args_doc}
/// Arguments for getImages.
/// {@endtemplate}
/// {@macro pulumi_ecr_get_images_get_images_args_doc}
class GetImagesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the Registry where the repository resides.
  final pulumi.Input<String>? registryId;
  /// Name of the ECR Repository.
  final pulumi.Input<String> repositoryName;

  /// Creates a new [GetImagesArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] ID of the Registry where the repository resides.
  /// [repositoryName] Name of the ECR Repository.
  GetImagesArgs({
    this.region,
    this.registryId,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'registryId': ?registryId,
      'repositoryName': repositoryName,
    };
  }

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      registryId: map['registryId'] == null ? null : ((map['registryId'] as String).input()).input(),
      repositoryName: (map['repositoryName'] as String).input(),
    );
  }
}

