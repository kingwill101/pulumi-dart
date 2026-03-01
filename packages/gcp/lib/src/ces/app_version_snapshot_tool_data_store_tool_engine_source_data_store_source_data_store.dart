// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_engine_source_data_store_source_data_store_connector_config.dart';

class AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore {
  /// (Output)
  /// The connector config for the data store connection.
  /// Structure is documented below.
  final List<
    AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig
  >?
  connectorConfigs;

  /// (Output)
  /// Timestamp when the toolset was created.
  final String? createTime;

  /// The display name of the app version.
  final String? displayName;

  /// (Output)
  /// The document processing mode for the data store connection.
  /// Only set for PUBLIC_WEB and UNSTRUCTURED data stores.
  /// Possible values:
  /// DOCUMENTS
  /// CHUNKS
  final String? documentProcessingMode;

  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String? name;

  /// (Output)
  /// The type of the data store. This field is readonly and populated by the
  /// server.
  /// Possible values:
  /// PUBLIC_WEB
  /// UNSTRUCTURED
  /// FAQ
  /// CONNECTOR
  final String? type;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore].
  /// [connectorConfigs] (Output)
  /// [createTime] (Output)
  /// [displayName] The display name of the app version.
  /// [documentProcessingMode] (Output)
  /// [name] (Output)
  /// [type] (Output)
  AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore({
    this.connectorConfigs,
    this.createTime,
    this.displayName,
    this.documentProcessingMode,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorConfigs': ?connectorConfigs == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig,
              Map<String, dynamic>
            >(connectorConfigs!, (value) => value.toMap()),
      'createTime': ?createTime,
      'displayName': ?displayName,
      'documentProcessingMode': ?documentProcessingMode,
      'name': ?name,
      'type': ?type,
    };
  }

  factory AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore(
      connectorConfigs: map['connectorConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig
            >(
              map['connectorConfigs'],
              (value) =>
                  AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      createTime: map['createTime'] == null
          ? null
          : map['createTime'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      documentProcessingMode: map['documentProcessingMode'] == null
          ? null
          : map['documentProcessingMode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
