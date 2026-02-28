// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_entity.dart';

/// {@template pulumi_discoveryengine_data_connector_data_connector_args_doc}
/// The set of arguments for DataConnector.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_data_connector_data_connector_args_doc}
class DataConnectorArgs {
  /// Indicates whether full syncs are paused for this connector
  final pulumi.Input<bool>? autoRunDisabled;

  /// The display name of the Collection.
  /// Should be human readable, used to display collections in the Console
  /// Dashboard. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String> collectionDisplayName;

  /// The ID to use for the Collection, which will become the final component
  /// of the Collection's resource name. A new Collection is created as
  /// part of the DataConnector setup. DataConnector is a singleton
  /// resource under Collection, managing all DataStores of the Collection.
  /// This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034)
  /// standard with a length limit of 63 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  final pulumi.Input<String> collectionId;

  /// The modes enabled for this connector. The possible value can be:
  /// 'DATA_INGESTION', 'ACTIONS', 'FEDERATED'
  /// 'EUA', 'FEDERATED_AND_EUA'.
  final pulumi.Input<List<String>>? connectorModes;

  /// The name of the data source.
  /// Supported values: `salesforce`, `jira`, `confluence`, `bigquery`.
  final pulumi.Input<String> dataSource;

  /// List of entities from the connected data source to ingest.
  /// Structure is documented below.
  final pulumi.Input<List<DataConnectorEntity>>? entities;

  /// The refresh interval specifically for incremental data syncs. If unset,
  /// incremental syncs will use the default from env, set to 3hrs.
  /// The minimum is 30 minutes and maximum is 7 days. Applicable to only 3P
  /// connectors. When the refresh interval is
  /// set to the same value as the incremental refresh interval, incremental
  /// sync will be disabled.
  final pulumi.Input<String>? incrementalRefreshInterval;

  /// Indicates whether incremental syncs are paused for this connector.
  final pulumi.Input<bool>? incrementalSyncDisabled;

  /// Params needed to access the source in the format of json string.
  final pulumi.Input<String>? jsonParams;

  /// The KMS key to be used to protect the DataStores managed by this connector.
  /// Must be set for requests that need to comply with CMEK Org Policy
  /// protections.
  /// If this field is set and processed successfully, the DataStores created by
  /// this connector will be protected by the KMS key.
  final pulumi.Input<String>? kmsKeyName;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;

  /// Params needed to access the source in the format of String-to-String (Key, Value) pairs.
  final pulumi.Input<Map<String, String>>? params;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The refresh interval for data sync. If duration is set to 0, the data will
  /// be synced in real time. The streaming feature is not supported yet. The
  /// minimum is 30 minutes and maximum is 7 days. When the refresh interval is
  /// set to the same value as the incremental refresh interval, incremental
  /// sync will be disabled.
  final pulumi.Input<String> refreshInterval;

  /// Whether customer has enabled static IP addresses for this connector.
  final pulumi.Input<bool>? staticIpEnabled;

  /// The data synchronization mode supported by the data connector. The possible value can be:
  /// 'PERIODIC', 'STREAMING'.
  final pulumi.Input<String>? syncMode;

