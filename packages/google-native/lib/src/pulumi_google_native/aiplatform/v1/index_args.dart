// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'index_index_update_method.dart';

/// The set of arguments for Index.
class IndexArgs {
  /// The description of the Index.
  final Input<String>? description;

  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final Input<String> displayName;

  /// Immutable. Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  final Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final Input<String>? etag;

  /// Immutable. The update method to use with this Index. If not set, BATCH_UPDATE will be used by default.
  final Input<IndexIndexUpdateMethod>? indexUpdateMethod;

  /// The labels with user-defined metadata to organize your Indexes. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// An additional information about the Index; the schema of the metadata can be found in metadata_schema.
  final Input<dynamic>? metadata;

  /// Immutable. Points to a YAML file stored on Google Cloud Storage describing additional information about the Index, that is specific to it. Unset if the Index does not have any additional information. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  final Input<String>? metadataSchemaUri;
  final Input<String>? project;

  IndexArgs({
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.etag,
    this.indexUpdateMethod,
    this.labels,
    this.location,
    this.metadata,
    this.metadataSchemaUri,
    this.project,
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
      map['encryptionSpec'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1EncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final indexUpdateMethodValue = indexUpdateMethod;
    if (indexUpdateMethodValue != null) {
      map['indexUpdateMethod'] =
          Input.mapOptionalInputValue<IndexIndexUpdateMethod, String>(
              indexUpdateMethodValue, (value) => value.value);
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

  factory IndexArgs.fromMap(Map<String, dynamic> map) {
    return IndexArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      encryptionSpec:
          Input.asOptionalInput<GoogleCloudAiplatformV1EncryptionSpec>(
              map['encryptionSpec']),
      etag: Input.asOptionalInput<String>(map['etag']),
      indexUpdateMethod: Input.asOptionalInput<IndexIndexUpdateMethod>(
          map['indexUpdateMethod']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      metadata: Input.asOptionalInput<dynamic>(map['metadata']),
      metadataSchemaUri:
          Input.asOptionalInput<String>(map['metadataSchemaUri']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
