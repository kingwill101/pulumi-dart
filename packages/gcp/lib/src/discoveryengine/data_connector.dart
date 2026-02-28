import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_args.dart';
import 'data_connector_entity.dart';
import 'data_connector_error.dart';

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
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const servicenow_basic = new gcp.discoveryengine.DataConnector("servicenow-basic", {
///     location: "global",
///     collectionId: "collection-id",
///     collectionDisplayName: "tf-test-dataconnector-servicenow",
///     dataSource: "servicenow",
///     params: {
///         auth_type: "OAUTH_PASSWORD_GRANT",
///         instance_uri: "https://gcpconnector1.service-now.com/",
///         client_id: "SECRET_MANAGER_RESOURCE_NAME",
///         client_secret: "SECRET_MANAGER_RESOURCE_NAME",
///         static_ip_enabled: "false",
///         user_account: "connectorsuserqa@google.com",
///         password: "SECRET_MANAGER_RESOURCE_NAME",
///     },
///     refreshInterval: "86400s",
///     incrementalRefreshInterval: "21600s",
///     entities: [
///         {
///             entityName: "catalog",
///             params: JSON.stringify({
///                 inclusion_filters: {
///                     knowledgeBaseSysId: ["123"],
///                 },
///             }),
///         },
///         {
///             entityName: "incident",
///             params: JSON.stringify({
///                 inclusion_filters: {
///                     knowledgeBaseSysId: ["123"],
///                 },
///             }),
///         },
///         {
///             entityName: "knowledge_base",
///             params: JSON.stringify({
///                 inclusion_filters: {
///                     knowledgeBaseSysId: ["123"],
///                 },
///             }),
///         },
///     ],
///     staticIpEnabled: false,
///     connectorModes: ["DATA_INGESTION"],
///     syncMode: "PERIODIC",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// servicenow_basic = gcp.discoveryengine.DataConnector("servicenow-basic",
///     location="global",
///     collection_id="collection-id",
///     collection_display_name="tf-test-dataconnector-servicenow",
///     data_source="servicenow",
///     params={
///         "auth_type": "OAUTH_PASSWORD_GRANT",
///         "instance_uri": "https://gcpconnector1.service-now.com/",
///         "client_id": "SECRET_MANAGER_RESOURCE_NAME",
///         "client_secret": "SECRET_MANAGER_RESOURCE_NAME",
///         "static_ip_enabled": "false",
///         "user_account": "connectorsuserqa@google.com",
///         "password": "SECRET_MANAGER_RESOURCE_NAME",
///     },
///     refresh_interval="86400s",
///     incremental_refresh_interval="21600s",
///     entities=[
///         {
///             "entity_name": "catalog",
///             "params": json.dumps({
///                 "inclusion_filters": {
///                     "knowledgeBaseSysId": ["123"],
///                 },
///             }),
///         },
///         {
///             "entity_name": "incident",
///             "params": json.dumps({
///                 "inclusion_filters": {
///                     "knowledgeBaseSysId": ["123"],
///                 },
///             }),
///         },
///         {
///             "entity_name": "knowledge_base",
///             "params": json.dumps({
///                 "inclusion_filters": {
///                     "knowledgeBaseSysId": ["123"],
///                 },
///             }),
///         },
///     ],
///     static_ip_enabled=False,
///     connector_modes=["DATA_INGESTION"],
///     sync_mode="PERIODIC")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var servicenow_basic = new Gcp.DiscoveryEngine.DataConnector("servicenow-basic", new()
///     {
///         Location = "global",
///         CollectionId = "collection-id",
///         CollectionDisplayName = "tf-test-dataconnector-servicenow",
///         DataSource = "servicenow",
///         Params =
///         {
///             { "auth_type", "OAUTH_PASSWORD_GRANT" },
///             { "instance_uri", "https://gcpconnector1.service-now.com/" },
///             { "client_id", "SECRET_MANAGER_RESOURCE_NAME" },
///             { "client_secret", "SECRET_MANAGER_RESOURCE_NAME" },
///             { "static_ip_enabled", "false" },
///             { "user_account", "connectorsuserqa@google.com" },
///             { "password", "SECRET_MANAGER_RESOURCE_NAME" },
///         },
///         RefreshInterval = "86400s",
///         IncrementalRefreshInterval = "21600s",
///         Entities = new[]
///         {
///             new Gcp.DiscoveryEngine.Inputs.DataConnectorEntityArgs
///             {
///                 EntityName = "catalog",
///                 Params = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["inclusion_filters"] = new Dictionary<string, object?>
///                     {
///                         ["knowledgeBaseSysId"] = new[]
///                         {
///                             "123",
///                         },
///                     },
///                 }),
///             },
///             new Gcp.DiscoveryEngine.Inputs.DataConnectorEntityArgs
///             {
///                 EntityName = "incident",
///                 Params = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["inclusion_filters"] = new Dictionary<string, object?>
///                     {
///                         ["knowledgeBaseSysId"] = new[]
///                         {
///                             "123",
///                         },
///                     },
///                 }),
///             },
///             new Gcp.DiscoveryEngine.Inputs.DataConnectorEntityArgs
///             {
///                 EntityName = "knowledge_base",
///                 Params = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["inclusion_filters"] = new Dictionary<string, object?>
///                     {
///                         ["knowledgeBaseSysId"] = new[]
///                         {
///                             "123",
///                         },
///                     },
///                 }),
///             },
///         },
///         StaticIpEnabled = false,
///         ConnectorModes = new[]
///         {
///             "DATA_INGESTION",
///         },
///         SyncMode = "PERIODIC",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"inclusion_filters": map[string]interface{}{
/// 				"knowledgeBaseSysId": []string{
/// 					"123",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"inclusion_filters": map[string]interface{}{
/// 				"knowledgeBaseSysId": []string{
/// 					"123",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		tmpJSON2, err := json.Marshal(map[string]interface{}{
/// 			"inclusion_filters": map[string]interface{}{
/// 				"knowledgeBaseSysId": []string{
/// 					"123",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json2 := string(tmpJSON2)
/// 		_, err = discoveryengine.NewDataConnector(ctx, "servicenow-basic", &discoveryengine.DataConnectorArgs{
/// 			Location:              pulumi.String("global"),
/// 			CollectionId:          pulumi.String("collection-id"),
/// 			CollectionDisplayName: pulumi.String("tf-test-dataconnector-servicenow"),
/// 			DataSource:            pulumi.String("servicenow"),
/// 			Params: pulumi.StringMap{
/// 				"auth_type":         pulumi.String("OAUTH_PASSWORD_GRANT"),
/// 				"instance_uri":      pulumi.String("https://gcpconnector1.service-now.com/"),
/// 				"client_id":         pulumi.String("SECRET_MANAGER_RESOURCE_NAME"),
/// 				"client_secret":     pulumi.String("SECRET_MANAGER_RESOURCE_NAME"),
/// 				"static_ip_enabled": pulumi.String("false"),
/// 				"user_account":      pulumi.String("connectorsuserqa@google.com"),
/// 				"password":          pulumi.String("SECRET_MANAGER_RESOURCE_NAME"),
/// 			},
/// 			RefreshInterval:            pulumi.String("86400s"),
/// 			IncrementalRefreshInterval: pulumi.String("21600s"),
/// 			Entities: discoveryengine.DataConnectorEntityArray{
/// 				&discoveryengine.DataConnectorEntityArgs{
/// 					EntityName: pulumi.String("catalog"),
/// 					Params:     pulumi.String(json0),
/// 				},
/// 				&discoveryengine.DataConnectorEntityArgs{
/// 					EntityName: pulumi.String("incident"),
/// 					Params:     pulumi.String(json1),
/// 				},
/// 				&discoveryengine.DataConnectorEntityArgs{
/// 					EntityName: pulumi.String("knowledge_base"),
/// 					Params:     pulumi.String(json2),
/// 				},
/// 			},
/// 			StaticIpEnabled: pulumi.Bool(false),
/// 			ConnectorModes: pulumi.StringArray{
/// 				pulumi.String("DATA_INGESTION"),
/// 			},
/// 			SyncMode: pulumi.String("PERIODIC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.DataConnector;
/// import com.pulumi.gcp.discoveryengine.DataConnectorArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.DataConnectorEntityArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var servicenow_basic = new DataConnector("servicenow-basic", DataConnectorArgs.builder()
///             .location("global")
///             .collectionId("collection-id")
///             .collectionDisplayName("tf-test-dataconnector-servicenow")
///             .dataSource("servicenow")
///             .params(Map.ofEntries(
///                 Map.entry("auth_type", "OAUTH_PASSWORD_GRANT"),
///                 Map.entry("instance_uri", "https://gcpconnector1.service-now.com/"),
///                 Map.entry("client_id", "SECRET_MANAGER_RESOURCE_NAME"),
///                 Map.entry("client_secret", "SECRET_MANAGER_RESOURCE_NAME"),
///                 Map.entry("static_ip_enabled", "false"),
///                 Map.entry("user_account", "connectorsuserqa@google.com"),
///                 Map.entry("password", "SECRET_MANAGER_RESOURCE_NAME")
///             ))
///             .refreshInterval("86400s")
///             .incrementalRefreshInterval("21600s")
///             .entities(
///                 DataConnectorEntityArgs.builder()
///                     .entityName("catalog")
///                     .params(serializeJson(
///                         jsonObject(
///                             jsonProperty("inclusion_filters", jsonObject(
///                                 jsonProperty("knowledgeBaseSysId", jsonArray("123"))
///                             ))
///                         )))
///                     .build(),
///                 DataConnectorEntityArgs.builder()
///                     .entityName("incident")
///                     .params(serializeJson(
///                         jsonObject(
///                             jsonProperty("inclusion_filters", jsonObject(
///                                 jsonProperty("knowledgeBaseSysId", jsonArray("123"))
///                             ))
///                         )))
///                     .build(),
///                 DataConnectorEntityArgs.builder()
///                     .entityName("knowledge_base")
///                     .params(serializeJson(
///                         jsonObject(
///                             jsonProperty("inclusion_filters", jsonObject(
///                                 jsonProperty("knowledgeBaseSysId", jsonArray("123"))
///                             ))
///                         )))
///                     .build())
///             .staticIpEnabled(false)
///             .connectorModes("DATA_INGESTION")
///             .syncMode("PERIODIC")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   servicenow-basic:
///     type: gcp:discoveryengine:DataConnector
///     properties:
///       location: global
///       collectionId: collection-id
///       collectionDisplayName: tf-test-dataconnector-servicenow
///       dataSource: servicenow
///       params:
///         auth_type: OAUTH_PASSWORD_GRANT
///         instance_uri: https://gcpconnector1.service-now.com/
///         client_id: SECRET_MANAGER_RESOURCE_NAME
///         client_secret: SECRET_MANAGER_RESOURCE_NAME
///         static_ip_enabled: 'false'
///         user_account: connectorsuserqa@google.com
///         password: SECRET_MANAGER_RESOURCE_NAME
///       refreshInterval: 86400s
///       incrementalRefreshInterval: 21600s
///       entities:
///         - entityName: catalog
///           params:
///             fn::toJSON:
///               inclusion_filters:
///                 knowledgeBaseSysId:
///                   - '123'
///         - entityName: incident
///           params:
///             fn::toJSON:
///               inclusion_filters:
///                 knowledgeBaseSysId:
///                   - '123'
///         - entityName: knowledge_base
///           params:
///             fn::toJSON:
///               inclusion_filters:
///                 knowledgeBaseSysId:
///                   - '123'
///       staticIpEnabled: false
///       connectorModes:
///         - DATA_INGESTION
///       syncMode: PERIODIC
/// ```
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

  /// Creates a new [DataConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataConnector]. {@macro pulumi_discoveryengine_data_connector_data_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
    this.collectionDisplayName = registerOutput<String>('collectionDisplayName');
    this.collectionId = registerOutput<String>('collectionId');
    this.connectorModes = registerOutput<List<String>?>('connectorModes');
    this.connectorType = registerOutput<String>('connectorType');
    this.createTime = registerOutput<String>('createTime');
    this.dataSource = registerOutput<String>('dataSource');
    this.entities = registerOutput<List<DataConnectorEntity>?>('entities');
    this.errors = registerOutput<List<DataConnectorError>>('errors');
    this.incrementalRefreshInterval = registerOutput<String?>('incrementalRefreshInterval');
    this.incrementalSyncDisabled = registerOutput<bool?>('incrementalSyncDisabled');
    this.jsonParams = registerOutput<String?>('jsonParams');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.lastSyncTime = registerOutput<String>('lastSyncTime');
    this.latestPauseTime = registerOutput<String>('latestPauseTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.params = registerOutput<Map<String, String>?>('params');
    this.privateConnectivityProjectId = registerOutput<String>('privateConnectivityProjectId');
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
