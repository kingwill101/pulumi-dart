import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_connector_args.dart';
import 'access_connector_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Information about Azure Databricks Access Connector.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2024-09-01-preview, 2025-03-01-preview, 2025-08-01-preview, 2025-10-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databricks [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create an Azure Databricks Access Connector with SystemAssigned Identity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var accessConnector = new AzureNative.Databricks.AccessConnector("accessConnector", new()
///     {
///         ConnectorName = "myAccessConnector",
///         Location = "westus",
///         ResourceGroupName = "rg",
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
/// 	databricks "github.com/pulumi/pulumi-azure-native-sdk/databricks/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databricks.NewAccessConnector(ctx, "accessConnector", &databricks.AccessConnectorArgs{
/// 			ConnectorName:     pulumi.String("myAccessConnector"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.databricks.AccessConnector;
/// import com.pulumi.azurenative.databricks.AccessConnectorArgs;
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
///         var accessConnector = new AccessConnector("accessConnector", AccessConnectorArgs.builder()
///             .connectorName("myAccessConnector")
///             .location("westus")
///             .resourceGroupName("rg")
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
/// const accessConnector = new azure_native.databricks.AccessConnector("accessConnector", {
///     connectorName: "myAccessConnector",
///     location: "westus",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// access_connector = azure_native.databricks.AccessConnector("accessConnector",
///     connector_name="myAccessConnector",
///     location="westus",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   accessConnector:
///     type: azure-native:databricks:AccessConnector
///     properties:
///       connectorName: myAccessConnector
///       location: westus
///       resourceGroupName: rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an Azure Databricks Access Connector with UserAssigned Identity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var accessConnector = new AzureNative.Databricks.AccessConnector("accessConnector", new()
///     {
///         ConnectorName = "myAccessConnector",
///         Location = "westus",
///         ResourceGroupName = "rg",
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
/// 	databricks "github.com/pulumi/pulumi-azure-native-sdk/databricks/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databricks.NewAccessConnector(ctx, "accessConnector", &databricks.AccessConnectorArgs{
/// 			ConnectorName:     pulumi.String("myAccessConnector"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.databricks.AccessConnector;
/// import com.pulumi.azurenative.databricks.AccessConnectorArgs;
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
///         var accessConnector = new AccessConnector("accessConnector", AccessConnectorArgs.builder()
///             .connectorName("myAccessConnector")
///             .location("westus")
///             .resourceGroupName("rg")
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
/// const accessConnector = new azure_native.databricks.AccessConnector("accessConnector", {
///     connectorName: "myAccessConnector",
///     location: "westus",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// access_connector = azure_native.databricks.AccessConnector("accessConnector",
///     connector_name="myAccessConnector",
///     location="westus",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   accessConnector:
///     type: azure-native:databricks:AccessConnector
///     properties:
///       connectorName: myAccessConnector
///       location: westus
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:databricks:AccessConnector myAccessConnector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Databricks/accessConnectors/{connectorName}
/// ```
class AccessConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Managed service identity (system assigned and/or user assigned identities)
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Databricks Access Connector properties
  late final pulumi.Output<AccessConnectorPropertiesResponse> properties;

  /// The system metadata relating to this resource
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// Creates a new [AccessConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessConnector]. {@macro pulumi_databricks_access_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessConnector(
    String name, {
    AccessConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:databricks:AccessConnector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AccessConnectorPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
