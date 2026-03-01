// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_dataset_encryption_spec.dart';

/// {@template pulumi_vertex_ai_dataset_ai_dataset_args_doc}
/// The set of arguments for AiDataset.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_dataset_ai_dataset_args_doc}
class AiDatasetArgs {
  /// The user-defined name of the Dataset. The name can be up to 128 characters long and can be consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;

  /// Customer-managed encryption key spec for a Dataset. If set, this Dataset and all sub-resources of this Dataset will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiDatasetEncryptionSpec>? encryptionSpec;

  /// A set of key/value label pairs to assign to this Workflow.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Points to a YAML file stored on Google Cloud Storage describing additional information about the Dataset. The schema is defined as an OpenAPI 3.0.2 Schema Object. The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/metadata/.
  final pulumi.Input<String> metadataSchemaUri;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the dataset. eg us-central1
  final pulumi.Input<String>? region;

  /// Creates a new [AiDatasetArgs].
  /// [displayName] The user-defined name of the Dataset. The name can be up to 128 characters long and can be consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key spec for a Dataset. If set, this Dataset and all sub-resources of this Dataset will be secured by this key.
  /// [labels] A set of key/value label pairs to assign to this Workflow.
  /// [metadataSchemaUri] Points to a YAML file stored on Google Cloud Storage describing additional information about the Dataset. The schema is defined as an OpenAPI 3.0.2 Schema Object. The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/metadata/.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the dataset. eg us-central1
  AiDatasetArgs({
    required String displayName,
    AiDatasetEncryptionSpec? encryptionSpec,
    Map<String, String>? labels,
    required String metadataSchemaUri,
    String? project,
    String? region,
  }) : displayName = pulumi.Input.asInput<String>(displayName),
       encryptionSpec = pulumi.Input.asOptionalInput<AiDatasetEncryptionSpec>(
         encryptionSpec,
       ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       metadataSchemaUri = pulumi.Input.asInput<String>(metadataSchemaUri),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'encryptionSpec':
          ?pulumi.Input.mapOptionalInputValue<
            AiDatasetEncryptionSpec,
            Map<String, dynamic>
          >(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'metadataSchemaUri': metadataSchemaUri,
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiDatasetArgs.fromMap(Map<String, dynamic> map) {
    return AiDatasetArgs(
      displayName: map['displayName'] as String,
      encryptionSpec: map['encryptionSpec'] == null
          ? null
          : AiDatasetEncryptionSpec.fromMap(
              (map['encryptionSpec'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      metadataSchemaUri: map['metadataSchemaUri'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
