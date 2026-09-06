import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_data_connection_args.dart';

/// Class representing an iot hub data connection.
///
/// Uses Azure REST API version 2024-04-13. In version 2.x of the Azure Native provider, it used API version 2022-12-29.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KustoDataConnectionsCosmosDbCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iotHubDataConnection = new AzureNative.Kusto.IotHubDataConnection("iotHubDataConnection", new()
///     {
///         ClusterName = "kustoCluster",
///         DataConnectionName = "dataConnectionTest",
///         DatabaseName = "KustoDatabase1",
///         ResourceGroupName = "kustorptest",
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
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewIotHubDataConnection(ctx, "iotHubDataConnection", &kusto.IotHubDataConnectionArgs{
/// 			ClusterName:        pulumi.String("kustoCluster"),
/// 			DataConnectionName: pulumi.String("dataConnectionTest"),
/// 			DatabaseName:       pulumi.String("KustoDatabase1"),
/// 			ResourceGroupName:  pulumi.String("kustorptest"),
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
/// resource "azure-native_kusto_iothubdataconnection" "iotHubDataConnection" {
///   cluster_name         = "kustoCluster"
///   data_connection_name = "dataConnectionTest"
///   database_name        = "KustoDatabase1"
///   resource_group_name  = "kustorptest"
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
/// import com.pulumi.azurenative.kusto.IotHubDataConnection;
/// import com.pulumi.azurenative.kusto.IotHubDataConnectionArgs;
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
///         var iotHubDataConnection = new IotHubDataConnection("iotHubDataConnection", IotHubDataConnectionArgs.builder()
///             .clusterName("kustoCluster")
///             .dataConnectionName("dataConnectionTest")
///             .databaseName("KustoDatabase1")
///             .resourceGroupName("kustorptest")
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
/// const iotHubDataConnection = new azure_native.kusto.IotHubDataConnection("iotHubDataConnection", {
///     clusterName: "kustoCluster",
///     dataConnectionName: "dataConnectionTest",
///     databaseName: "KustoDatabase1",
///     resourceGroupName: "kustorptest",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iot_hub_data_connection = azure_native.kusto.IotHubDataConnection("iotHubDataConnection",
///     cluster_name="kustoCluster",
///     data_connection_name="dataConnectionTest",
///     database_name="KustoDatabase1",
///     resource_group_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   iotHubDataConnection:
///     type: azure-native:kusto:IotHubDataConnection
///     properties:
///       clusterName: kustoCluster
///       dataConnectionName: dataConnectionTest
///       databaseName: KustoDatabase1
///       resourceGroupName: kustorptest
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### KustoDataConnectionsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iotHubDataConnection = new AzureNative.Kusto.IotHubDataConnection("iotHubDataConnection", new()
///     {
///         ClusterName = "kustoCluster",
///         DataConnectionName = "dataConnectionTest",
///         DatabaseName = "KustoDatabase8",
///         ResourceGroupName = "kustorptest",
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
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewIotHubDataConnection(ctx, "iotHubDataConnection", &kusto.IotHubDataConnectionArgs{
/// 			ClusterName:        pulumi.String("kustoCluster"),
/// 			DataConnectionName: pulumi.String("dataConnectionTest"),
/// 			DatabaseName:       pulumi.String("KustoDatabase8"),
/// 			ResourceGroupName:  pulumi.String("kustorptest"),
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
/// resource "azure-native_kusto_iothubdataconnection" "iotHubDataConnection" {
///   cluster_name         = "kustoCluster"
///   data_connection_name = "dataConnectionTest"
///   database_name        = "KustoDatabase8"
///   resource_group_name  = "kustorptest"
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
/// import com.pulumi.azurenative.kusto.IotHubDataConnection;
/// import com.pulumi.azurenative.kusto.IotHubDataConnectionArgs;
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
///         var iotHubDataConnection = new IotHubDataConnection("iotHubDataConnection", IotHubDataConnectionArgs.builder()
///             .clusterName("kustoCluster")
///             .dataConnectionName("dataConnectionTest")
///             .databaseName("KustoDatabase8")
///             .resourceGroupName("kustorptest")
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
/// const iotHubDataConnection = new azure_native.kusto.IotHubDataConnection("iotHubDataConnection", {
///     clusterName: "kustoCluster",
///     dataConnectionName: "dataConnectionTest",
///     databaseName: "KustoDatabase8",
///     resourceGroupName: "kustorptest",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iot_hub_data_connection = azure_native.kusto.IotHubDataConnection("iotHubDataConnection",
///     cluster_name="kustoCluster",
///     data_connection_name="dataConnectionTest",
///     database_name="KustoDatabase8",
///     resource_group_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   iotHubDataConnection:
///     type: azure-native:kusto:IotHubDataConnection
///     properties:
///       clusterName: kustoCluster
///       dataConnectionName: dataConnectionTest
///       databaseName: KustoDatabase8
///       resourceGroupName: kustorptest
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### KustoDataConnectionsEventGridCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iotHubDataConnection = new AzureNative.Kusto.IotHubDataConnection("iotHubDataConnection", new()
///     {
///         ClusterName = "kustoCluster",
///         DataConnectionName = "dataConnectionTest",
///         DatabaseName = "KustoDatabase8",
///         ResourceGroupName = "kustorptest",
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
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewIotHubDataConnection(ctx, "iotHubDataConnection", &kusto.IotHubDataConnectionArgs{
/// 			ClusterName:        pulumi.String("kustoCluster"),
/// 			DataConnectionName: pulumi.String("dataConnectionTest"),
/// 			DatabaseName:       pulumi.String("KustoDatabase8"),
/// 			ResourceGroupName:  pulumi.String("kustorptest"),
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
/// resource "azure-native_kusto_iothubdataconnection" "iotHubDataConnection" {
///   cluster_name         = "kustoCluster"
///   data_connection_name = "dataConnectionTest"
///   database_name        = "KustoDatabase8"
///   resource_group_name  = "kustorptest"
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
/// import com.pulumi.azurenative.kusto.IotHubDataConnection;
/// import com.pulumi.azurenative.kusto.IotHubDataConnectionArgs;
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
///         var iotHubDataConnection = new IotHubDataConnection("iotHubDataConnection", IotHubDataConnectionArgs.builder()
///             .clusterName("kustoCluster")
///             .dataConnectionName("dataConnectionTest")
///             .databaseName("KustoDatabase8")
///             .resourceGroupName("kustorptest")
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
/// const iotHubDataConnection = new azure_native.kusto.IotHubDataConnection("iotHubDataConnection", {
///     clusterName: "kustoCluster",
///     dataConnectionName: "dataConnectionTest",
///     databaseName: "KustoDatabase8",
///     resourceGroupName: "kustorptest",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iot_hub_data_connection = azure_native.kusto.IotHubDataConnection("iotHubDataConnection",
///     cluster_name="kustoCluster",
///     data_connection_name="dataConnectionTest",
///     database_name="KustoDatabase8",
///     resource_group_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   iotHubDataConnection:
///     type: azure-native:kusto:IotHubDataConnection
///     properties:
///       clusterName: kustoCluster
///       dataConnectionName: dataConnectionTest
///       databaseName: KustoDatabase8
///       resourceGroupName: kustorptest
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
/// $ pulumi import azure-native:kusto:IotHubDataConnection kustoCluster/KustoDatabase8/dataConnectionTest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/databases/{databaseName}/dataConnections/{dataConnectionName}
/// ```
class IotHubDataConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The iot hub consumer group.
  late final pulumi.Output<String> consumerGroup;
  /// The data format of the message. Optionally the data format can be added to each message.
  late final pulumi.Output<String?> dataFormat;
  /// Indication for database routing information from the data connection, by default only database routing information is allowed
  late final pulumi.Output<String?> databaseRouting;
  /// System properties of the iot hub
  late final pulumi.Output<List<String>?> eventSystemProperties;
  /// The resource ID of the Iot hub to be used to create a data connection.
  late final pulumi.Output<String> iotHubResourceId;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'IotHub'.
  late final pulumi.Output<String> kind;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  late final pulumi.Output<String?> mappingRuleName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// When defined, the data connection retrieves existing Event hub events created since the Retrieval start date. It can only retrieve events retained by the Event hub, based on its retention period.
  late final pulumi.Output<String?> retrievalStartDate;
  /// The name of the share access policy
  late final pulumi.Output<String> sharedAccessPolicyName;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  late final pulumi.Output<String?> tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IotHubDataConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IotHubDataConnection]. {@macro pulumi_kusto_iot_hub_data_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IotHubDataConnection(
    String name, {
    IotHubDataConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kusto:IotHubDataConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    consumerGroup = registerOutput<String>('consumerGroup');
    dataFormat = registerOutput<String?>('dataFormat');
    databaseRouting = registerOutput<String?>('databaseRouting');
    eventSystemProperties = registerOutput<List<String>?>('eventSystemProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    iotHubResourceId = registerOutput<String>('iotHubResourceId');
    kind = registerOutput<String>('kind');
    location = registerOutput<String?>('location');
    mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    retrievalStartDate = registerOutput<String?>('retrievalStartDate');
    sharedAccessPolicyName = registerOutput<String>('sharedAccessPolicyName');
    tableName = registerOutput<String?>('tableName');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [IotHubDataConnection] resource.
  IotHubDataConnection.reference(String urn)
    : super(
        'azure-native:kusto:IotHubDataConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    consumerGroup = registerOutput<String>('consumerGroup');
    dataFormat = registerOutput<String?>('dataFormat');
    databaseRouting = registerOutput<String?>('databaseRouting');
    eventSystemProperties = registerOutput<List<String>?>('eventSystemProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    iotHubResourceId = registerOutput<String>('iotHubResourceId');
    kind = registerOutput<String>('kind');
    location = registerOutput<String?>('location');
    mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    retrievalStartDate = registerOutput<String?>('retrievalStartDate');
    sharedAccessPolicyName = registerOutput<String>('sharedAccessPolicyName');
    tableName = registerOutput<String?>('tableName');
    type = registerOutput<String>('type');
  }
}
