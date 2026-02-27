// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRepository.
class GetRepositoryEcrArgs {
  /// Name of the ECR Repository.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Registry ID where the repository was created.
  final pulumi.Input<String>? registryId;

  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  GetRepositoryEcrArgs({
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

  factory GetRepositoryEcrArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryEcrArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      registryId: pulumi.Input.asOptionalInput<String>(map['registryId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
