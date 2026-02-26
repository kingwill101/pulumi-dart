// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getImages.
class GetImagesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the Registry where the repository resides.
  final Input<String>? registryId;

  /// Name of the ECR Repository.
  final Input<String> repositoryName;

  GetImagesArgs({
    this.region,
    this.registryId,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final registryIdValue = registryId;
    if (registryIdValue != null) {
      map['registryId'] = registryIdValue;
    }
    map['repositoryName'] = repositoryName;
    return map;
  }

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      region: Input.asOptionalInput<String>(map['region']),
      registryId: Input.asOptionalInput<String>(map['registryId']),
      repositoryName: Input.asInput<String>(map['repositoryName']),
    );
  }
}
