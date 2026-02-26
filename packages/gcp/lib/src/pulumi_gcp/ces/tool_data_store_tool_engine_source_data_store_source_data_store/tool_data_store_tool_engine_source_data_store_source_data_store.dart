// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../tool_data_store_tool_engine_source_data_store_source_data_store_connector_config/tool_data_store_tool_engine_source_data_store_source_data_store_connector_config.dart';

class ToolDataStoreToolEngineSourceDataStoreSourceDataStore {
  /// (Output)
  /// The connector config for the data store connection.
  /// Structure is documented below.
  final List<
          ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig>?
      connectorConfigs;

  /// (Output)
  /// Timestamp when the data store was created.
  final String? createTime;

  /// (Output)
  /// The display name of the data store.
  final String? displayName;

  /// (Output)
  /// The document processing mode for the data store connection.
  /// Only set for PUBLIC_WEB and UNSTRUCTURED data stores.
  /// Possible values:
  /// DOCUMENTS
  /// CHUNKS
  final String? documentProcessingMode;

  /// Full resource name of the DataStore.
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore}`
  final String name;

  /// (Output)
  /// The type of the data store. This field is readonly and populated by the
  /// server.
  /// Possible values:
  /// PUBLIC_WEB
  /// UNSTRUCTURED
  /// FAQ
  /// CONNECTOR
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedDataStoreToolEngineSourceDataStoreSourcesDataStoreConnectorConfig"" pulumi-lang-dotnet=""NestedDataStoreToolEngineSourceDataStoreSourcesDataStoreConnectorConfig"" pulumi-lang-go=""nestedDataStoreToolEngineSourceDataStoreSourcesDataStoreConnectorConfig"" pulumi-lang-python=""nested_data_store_tool_engine_source_data_store_sources_data_store_connector_config"" pulumi-lang-yaml=""nestedDataStoreToolEngineSourceDataStoreSourcesDataStoreConnectorConfig"" pulumi-lang-java=""nestedDataStoreToolEngineSourceDataStoreSourcesDataStoreConnectorConfig"">"nested_data_store_tool_engine_source_data_store_sources_data_store_connector_config"</span>></a>The <span pulumi-lang-nodejs="`connectorConfig`" pulumi-lang-dotnet="`ConnectorConfig`" pulumi-lang-go="`connectorConfig`" pulumi-lang-python="`connector_config`" pulumi-lang-yaml="`connectorConfig`" pulumi-lang-java="`connectorConfig`">`connector_config`</span> block contains:
  final String? type;

  ToolDataStoreToolEngineSourceDataStoreSourceDataStore({
    this.connectorConfigs,
    this.createTime,
    this.displayName,
    this.documentProcessingMode,
    required this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectorConfigsValue = connectorConfigs;
    if (connectorConfigsValue != null) {
      map['connectorConfigs'] = Input.encodeList<
          ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig,
          Map<String,
              dynamic>>(connectorConfigsValue, (value) => value.toMap());
    }
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final documentProcessingModeValue = documentProcessingMode;
    if (documentProcessingModeValue != null) {
      map['documentProcessingMode'] = documentProcessingModeValue;
    }
    map['name'] = name;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ToolDataStoreToolEngineSourceDataStoreSourceDataStore.fromMap(
      Map<String, dynamic> map) {
    return ToolDataStoreToolEngineSourceDataStoreSourceDataStore(
      connectorConfigs: map['connectorConfigs'] == null
          ? null
          : Input.decodeList<
                  ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig>(
              map['connectorConfigs'],
              (value) =>
                  ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      documentProcessingMode: map['documentProcessingMode'] == null
          ? null
          : map['documentProcessingMode'] as String,
      name: map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
