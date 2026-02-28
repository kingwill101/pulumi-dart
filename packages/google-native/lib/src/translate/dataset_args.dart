// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_translate_v3_dataset_args_doc}
/// The set of arguments for Dataset.
/// {@endtemplate}
/// {@macro pulumi_translate_v3_dataset_args_doc}
class DatasetArgs {
  /// The name of the dataset to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;

  /// The resource name of the dataset, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The BCP-47 language code of the source language.
  final pulumi.Input<String>? sourceLanguageCode;

  /// The BCP-47 language code of the target language.
  final pulumi.Input<String>? targetLanguageCode;

  /// Creates a new [DatasetArgs].
  /// [displayName] The name of the dataset to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  /// [location] Optional.
  /// [name] The resource name of the dataset, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  /// [project] Optional.
  /// [sourceLanguageCode] The BCP-47 language code of the source language.
  /// [targetLanguageCode] The BCP-47 language code of the target language.
  DatasetArgs({
    String? displayName,
    String? location,
    String? name,
    String? project,
    String? sourceLanguageCode,
    String? targetLanguageCode,
  })  : displayName = pulumi.Input.asOptionalInput<String>(displayName),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        sourceLanguageCode =
            pulumi.Input.asOptionalInput<String>(sourceLanguageCode),
        targetLanguageCode =
            pulumi.Input.asOptionalInput<String>(targetLanguageCode);

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

  factory DatasetArgs.fromMap(Map<String, dynamic> map) {
    return DatasetArgs(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceLanguageCode: map['sourceLanguageCode'] == null
          ? null
          : map['sourceLanguageCode'] as String,
      targetLanguageCode: map['targetLanguageCode'] == null
          ? null
          : map['targetLanguageCode'] as String,
    );
  }
}