  /// Creates a new [DataConnectorArgs].
  /// [autoRunDisabled] Indicates whether full syncs are paused for this connector
  /// [collectionDisplayName] The display name of the Collection.
  /// [collectionId] The ID to use for the Collection, which will become the final component
  /// [connectorModes] The modes enabled for this connector. The possible value can be:
  /// [dataSource] The name of the data source.
  /// [entities] List of entities from the connected data source to ingest.
  /// [incrementalRefreshInterval] The refresh interval specifically for incremental data syncs. If unset,
  /// [incrementalSyncDisabled] Indicates whether incremental syncs are paused for this connector.
  /// [jsonParams] Params needed to access the source in the format of json string.
  /// [kmsKeyName] The KMS key to be used to protect the DataStores managed by this connector.
  /// [location] The geographic location where the data store should reside. The value can
  /// [params] Params needed to access the source in the format of String-to-String (Key, Value) pairs.
  /// [project] The ID of the project in which the resource belongs.
  /// [refreshInterval] The refresh interval for data sync. If duration is set to 0, the data will
  /// [staticIpEnabled] Whether customer has enabled static IP addresses for this connector.
  /// [syncMode] The data synchronization mode supported by the data connector. The possible value can be:
  DataConnectorArgs({
    bool? autoRunDisabled,
    required String collectionDisplayName,
    required String collectionId,
    List<String>? connectorModes,
    required String dataSource,
    List<DataConnectorEntity>? entities,
    String? incrementalRefreshInterval,
    bool? incrementalSyncDisabled,
    String? jsonParams,
    String? kmsKeyName,
    required String location,
    Map<String, String>? params,
    String? project,
    required String refreshInterval,
    bool? staticIpEnabled,
    String? syncMode,
  })  : autoRunDisabled = pulumi.Input.asOptionalInput<bool>(autoRunDisabled),
        collectionDisplayName =
            pulumi.Input.asInput<String>(collectionDisplayName),
        collectionId = pulumi.Input.asInput<String>(collectionId),
        connectorModes =
            pulumi.Input.asOptionalInput<List<String>>(connectorModes),
        dataSource = pulumi.Input.asInput<String>(dataSource),
        entities =
            pulumi.Input.asOptionalInput<List<DataConnectorEntity>>(entities),
        incrementalRefreshInterval =
            pulumi.Input.asOptionalInput<String>(incrementalRefreshInterval),
        incrementalSyncDisabled =
            pulumi.Input.asOptionalInput<bool>(incrementalSyncDisabled),
        jsonParams = pulumi.Input.asOptionalInput<String>(jsonParams),
        kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
        location = pulumi.Input.asInput<String>(location),
        params = pulumi.Input.asOptionalInput<Map<String, String>>(params),
        project = pulumi.Input.asOptionalInput<String>(project),
        refreshInterval = pulumi.Input.asInput<String>(refreshInterval),
        staticIpEnabled = pulumi.Input.asOptionalInput<bool>(staticIpEnabled),
        syncMode = pulumi.Input.asOptionalInput<String>(syncMode);

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
      map['entities'] = pulumi.Input.mapOptionalInputValue<
              List<DataConnectorEntity>, List<Map<String, dynamic>>>(
          entitiesValue,
          (value) => pulumi.Input.encodeList<DataConnectorEntity,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
      autoRunDisabled: map['autoRunDisabled'] == null
          ? null
          : map['autoRunDisabled'] as bool,
      collectionDisplayName: map['collectionDisplayName'] as String,
      collectionId: map['collectionId'] as String,
      connectorModes: map['connectorModes'] == null
          ? null
          : (map['connectorModes'] as List).cast<String>(),
      dataSource: map['dataSource'] as String,
      entities: map['entities'] == null
          ? null
          : pulumi.Input.decodeList<DataConnectorEntity>(
              map['entities'],
              (value) => DataConnectorEntity.fromMap(
                  (value as Map).cast<String, dynamic>())),
      incrementalRefreshInterval: map['incrementalRefreshInterval'] == null
          ? null
          : map['incrementalRefreshInterval'] as String,
      incrementalSyncDisabled: map['incrementalSyncDisabled'] == null
          ? null
          : map['incrementalSyncDisabled'] as bool,
      jsonParams:
          map['jsonParams'] == null ? null : map['jsonParams'] as String,
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      location: map['location'] as String,
      params: map['params'] == null
          ? null
          : (map['params'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
      refreshInterval: map['refreshInterval'] as String,
      staticIpEnabled: map['staticIpEnabled'] == null
          ? null
          : map['staticIpEnabled'] as bool,
      syncMode: map['syncMode'] == null ? null : map['syncMode'] as String,
    );
  }
}
