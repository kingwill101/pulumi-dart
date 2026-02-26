// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Dataset.
class DatasetArgs7 {
  /// The name of the dataset to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  final Input<String>? displayName;
  final Input<String>? location;

  /// The resource name of the dataset, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  final Input<String>? name;
  final Input<String>? project;

  /// The BCP-47 language code of the source language.
  final Input<String>? sourceLanguageCode;

  /// The BCP-47 language code of the target language.
  final Input<String>? targetLanguageCode;

  DatasetArgs7({
    this.displayName,
    this.location,
    this.name,
    this.project,
    this.sourceLanguageCode,
    this.targetLanguageCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
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
    final sourceLanguageCodeValue = sourceLanguageCode;
    if (sourceLanguageCodeValue != null) {
      map['sourceLanguageCode'] = sourceLanguageCodeValue;
    }
    final targetLanguageCodeValue = targetLanguageCode;
    if (targetLanguageCodeValue != null) {
      map['targetLanguageCode'] = targetLanguageCodeValue;
    }
    return map;
  }

  factory DatasetArgs7.fromMap(Map<String, dynamic> map) {
    return DatasetArgs7(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      sourceLanguageCode:
          Input.asOptionalInput<String>(map['sourceLanguageCode']),
      targetLanguageCode:
          Input.asOptionalInput<String>(map['targetLanguageCode']),
    );
  }
}
