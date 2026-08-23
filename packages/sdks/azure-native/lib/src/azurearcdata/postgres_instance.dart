import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'postgres_instance_args.dart';
import 'postgres_instance_properties_response.dart';
import 'postgres_instance_sku_response.dart';
import 'system_data_response.dart';

/// A Postgres Instance.
///
/// Uses Azure REST API version 2025-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-15-preview.
///
/// Other available API versions: 2023-01-15-preview, 2024-01-01, 2024-05-01-preview, 2026-01-01, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a Postgres Instance.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var postgresInstance = new AzureNative.AzureArcData.PostgresInstance("postgresInstance", new()
///     {
///         ExtendedLocation = new AzureNative.AzureArcData.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation",
///             Type = AzureNative.AzureArcData.ExtendedLocationTypes.CustomLocation,
///         },
///         Location = "eastus",
///         PostgresInstanceName = "testpostgresInstance",
///         Properties = new AzureNative.AzureArcData.Inputs.PostgresInstancePropertiesArgs
///         {
///             Admin = "admin",
///             BasicLoginInformation = new AzureNative.AzureArcData.Inputs.BasicLoginInformationArgs
///             {
///                 Password = "********",
///                 Username = "username",
///             },
///             DataControllerId = "dataControllerId",
///             K8sRaw = new Dictionary<string, object?>
///             {
///                 ["apiVersion"] = "apiVersion",
///                 ["kind"] = "postgresql-12",
///                 ["metadata"] = new Dictionary<string, object?>
///                 {
///                     ["creationTimestamp"] = "2020-08-25T14:55:10Z",
///                     ["generation"] = 1,
///                     ["name"] = "pg1",
///                     ["namespace"] = "test",
///                     ["resourceVersion"] = "527780",
///                     ["selfLink"] = "/apis/arcdata.microsoft.com/v1alpha1/namespaces/test/postgresql-12s/pg1",
///                     ["uid"] = "1111aaaa-ffff-ffff-ffff-99999aaaaaaa",
///                 },
///                 ["spec"] = new Dictionary<string, object?>
///                 {
///                     ["backups"] = new Dictionary<string, object?>
///                     {
///                         ["deltaMinutes"] = 3,
///                         ["fullMinutes"] = 10,
///                         ["tiers"] = new[]
///                         {
///                             new Dictionary<string, object?>
///                             {
///                                 ["retention"] = new Dictionary<string, object?>
///                                 {
///                                     ["maximums"] = new[]
///                                     {
///                                         "6",
///                                         "512MB",
///                                     },
///                                     ["minimums"] = new[]
///                                     {
///                                         "3",
///                                     },
///                                 },
///                                 ["storage"] = new Dictionary<string, object?>
///                                 {
///                                     ["volumeSize"] = "1Gi",
///                                 },
///                             },
///                         },
///                     },
///                     ["engine"] = new Dictionary<string, object?>
///                     {
///                         ["extensions"] = new[]
///                         {
///                             new Dictionary<string, object?>
///                             {
///                                 ["name"] = "citus",
///                             },
///                         },
///                     },
///                     ["scale"] = new Dictionary<string, object?>
///                     {
///                         ["shards"] = 3,
///                     },
///                     ["scheduling"] = new Dictionary<string, object?>
///                     {
///                         ["default"] = new Dictionary<string, object?>
///                         {
///                             ["resources"] = new Dictionary<string, object?>
///                             {
///                                 ["requests"] = new Dictionary<string, object?>
///                                 {
///                                     ["memory"] = "256Mi",
///                                 },
///                             },
///                         },
///                     },
///                     ["service"] = new Dictionary<string, object?>
///                     {
///                         ["type"] = "NodePort",
///                     },
///                     ["storage"] = new Dictionary<string, object?>
///                     {
///                         ["data"] = new Dictionary<string, object?>
///                         {
///                             ["className"] = "local-storage",
///                             ["size"] = "5Gi",
///                         },
///                         ["logs"] = new Dictionary<string, object?>
///                         {
///                             ["className"] = "local-storage",
///                             ["size"] = "5Gi",
///                         },
///                     },
///                 },
///                 ["status"] = new Dictionary<string, object?>
///                 {
///                     ["externalEndpoint"] = null,
///                     ["readyPods"] = "4/4",
///                     ["state"] = "Ready",
///                 },
///             },
///         },
///         ResourceGroupName = "testrg",
///         Sku = new AzureNative.AzureArcData.Inputs.PostgresInstanceSkuArgs
///         {
///             Dev = true,
///             Name = "default",
///             Tier = AzureNative.AzureArcData.PostgresInstanceSkuTier.Hyperscale,
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	azurearcdata "github.com/pulumi/pulumi-azure-native-sdk/azurearcdata/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurearcdata.NewPostgresInstance(ctx, "postgresInstance", &azurearcdata.PostgresInstanceArgs{
/// 			ExtendedLocation: &azurearcdata.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation"),
/// 				Type: pulumi.String(azurearcdata.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			Location:             pulumi.String("eastus"),
/// 			PostgresInstanceName: pulumi.String("testpostgresInstance"),
/// 			Properties: &azurearcdata.PostgresInstancePropertiesArgs{
/// 				Admin: pulumi.String("admin"),
/// 				BasicLoginInformation: &azurearcdata.BasicLoginInformationArgs{
/// 					Password: pulumi.String("********"),
/// 					Username: pulumi.String("username"),
/// 				},
/// 				DataControllerId: pulumi.String("dataControllerId"),
/// 				K8sRaw: pulumi.Any(map[string]interface{}{
/// 					"apiVersion": "apiVersion",
/// 					"kind":       "postgresql-12",
/// 					"metadata": map[string]interface{}{
/// 						"creationTimestamp": "2020-08-25T14:55:10Z",
/// 						"generation":        1,
/// 						"name":              "pg1",
/// 						"namespace":         "test",
/// 						"resourceVersion":   "527780",
/// 						"selfLink":          "/apis/arcdata.microsoft.com/v1alpha1/namespaces/test/postgresql-12s/pg1",
/// 						"uid":               "1111aaaa-ffff-ffff-ffff-99999aaaaaaa",
/// 					},
/// 					"spec": map[string]interface{}{
/// 						"backups": map[string]interface{}{
/// 							"deltaMinutes": 3,
/// 							"fullMinutes":  10,
/// 							"tiers": []map[string]interface{}{
/// 								map[string]interface{}{
/// 									"retention": map[string]interface{}{
/// 										"maximums": []string{
/// 											"6",
/// 											"512MB",
/// 										},
/// 										"minimums": []string{
/// 											"3",
/// 										},
/// 									},
/// 									"storage": map[string]interface{}{
/// 										"volumeSize": "1Gi",
/// 									},
/// 								},
/// 							},
/// 						},
/// 						"engine": map[string]interface{}{
/// 							"extensions": []map[string]interface{}{
/// 								map[string]interface{}{
/// 									"name": "citus",
/// 								},
/// 							},
/// 						},
/// 						"scale": map[string]interface{}{
/// 							"shards": 3,
/// 						},
/// 						"scheduling": map[string]interface{}{
/// 							"default": map[string]interface{}{
/// 								"resources": map[string]interface{}{
/// 									"requests": map[string]interface{}{
/// 										"memory": "256Mi",
/// 									},
/// 								},
/// 							},
/// 						},
/// 						"service": map[string]interface{}{
/// 							"type": "NodePort",
/// 						},
/// 						"storage": map[string]interface{}{
/// 							"data": map[string]interface{}{
/// 								"className": "local-storage",
/// 								"size":      "5Gi",
/// 							},
/// 							"logs": map[string]interface{}{
/// 								"className": "local-storage",
/// 								"size":      "5Gi",
/// 							},
/// 						},
/// 					},
/// 					"status": map[string]interface{}{
/// 						"externalEndpoint": nil,
/// 						"readyPods":        "4/4",
/// 						"state":            "Ready",
/// 					},
/// 				}),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			Sku: &azurearcdata.PostgresInstanceSkuArgs{
/// 				Dev:  pulumi.Bool(true),
/// 				Name: pulumi.String("default"),
/// 				Tier: azurearcdata.PostgresInstanceSkuTierHyperscale,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_azurearcdata_postgresinstance" "postgresInstance" {
///   extended_location = {
///     name = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation"
///     type = "CustomLocation"
///   }
///   location               = "eastus"
///   postgres_instance_name = "testpostgresInstance"
///   properties = {
///     admin = "admin"
///     basic_login_information = {
///       password = "********"
///       username = "username"
///     }
///     data_controller_id = "dataControllerId"
///     k8s_raw = {
///       "apiVersion" = "apiVersion"
///       "kind"       = "postgresql-12"
///       "metadata" = {
///         "creationTimestamp" = "2020-08-25T14:55:10Z"
///         "generation"        = 1
///         "name"              = "pg1"
///         "namespace"         = "test"
///         "resourceVersion"   = "527780"
///         "selfLink"          = "/apis/arcdata.microsoft.com/v1alpha1/namespaces/test/postgresql-12s/pg1"
///         "uid"               = "1111aaaa-ffff-ffff-ffff-99999aaaaaaa"
///       }
///       "spec" = {
///         "backups" = {
///           "deltaMinutes" = 3
///           "fullMinutes"  = 10
///           "tiers" = [{
///             "retention" = {
///               "maximums" = ["6", "512MB"]
///               "minimums" = ["3"]
///             }
///             "storage" = {
///               "volumeSize" = "1Gi"
///             }
///           }]
///         }
///         "engine" = {
///           "extensions" = [{
///             "name" = "citus"
///           }]
///         }
///         "scale" = {
///           "shards" = 3
///         }
///         "scheduling" = {
///           "default" = {
///             "resources" = {
///               "requests" = {
///                 "memory" = "256Mi"
///               }
///             }
///           }
///         }
///         "service" = {
///           "type" = "NodePort"
///         }
///         "storage" = {
///           "data" = {
///             "className" = "local-storage"
///             "size"      = "5Gi"
///           }
///           "logs" = {
///             "className" = "local-storage"
///             "size"      = "5Gi"
///           }
///         }
///       }
///       "status" = {
///         "externalEndpoint" = null
///         "readyPods"        = "4/4"
///         "state"            = "Ready"
///       }
///     }
///   }
///   resource_group_name = "testrg"
///   sku = {
///     dev  = true
///     name = "default"
///     tier = "Hyperscale"
///   }
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.azurearcdata.PostgresInstance;
/// import com.pulumi.azurenative.azurearcdata.PostgresInstanceArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.PostgresInstancePropertiesArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.BasicLoginInformationArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.PostgresInstanceSkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var postgresInstance = new PostgresInstance("postgresInstance", PostgresInstanceArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation")
///                 .type("CustomLocation")
///                 .build())
///             .location("eastus")
///             .postgresInstanceName("testpostgresInstance")
///             .properties(PostgresInstancePropertiesArgs.builder()
///                 .admin("admin")
///                 .basicLoginInformation(BasicLoginInformationArgs.builder()
///                     .password("********")
///                     .username("username")
///                     .build())
///                 .dataControllerId("dataControllerId")
///                 .k8sRaw(Map.ofEntries(
///                     Map.entry("apiVersion", "apiVersion"),
///                     Map.entry("kind", "postgresql-12"),
///                     Map.entry("metadata", Map.ofEntries(
///                         Map.entry("creationTimestamp", "2020-08-25T14:55:10Z"),
///                         Map.entry("generation", 1),
///                         Map.entry("name", "pg1"),
///                         Map.entry("namespace", "test"),
///                         Map.entry("resourceVersion", "527780"),
///                         Map.entry("selfLink", "/apis/arcdata.microsoft.com/v1alpha1/namespaces/test/postgresql-12s/pg1"),
///                         Map.entry("uid", "1111aaaa-ffff-ffff-ffff-99999aaaaaaa")
///                     )),
///                     Map.entry("spec", Map.ofEntries(
///                         Map.entry("backups", Map.ofEntries(
///                             Map.entry("deltaMinutes", 3),
///                             Map.entry("fullMinutes", 10),
///                             Map.entry("tiers", Arrays.asList(Map.ofEntries(
///                                 Map.entry("retention", Map.ofEntries(
///                                     Map.entry("maximums", Arrays.asList(
///                                         "6",
///                                         "512MB")),
///                                     Map.entry("minimums", Arrays.asList("3"))
///                                 )),
///                                 Map.entry("storage", Map.of("volumeSize", "1Gi"))
///                             )))
///                         )),
///                         Map.entry("engine", Map.of("extensions", Arrays.asList(Map.of("name", "citus")))),
///                         Map.entry("scale", Map.of("shards", 3)),
///                         Map.entry("scheduling", Map.of("default", Map.of("resources", Map.of("requests", Map.of("memory", "256Mi"))))),
///                         Map.entry("service", Map.of("type", "NodePort")),
///                         Map.entry("storage", Map.ofEntries(
///                             Map.entry("data", Map.ofEntries(
///                                 Map.entry("className", "local-storage"),
///                                 Map.entry("size", "5Gi")
///                             )),
///                             Map.entry("logs", Map.ofEntries(
///                                 Map.entry("className", "local-storage"),
///                                 Map.entry("size", "5Gi")
///                             ))
///                         ))
///                     )),
///                     Map.entry("status", Map.ofEntries(
///                         Map.entry("externalEndpoint", null),
///                         Map.entry("readyPods", "4/4"),
///                         Map.entry("state", "Ready")
///                     ))
///                 ))
///                 .build())
///             .resourceGroupName("testrg")
///             .sku(PostgresInstanceSkuArgs.builder()
///                 .dev(true)
///                 .name("default")
///                 .tier("Hyperscale")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const postgresInstance = new azure_native.azurearcdata.PostgresInstance("postgresInstance", {
///     extendedLocation: {
///         name: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation",
///         type: azure_native.azurearcdata.ExtendedLocationTypes.CustomLocation,
///     },
///     location: "eastus",
///     postgresInstanceName: "testpostgresInstance",
///     properties: {
///         admin: "admin",
///         basicLoginInformation: {
///             password: "********",
///             username: "username",
///         },
///         dataControllerId: "dataControllerId",
///         k8sRaw: {
///             apiVersion: "apiVersion",
///             kind: "postgresql-12",
///             metadata: {
///                 creationTimestamp: "2020-08-25T14:55:10Z",
///                 generation: 1,
///                 name: "pg1",
///                 namespace: "test",
///                 resourceVersion: "527780",
///                 selfLink: "/apis/arcdata.microsoft.com/v1alpha1/namespaces/test/postgresql-12s/pg1",
///                 uid: "1111aaaa-ffff-ffff-ffff-99999aaaaaaa",
///             },
///             spec: {
///                 backups: {
///                     deltaMinutes: 3,
///                     fullMinutes: 10,
///                     tiers: [{
///                         retention: {
///                             maximums: [
///                                 "6",
///                                 "512MB",
///                             ],
///                             minimums: ["3"],
///                         },
///                         storage: {
///                             volumeSize: "1Gi",
///                         },
///                     }],
///                 },
///                 engine: {
///                     extensions: [{
///                         name: "citus",
///                     }],
///                 },
///                 scale: {
///                     shards: 3,
///                 },
///                 scheduling: {
///                     "default": {
///                         resources: {
///                             requests: {
///                                 memory: "256Mi",
///                             },
///                         },
///                     },
///                 },
///                 service: {
///                     type: "NodePort",
///                 },
///                 storage: {
///                     data: {
///                         className: "local-storage",
///                         size: "5Gi",
///                     },
///                     logs: {
///                         className: "local-storage",
///                         size: "5Gi",
///                     },
///                 },
///             },
///             status: {
///                 externalEndpoint: null,
///                 readyPods: "4/4",
///                 state: "Ready",
///             },
///         },
///     },
///     resourceGroupName: "testrg",
///     sku: {
///         dev: true,
///         name: "default",
///         tier: azure_native.azurearcdata.PostgresInstanceSkuTier.Hyperscale,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// postgres_instance = azure_native.azurearcdata.PostgresInstance("postgresInstance",
///     extended_location={
///         "name": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation",
///         "type": azure_native.azurearcdata.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     location="eastus",
///     postgres_instance_name="testpostgresInstance",
///     properties={
///         "admin": "admin",
///         "basic_login_information": {
///             "password": "********",
///             "username": "username",
///         },
///         "data_controller_id": "dataControllerId",
///         "k8s_raw": {
///             "apiVersion": "apiVersion",
///             "kind": "postgresql-12",
///             "metadata": {
///                 "creationTimestamp": "2020-08-25T14:55:10Z",
///                 "generation": 1,
///                 "name": "pg1",
///                 "namespace": "test",
///                 "resourceVersion": "527780",
///                 "selfLink": "/apis/arcdata.microsoft.com/v1alpha1/namespaces/test/postgresql-12s/pg1",
///                 "uid": "1111aaaa-ffff-ffff-ffff-99999aaaaaaa",
///             },
///             "spec": {
///                 "backups": {
///                     "deltaMinutes": 3,
///                     "fullMinutes": 10,
///                     "tiers": [{
///                         "retention": {
///                             "maximums": [
///                                 "6",
///                                 "512MB",
///                             ],
///                             "minimums": ["3"],
///                         },
///                         "storage": {
///                             "volumeSize": "1Gi",
///                         },
///                     }],
///                 },
///                 "engine": {
///                     "extensions": [{
///                         "name": "citus",
///                     }],
///                 },
///                 "scale": {
///                     "shards": 3,
///                 },
///                 "scheduling": {
///                     "default": {
///                         "resources": {
///                             "requests": {
///                                 "memory": "256Mi",
///                             },
///                         },
///                     },
///                 },
///                 "service": {
///                     "type": "NodePort",
///                 },
///                 "storage": {
///                     "data": {
///                         "className": "local-storage",
///                         "size": "5Gi",
///                     },
///                     "logs": {
///                         "className": "local-storage",
///                         "size": "5Gi",
///                     },
///                 },
///             },
///             "status": {
///                 "externalEndpoint": None,
///                 "readyPods": "4/4",
///                 "state": "Ready",
///             },
///         },
///     },
///     resource_group_name="testrg",
///     sku={
///         "dev": True,
///         "name": "default",
///         "tier": azure_native.azurearcdata.PostgresInstanceSkuTier.HYPERSCALE,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   postgresInstance:
///     type: azure-native:azurearcdata:PostgresInstance
///     properties:
///       extendedLocation:
///         name: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation
///         type: CustomLocation
///       location: eastus
///       postgresInstanceName: testpostgresInstance
///       properties:
///         admin: admin
///         basicLoginInformation:
///           password: '********'
///           username: username
///         dataControllerId: dataControllerId
///         k8sRaw:
///           apiVersion: apiVersion
///           kind: postgresql-12
///           metadata:
///             creationTimestamp: 2020-08-25T14:55:10Z
///             generation: 1
///             name: pg1
///             namespace: test
///             resourceVersion: '527780'
///             selfLink: /apis/arcdata.microsoft.com/v1alpha1/namespaces/test/postgresql-12s/pg1
///             uid: 1111aaaa-ffff-ffff-ffff-99999aaaaaaa
///           spec:
///             backups:
///               deltaMinutes: 3
///               fullMinutes: 10
///               tiers:
///                 - retention:
///                     maximums:
///                       - '6'
///                       - 512MB
///                     minimums:
///                       - '3'
///                   storage:
///                     volumeSize: 1Gi
///             engine:
///               extensions:
///                 - name: citus
///             scale:
///               shards: 3
///             scheduling:
///               default:
///                 resources:
///                   requests:
///                     memory: 256Mi
///             service:
///               type: NodePort
///             storage:
///               data:
///                 className: local-storage
///                 size: 5Gi
///               logs:
///                 className: local-storage
///                 size: 5Gi
///           status:
///             externalEndpoint: null
///             readyPods: 4/4
///             state: Ready
///       resourceGroupName: testrg
///       sku:
///         dev: true
///         name: default
///         tier: Hyperscale
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:azurearcdata:PostgresInstance testpostgresInstance /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureArcData/postgresInstances/{postgresInstanceName}
/// ```
class PostgresInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// null
  late final pulumi.Output<PostgresInstancePropertiesResponse> properties;
  /// Resource sku.
  late final pulumi.Output<PostgresInstanceSkuResponse?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PostgresInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PostgresInstance]. {@macro pulumi_azurearcdata_postgres_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PostgresInstance(
    String name, {
    PostgresInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurearcdata:PostgresInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PostgresInstancePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PostgresInstancePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<PostgresInstanceSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PostgresInstanceSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
