// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_connector_entity/data_connector_entity.dart';

/// The set of arguments for DataConnector.
class DataConnectorArgs {
  /// Indicates whether full syncs are paused for this connector
  final Input<bool>? autoRunDisabled;

  /// The display name of the Collection.
  /// Should be human readable, used to display collections in the Console
  /// Dashboard. UTF-8 encoded string with limit of 1024 characters.
  final Input<String> collectionDisplayName;

  /// The ID to use for the Collection, which will become the final component
  /// of the Collection's resource name. A new Collection is created as
  /// part of the DataConnector setup. DataConnector is a singleton
  /// resource under Collection, managing all DataStores of the Collection.
  /// This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034)
  /// standard with a length limit of 63 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  final Input<String> collectionId;

  /// The modes enabled for this connector. The possible value can be:
  /// 'DATA_INGESTION', 'ACTIONS', 'FEDERATED'
  /// 'EUA', 'FEDERATED_AND_EUA'.
  final Input<List<String>>? connectorModes;

  /// The name of the data source.
  /// Supported values: `salesforce`, `jira`, `confluence`, `bigquery`.
  final Input<String> dataSource;

  /// List of entities from the connected data source to ingest.
  /// Structure is documented below.
  final Input<List<DataConnectorEntity>>? entities;

  /// The refresh interval specifically for incremental data syncs. If unset,
  /// incremental syncs will use the default from env, set to 3hrs.
  /// The minimum is 30 minutes and maximum is 7 days. Applicable to only 3P
  /// connectors. When the refresh interval is
  /// set to the same value as the incremental refresh interval, incremental
  /// sync will be disabled.
  final Input<String>? incrementalRefreshInterval;

  /// Indicates whether incremental syncs are paused for this connector.
  final Input<bool>? incrementalSyncDisabled;

  /// Params needed to access the source in the format of json string.
  final Input<String>? jsonParams;

  /// The KMS key to be used to protect the DataStores managed by this connector.
  /// Must be set for requests that need to comply with CMEK Org Policy
  /// protections.
  /// If this field is set and processed successfully, the DataStores created by
  /// this connector will be protected by the KMS key.
  final Input<String>? kmsKeyName;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final Input<String> location;

  /// Params needed to access the source in the format of String-to-String (Key, Value) pairs.
  final Input<Map<String, String>>? params;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The refresh interval for data sync. If duration is set to 0, the data will
  /// be synced in real time. The streaming feature is not supported yet. The
  /// minimum is 30 minutes and maximum is 7 days. When the refresh interval is
  /// set to the same value as the incremental refresh interval, incremental
  /// sync will be disabled.
  final Input<String> refreshInterval;

  /// Whether customer has enabled static IP addresses for this connector.
  final Input<bool>? staticIpEnabled;

  /// The data synchronization mode supported by the data connector. The possible value can be:
  /// 'PERIODIC', 'STREAMING'.
  final Input<String>? syncMode;

  DataConnectorArgs({
    this.autoRunDisabled,
    required this.collectionDisplayName,
    required this.collectionId,
    this.connectorModes,
    required this.dataSource,
    this.entities,
    this.incrementalRefreshInterval,
    this.incrementalSyncDisabled,
    this.jsonParams,
    this.kmsKeyName,
    required this.location,
    this.params,
    this.project,
    required this.refreshInterval,
    this.staticIpEnabled,
    this.syncMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoRunDisabledValue = autoRunDisabled;
    if (autoRunDisabledValue != null) {
      map['autoRunDisabled'] = autoRunDisabledValue;
    }
    map['collectionDisplayName'] = collectionDisplayName;
    map['collectionId'] = collectionId;
    final connectorModesValue = connectorModes;
    if (connectorModesValue != null) {
      map['connectorModes'] = connectorModesValue;
    }
    map['dataSource'] = dataSource;
    final entitiesValue = entities;
    if (entitiesValue != null) {
      map['entities'] = Input.mapOptionalInputValue<List<DataConnectorEntity>,
              List<Map<String, dynamic>>>(
          entitiesValue,
          (value) =>
              Input.encodeList<DataConnectorEntity, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final incrementalRefreshIntervalValue = incrementalRefreshInterval;
    if (incrementalRefreshIntervalValue != null) {
      map['incrementalRefreshInterval'] = incrementalRefreshIntervalValue;
    }
    final incrementalSyncDisabledValue = incrementalSyncDisabled;
    if (incrementalSyncDisabledValue != null) {
      map['incrementalSyncDisabled'] = incrementalSyncDisabledValue;
    }
    final jsonParamsValue = jsonParams;
    if (jsonParamsValue != null) {
      map['jsonParams'] = jsonParamsValue;
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    map['location'] = location;
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] = paramsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['refreshInterval'] = refreshInterval;
    final staticIpEnabledValue = staticIpEnabled;
    if (staticIpEnabledValue != null) {
      map['staticIpEnabled'] = staticIpEnabledValue;
    }
    final syncModeValue = syncMode;
    if (syncModeValue != null) {
      map['syncMode'] = syncModeValue;
    }
    return map;
  }

  factory DataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return DataConnectorArgs(
      autoRunDisabled: Input.asOptionalInput<bool>(map['autoRunDisabled']),
      collectionDisplayName:
          Input.asInput<String>(map['collectionDisplayName']),
      collectionId: Input.asInput<String>(map['collectionId']),
      connectorModes:
          Input.asOptionalInput<List<String>>(map['connectorModes']),
      dataSource: Input.asInput<String>(map['dataSource']),
      entities:
          Input.asOptionalInput<List<DataConnectorEntity>>(map['entities']),
      incrementalRefreshInterval:
          Input.asOptionalInput<String>(map['incrementalRefreshInterval']),
      incrementalSyncDisabled:
          Input.asOptionalInput<bool>(map['incrementalSyncDisabled']),
      jsonParams: Input.asOptionalInput<String>(map['jsonParams']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      location: Input.asInput<String>(map['location']),
      params: Input.asOptionalInput<Map<String, String>>(map['params']),
      project: Input.asOptionalInput<String>(map['project']),
      refreshInterval: Input.asInput<String>(map['refreshInterval']),
      staticIpEnabled: Input.asOptionalInput<bool>(map['staticIpEnabled']),
      syncMode: Input.asOptionalInput<String>(map['syncMode']),
    );
  }
}
