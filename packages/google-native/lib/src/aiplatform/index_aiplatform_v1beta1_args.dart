// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'index_index_update_method_aiplatform_v1beta1.dart';

/// {@template pulumi_aiplatform_v1beta1_index_aiplatform_v1beta1_args_doc}
/// The set of arguments for Index.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_index_aiplatform_v1beta1_args_doc}
class IndexAiplatformV1beta1Args {
  /// The description of the Index.
  final pulumi.Input<String>? description;

  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;

  /// Immutable. Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>?
      encryptionSpec;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;

  /// Immutable. The update method to use with this Index. If not set, BATCH_UPDATE will be used by default.
  final pulumi.Input<IndexIndexUpdateMethodAiplatformV1beta1>?
      indexUpdateMethod;

  /// The labels with user-defined metadata to organize your Indexes. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// An additional information about the Index; the schema of the metadata can be found in metadata_schema.
  final pulumi.Input<dynamic>? metadata;

  /// Immutable. Points to a YAML file stored on Google Cloud Storage describing additional information about the Index, that is specific to it. Unset if the Index does not have any additional information. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  final pulumi.Input<String>? metadataSchemaUri;
  final pulumi.Input<String>? project;

  /// Creates a new [IndexAiplatformV1beta1Args].
  /// [description] The description of the Index.
  /// [displayName] The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Immutable. Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [indexUpdateMethod] Immutable. The update method to use with this Index. If not set, BATCH_UPDATE will be used by default.
  /// [labels] The labels with user-defined metadata to organize your Indexes. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [metadata] An additional information about the Index; the schema of the metadata can be found in metadata_schema.
  /// [metadataSchemaUri] Immutable. Points to a YAML file stored on Google Cloud Storage describing additional information about the Index, that is specific to it. Unset if the Index does not have any additional information. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  /// [project] Optional.
  IndexAiplatformV1beta1Args({
    String? description,
    required String displayName,
    GoogleCloudAiplatformV1beta1EncryptionSpec? encryptionSpec,
    String? etag,
    IndexIndexUpdateMethodAiplatformV1beta1? indexUpdateMethod,
    Map<String, String>? labels,
    String? location,
    dynamic metadata,
    String? metadataSchemaUri,
    String? project,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        encryptionSpec = pulumi.Input.asOptionalInput<
            GoogleCloudAiplatformV1beta1EncryptionSpec>(encryptionSpec),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        indexUpdateMethod = pulumi.Input.asOptionalInput<
            IndexIndexUpdateMethodAiplatformV1beta1>(indexUpdateMethod),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        metadata = pulumi.Input.asOptionalInput<dynamic>(metadata),
        metadataSchemaUri =
            pulumi.Input.asOptionalInput<String>(metadataSchemaUri),
        project = pulumi.Input.asOptionalInput<String>(project);

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
          GoogleCloudAiplatformV1beta1EncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final indexUpdateMethodValue = indexUpdateMethod;
    if (indexUpdateMethodValue != null) {
      map['indexUpdateMethod'] = pulumi.Input.mapOptionalInputValue<
          IndexIndexUpdateMethodAiplatformV1beta1,
          String>(indexUpdateMethodValue, (value) => value.value);
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final metadataSchemaUriValue = metadataSchemaUri;
    if (metadataSchemaUriValue != null) {
      map['metadataSchemaUri'] = metadataSchemaUriValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory IndexAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return IndexAiplatformV1beta1Args(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      encryptionSpec: map['encryptionSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1EncryptionSpec.fromMap(
              (map['encryptionSpec'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      indexUpdateMethod: map['indexUpdateMethod'] == null
          ? null
          : IndexIndexUpdateMethodAiplatformV1beta1.fromValue(
              map['indexUpdateMethod'] as String),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
      metadataSchemaUri: map['metadataSchemaUri'] == null
          ? null
          : map['metadataSchemaUri'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
