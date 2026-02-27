// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1_deployed_index_ref_response.dart';
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_index_stats_response.dart';

/// Result data returned by getIndex.
class GetIndexResult {
  /// Timestamp when this Index was created.
  final String createTime;

  /// The pointers to DeployedIndexes created from this Index. An Index can be only deleted if all its DeployedIndexes had been undeployed first.
  final List<GoogleCloudAiplatformV1DeployedIndexRefResponse> deployedIndexes;

  /// The description of the Index.
  final String description;

  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String displayName;

  /// Immutable. Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  final GoogleCloudAiplatformV1EncryptionSpecResponse encryptionSpec;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;

  /// Stats of the index resource.
  final GoogleCloudAiplatformV1IndexStatsResponse indexStats;

  /// Immutable. The update method to use with this Index. If not set, BATCH_UPDATE will be used by default.
  final String indexUpdateMethod;

  /// The labels with user-defined metadata to organize your Indexes. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String> labels;

  /// An additional information about the Index; the schema of the metadata can be found in metadata_schema.
  final dynamic metadata;

  /// Immutable. Points to a YAML file stored on Google Cloud Storage describing additional information about the Index, that is specific to it. Unset if the Index does not have any additional information. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  final String metadataSchemaUri;

  /// The resource name of the Index.
  final String name;

  /// Timestamp when this Index was most recently updated. This also includes any update to the contents of the Index. Note that Operations working on this Index may have their Operations.metadata.generic_metadata.update_time a little after the value of this timestamp, yet that does not mean their results are not already reflected in the Index. Result of any successfully completed Operation on the Index is reflected in it.
  final String updateTime;

  GetIndexResult({
    required this.createTime,
    required this.deployedIndexes,
    required this.description,
    required this.displayName,
    required this.encryptionSpec,
    required this.etag,
    required this.indexStats,
    required this.indexUpdateMethod,
    required this.labels,
    required this.metadata,
    required this.metadataSchemaUri,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['deployedIndexes'] = Input.encodeList<
        GoogleCloudAiplatformV1DeployedIndexRefResponse,
        Map<String, dynamic>>(deployedIndexes, (value) => value.toMap());
    map['description'] = description;
    map['displayName'] = displayName;
    map['encryptionSpec'] = encryptionSpec.toMap();
    map['etag'] = etag;
    map['indexStats'] = indexStats.toMap();
    map['indexUpdateMethod'] = indexUpdateMethod;
    map['labels'] = labels;
    map['metadata'] = metadata;
    map['metadataSchemaUri'] = metadataSchemaUri;
    map['name'] = name;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetIndexResult.fromMap(Map<String, dynamic> map) {
    return GetIndexResult(
      createTime: map['createTime'] as String,
      deployedIndexes:
          Input.decodeList<GoogleCloudAiplatformV1DeployedIndexRefResponse>(
              map['deployedIndexes'],
              (value) =>
                  GoogleCloudAiplatformV1DeployedIndexRefResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      encryptionSpec: GoogleCloudAiplatformV1EncryptionSpecResponse.fromMap(
          (map['encryptionSpec'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      indexStats: GoogleCloudAiplatformV1IndexStatsResponse.fromMap(
          (map['indexStats'] as Map).cast<String, dynamic>()),
      indexUpdateMethod: map['indexUpdateMethod'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      metadata: map['metadata'],
      metadataSchemaUri: map['metadataSchemaUri'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
