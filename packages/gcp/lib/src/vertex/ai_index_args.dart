// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_index_encryption_spec.dart';
import 'ai_index_metadata.dart';

/// {@template pulumi_vertex_ai_index_ai_index_args_doc}
/// The set of arguments for AiIndex.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_index_ai_index_args_doc}
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

  /// Creates a new [AiIndexArgs].
  /// [description] The description of the Index.
  /// [displayName] The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  /// [indexUpdateMethod] The update method to use with this Index. The value must be the followings. If not set, BATCH_UPDATE will be used by default.
  /// [labels] The labels with user-defined metadata to organize your Indexes.
  /// [metadata] Additional information about the Index.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the index. eg us-central1
  AiIndexArgs({
    String? description,
    required String displayName,
    AiIndexEncryptionSpec? encryptionSpec,
    String? indexUpdateMethod,
    Map<String, String>? labels,
    required AiIndexMetadata metadata,
    String? project,
    String? region,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      encryptionSpec = pulumi.Input.asOptionalInput<AiIndexEncryptionSpec>(encryptionSpec),
      indexUpdateMethod = pulumi.Input.asOptionalInput<String>(indexUpdateMethod),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      metadata = pulumi.Input.asInput<AiIndexMetadata>(metadata),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiIndexEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'indexUpdateMethod': ?indexUpdateMethod,
      'labels': ?labels,
      'metadata': pulumi.Input.mapInputValue<AiIndexMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiIndexArgs.fromMap(Map<String, dynamic> map) {
    return AiIndexArgs(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      encryptionSpec: map['encryptionSpec'] == null ? null : AiIndexEncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>()),
      indexUpdateMethod: map['indexUpdateMethod'] == null ? null : map['indexUpdateMethod'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      metadata: AiIndexMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

