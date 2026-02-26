// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRepository.
class GetRepositoryArgs2 {
  /// Name of the ECR Repository.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Registry ID where the repository was created.
  final Input<String>? registryId;

  /// Map of tags assigned to the resource.
  final Input<Map<String, String>>? tags;

  GetRepositoryArgs2({
    required this.name,
    this.region,
    this.registryId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final registryIdValue = registryId;
    if (registryIdValue != null) {
      map['registryId'] = registryIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetRepositoryArgs2.fromMap(Map<String, dynamic> map) {
    return GetRepositoryArgs2(
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      registryId: Input.asOptionalInput<String>(map['registryId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
