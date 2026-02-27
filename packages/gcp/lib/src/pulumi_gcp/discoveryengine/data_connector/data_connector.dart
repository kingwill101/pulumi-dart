import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_connector_entity/data_connector_entity.dart';
import '../data_connector_error/data_connector_error.dart';
import 'data_connector_args.dart';

/// DataConnector manages the connection to external data sources for all data stores grouped
/// under a Collection. It's a singleton resource of Collection. The initialization is only
/// supported through DataConnectorService.SetUpDataConnector method, which will create a new
/// Collection and initialize its DataConnector.
///
///
/// To get more information about DataConnector, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rpc/google.cloud.discoveryengine.v1alpha#dataconnectorservice)
/// * How-to Guides
/// * [Introduction](https://cloud.google.com/agentspace/docs/introduction-to-connectors-and-data-stores)
///
/// ## Example Usage
///
/// ### Discoveryengine Dataconnector Servicenow Basic
///
///
///
///
/// ## Import
///
/// DataConnector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/dataConnector`
///
/// * `{{project}}/{{location}}/{{collection_id}}`
///
/// * `{{location}}/{{collection_id}}`
///
/// When using the `pulumi import` command, DataConnector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/dataConnector:DataConnector default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/dataConnector
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/dataConnector:DataConnector default {{project}}/{{location}}/{{collection_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/dataConnector:DataConnector default {{location}}/{{collection_id}}
/// ```
class DataConnector extends pulumi.CustomResource {
  /// State of the action connector. This reflects whether the action connector
  /// is initializing, active or has encountered errors. The possible value can be:
  /// 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE', 'FAILED', 'RUNNING', 'WARNING',
  /// 'INITIALIZATION_FAILED', 'UPDATING'.
  late final pulumi.Output<String> actionState;

  /// Indicates whether full syncs are paused for this connector
  late final pulumi.Output<bool?> autoRunDisabled;

  /// User actions that must be completed before the connector can start syncing data.
  /// The possible values can be: 'ALLOWLIST_STATIC_IP', 'ALLOWLIST_IN_SERVICE_ATTACHMENT'.
  late final pulumi.Output<List<String>> blockingReasons;

  /// The display name of the Collection.
  /// Should be human readable, used to display collections in the Console
  /// Dashboard. UTF-8 encoded string with limit of 1024 characters.
  late final pulumi.Output<String> collectionDisplayName;

  /// The ID to use for the Collection, which will become the final component
  /// of the Collection's resource name. A new Collection is created as
  /// part of the DataConnector setup. DataConnector is a singleton
  /// resource under Collection, managing all DataStores of the Collection.
  /// This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034)
  /// standard with a length limit of 63 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  late final pulumi.Output<String> collectionId;

  /// The modes enabled for this connector. The possible value can be:
  /// 'DATA_INGESTION', 'ACTIONS', 'FEDERATED'
  /// 'EUA', 'FEDERATED_AND_EUA'.
  late final pulumi.Output<List<String>?> connectorModes;

  /// The type of connector. Each source can only map to one type.
  /// For example, salesforce, confluence and jira have THIRD_PARTY connector
  /// type. It is not mutable once set by system. The possible value can be:
  /// 'CONNECTOR_TYPE_UNSPECIFIED', 'THIRD_PARTY', 'GCP_FHIR', 'BIG_QUERY',
  /// 'GCS', 'GOOGLE_MAIL', 'GOOGLE_CALENDAR', 'GOOGLE_DRIVE',
  /// 'NATIVE_CLOUD_IDENTITY', 'THIRD_PARTY_FEDERATED', 'THIRD_PARTY_EUA', 'GCNV'.
  late final pulumi.Output<String> connectorType;

  /// Timestamp when the DataConnector was created.
  late final pulumi.Output<String> createTime;

  /// The name of the data source.
  /// Supported values: `salesforce`, `jira`, `confluence`, `bigquery`.
  late final pulumi.Output<String> dataSource;

  /// List of entities from the connected data source to ingest.
  /// Structure is documented below.
  late final pulumi.Output<List<DataConnectorEntity>?> entities;

  /// The errors from initialization or from the latest connector run.
  /// Structure is documented below.
  late final pulumi.Output<List<DataConnectorError>> errors;

  /// The refresh interval specifically for incremental data syncs. If unset,
  /// incremental syncs will use the default from env, set to 3hrs.
  /// The minimum is 30 minutes and maximum is 7 days. Applicable to only 3P
  /// connectors. When the refresh interval is
  /// set to the same value as the incremental refresh interval, incremental
  /// sync will be disabled.
  late final pulumi.Output<String?> incrementalRefreshInterval;

  /// Indicates whether incremental syncs are paused for this connector.
  late final pulumi.Output<bool?> incrementalSyncDisabled;

  /// Params needed to access the source in the format of json string.
  late final pulumi.Output<String?> jsonParams;

  /// The KMS key to be used to protect the DataStores managed by this connector.
  /// Must be set for requests that need to comply with CMEK Org Policy
  /// protections.
  /// If this field is set and processed successfully, the DataStores created by
  /// this connector will be protected by the KMS key.
  late final pulumi.Output<String?> kmsKeyName;

  /// For periodic connectors only, the last time a data sync was completed.
  late final pulumi.Output<String> lastSyncTime;

  /// The most recent timestamp when this [DataConnector][] was paused,
  /// affecting all functionalities such as data synchronization.
  /// Pausing a connector has the following effects:
  /// - All functionalities, including data synchronization, are halted.
  /// - Any ongoing data synchronization job will be canceled.
  /// - No future data synchronization runs will be scheduled nor can be
  /// triggered.
  late final pulumi.Output<String> latestPauseTime;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;

  /// The full resource name of the Data Connector.
  /// Format: `projects/*/locations/*/collections/*/dataConnector`.
  late final pulumi.Output<String> name;

  /// Params needed to access the source in the format of String-to-String (Key, Value) pairs.
  late final pulumi.Output<Map<String, String>?> params;

  /// The tenant project ID associated with private connectivity connectors.
  /// This project must be allowlisted by in order for the connector to function.
  late final pulumi.Output<String> privateConnectivityProjectId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The real-time sync state. The possible values can be:
  /// 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE', 'FAILED', 'RUNNING', 'WARNING',
  /// 'INITIALIZATION_FAILED', 'UPDATING'.
  late final pulumi.Output<String> realtimeState;

  /// The refresh interval for data sync. If duration is set to 0, the data will
  /// be synced in real time. The streaming feature is not supported yet. The
  /// minimum is 30 minutes and maximum is 7 days. When the refresh interval is
  /// set to the same value as the incremental refresh interval, incremental
  /// sync will be disabled.
  late final pulumi.Output<String> refreshInterval;

  /// The state of connector. The possible value can be:
  /// 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE', 'FAILED', 'RUNNING', 'WARNING',
  /// 'INITIALIZATION_FAILED', 'UPDATING'.
  late final pulumi.Output<String> state;

  /// The static IP addresses used by this connector.
  late final pulumi.Output<List<String>> staticIpAddresses;

  /// Whether customer has enabled static IP addresses for this connector.
  late final pulumi.Output<bool?> staticIpEnabled;

  /// The data synchronization mode supported by the data connector. The possible value can be:
  /// 'PERIODIC', 'STREAMING'.
  late final pulumi.Output<String?> syncMode;

  /// Timestamp when the DataConnector was updated.
  late final pulumi.Output<String> updateTime;

  DataConnector(
    String name, {
    DataConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/dataConnector:DataConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actionState = registerOutput<String>('actionState');
    this.autoRunDisabled = registerOutput<bool?>('autoRunDisabled');
    this.blockingReasons = registerOutput<List<String>>('blockingReasons');
    this.collectionDisplayName =
        registerOutput<String>('collectionDisplayName');
    this.collectionId = registerOutput<String>('collectionId');
    this.connectorModes = registerOutput<List<String>?>('connectorModes');
    this.connectorType = registerOutput<String>('connectorType');
    this.createTime = registerOutput<String>('createTime');
    this.dataSource = registerOutput<String>('dataSource');
    this.entities = registerOutput<List<DataConnectorEntity>?>('entities');
    this.errors = registerOutput<List<DataConnectorError>>('errors');
    this.incrementalRefreshInterval =
        registerOutput<String?>('incrementalRefreshInterval');
    this.incrementalSyncDisabled =
        registerOutput<bool?>('incrementalSyncDisabled');
    this.jsonParams = registerOutput<String?>('jsonParams');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.lastSyncTime = registerOutput<String>('lastSyncTime');
    this.latestPauseTime = registerOutput<String>('latestPauseTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.params = registerOutput<Map<String, String>?>('params');
    this.privateConnectivityProjectId =
        registerOutput<String>('privateConnectivityProjectId');
    this.project = registerOutput<String>('project');
    this.realtimeState = registerOutput<String>('realtimeState');
    this.refreshInterval = registerOutput<String>('refreshInterval');
    this.state = registerOutput<String>('state');
    this.staticIpAddresses = registerOutput<List<String>>('staticIpAddresses');
    this.staticIpEnabled = registerOutput<bool?>('staticIpEnabled');
    this.syncMode = registerOutput<String?>('syncMode');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
