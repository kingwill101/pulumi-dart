// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../ai_index_encryption_spec/ai_index_encryption_spec.dart';
import '../ai_index_metadata/ai_index_metadata.dart';

/// The set of arguments for AiIndex.
class AiIndexArgs {
  /// The description of the Index.
  final pulumi.Input<String>? description;

  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;

  /// Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEncryptionSpec>? encryptionSpec;

  /// The update method to use with this Index. The value must be the followings. If not set, BATCH_UPDATE will be used by default.
  /// * BATCH_UPDATE: user can call indexes.patch with files on Cloud Storage of datapoints to update.
  /// * STREAM_UPDATE: user can call indexes.upsertDatapoints/DeleteDatapoints to update the Index and the updates will be applied in corresponding DeployedIndexes in nearly real-time.
  final pulumi.Input<String>? indexUpdateMethod;

  /// The labels with user-defined metadata to organize your Indexes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Additional information about the Index.
  /// Although this field is not marked as required in the API specification, it is currently required when creating an Index and must be provided.
  /// Attempts to create an Index without this field will result in an API error.
  /// Structure is documented below.
  final pulumi.Input<AiIndexMetadata> metadata;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the index. eg us-central1
  final pulumi.Input<String>? region;

  AiIndexArgs({
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.indexUpdateMethod,
    this.labels,
    required this.metadata,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = pulumi.Input.mapOptionalInputValue<
          AiIndexEncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final indexUpdateMethodValue = indexUpdateMethod;
    if (indexUpdateMethodValue != null) {
      map['indexUpdateMethod'] = indexUpdateMethodValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['metadata'] =
        pulumi.Input.mapInputValue<AiIndexMetadata, Map<String, dynamic>>(
            metadata, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AiIndexArgs.fromMap(Map<String, dynamic> map) {
    return AiIndexArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      encryptionSpec: pulumi.Input.asOptionalInput<AiIndexEncryptionSpec>(
          map['encryptionSpec']),
      indexUpdateMethod:
          pulumi.Input.asOptionalInput<String>(map['indexUpdateMethod']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      metadata: pulumi.Input.asInput<AiIndexMetadata>(map['metadata']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
