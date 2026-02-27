// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DocumentAiProcessor.
class DocumentAiProcessorArgs {
  /// The display name. Must be unique.
  final pulumi.Input<String> displayName;

  /// The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.
  final pulumi.Input<String>? kmsKeyName;

  /// The location of the resource.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The type of processor. For possible types see the [official list](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations/fetchProcessorTypes#google.cloud.documentai.v1.DocumentProcessorService.FetchProcessorTypes)
  final pulumi.Input<String> type;

  DocumentAiProcessorArgs({
    required this.displayName,
    this.kmsKeyName,
    required this.location,
    this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['type'] = type;
    return map;
  }

  factory DocumentAiProcessorArgs.fromMap(Map<String, dynamic> map) {
    return DocumentAiProcessorArgs(
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
