// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'repository_format2.dart';

/// The set of arguments for Repository.
class RepositoryArgs2 {
  /// The user-provided description of the repository.
  final Input<String>? description;

  /// Optional. The format of packages that are stored in the repository.
  final Input<RepositoryFormat2>? format;

  /// The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.
  final Input<String>? kmsKeyName;

  /// Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  final Input<String>? name;
  final Input<String>? project;

  /// Required. The repository id to use for this repository.
  final Input<String> repositoryId;

  RepositoryArgs2({
    this.description,
    this.format,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.name,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final formatValue = format;
    if (formatValue != null) {
      map['format'] = Input.mapOptionalInputValue<RepositoryFormat2, String>(
          formatValue, (value) => value.value);
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory RepositoryArgs2.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      format: Input.asOptionalInput<RepositoryFormat2>(map['format']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
    );
  }
}
