import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_azure_databricks_args.dart';
import 'linked_service_azure_databricks_instance_pool.dart';
import 'linked_service_azure_databricks_key_vault_password.dart';
import 'linked_service_azure_databricks_new_cluster_config.dart';

/// Manages a Linked Service (connection) between Azure Databricks and Azure Data Factory.
///
/// ## Example Usage
///
/// ### With Managed Identity & New Cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "East US",
/// });
/// //Create a Linked Service using managed identity and new cluster config
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "TestDtaFactory92783401247",
///     location: example.location,
///     resourceGroupName: example.name,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// //Create a databricks instance
/// const exampleWorkspace = new azure.databricks.Workspace("example", {
///     name: "databricks-test",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "standard",
/// });
/// const msiLinked = new azure.datafactory.LinkedServiceAzureDatabricks("msi_linked", {
///     name: "ADBLinkedServiceViaMSI",
///     dataFactoryId: exampleFactory.id,
///     description: "ADB Linked Service via MSI",
///     adbDomain: pulumi.interpolate`https://${exampleWorkspace.workspaceUrl}`,
///     msiWorkspaceId: exampleWorkspace.id,
///     newClusterConfig: {
///         nodeType: "Standard_NC12",
///         clusterVersion: "5.5.x-gpu-scala2.11",
///         minNumberOfWorkers: 1,
///         maxNumberOfWorkers: 5,
///         driverNodeType: "Standard_NC12",
///         logDestination: "dbfs:/logs",
///         customTags: {
///             custom_tag1: "sct_value_1",
///             custom_tag2: "sct_value_2",
///         },
///         sparkConfig: {
///             config1: "value1",
///             config2: "value2",
///         },
///         sparkEnvironmentVariables: {
///             envVar1: "value1",
///             envVar2: "value2",
///         },
///         initScripts: [
///             "init.sh",
///             "init2.sh",
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="East US")
/// #Create a Linked Service using managed identity and new cluster config
/// example_factory = azure.datafactory.Factory("example",
///     name="TestDtaFactory92783401247",
///     location=example.location,
///     resource_group_name=example.name,
///     identity={
///         "type": "SystemAssigned",
///     })
/// #Create a databricks instance
/// example_workspace = azure.databricks.Workspace("example",
///     name="databricks-test",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="standard")
/// msi_linked = azure.datafactory.LinkedServiceAzureDatabricks("msi_linked",
///     name="ADBLinkedServiceViaMSI",
///     data_factory_id=example_factory.id,
///     description="ADB Linked Service via MSI",
///     adb_domain=example_workspace.workspace_url.apply(lambda workspace_url: f"https://{workspace_url}"),
///     msi_workspace_id=example_workspace.id,
///     new_cluster_config={
///         "node_type": "Standard_NC12",
///         "cluster_version": "5.5.x-gpu-scala2.11",
///         "min_number_of_workers": 1,
///         "max_number_of_workers": 5,
///         "driver_node_type": "Standard_NC12",
///         "log_destination": "dbfs:/logs",
///         "custom_tags": {
///             "custom_tag1": "sct_value_1",
///             "custom_tag2": "sct_value_2",
///         },
///         "spark_config": {
///             "config1": "value1",
///             "config2": "value2",
///         },
///         "spark_environment_variables": {
///             "envVar1": "value1",
///             "envVar2": "value2",
///         },
///         "init_scripts": [
///             "init.sh",
///             "init2.sh",
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example",
///         Location = "East US",
///     });
///
///     //Create a Linked Service using managed identity and new cluster config
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "TestDtaFactory92783401247",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Identity = new Azure.DataFactory.Inputs.FactoryIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     //Create a databricks instance
///     var exampleWorkspace = new Azure.DataBricks.Workspace("example", new()
///     {
///         Name = "databricks-test",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "standard",
///     });
///
///     var msiLinked = new Azure.DataFactory.LinkedServiceAzureDatabricks("msi_linked", new()
///     {
///         Name = "ADBLinkedServiceViaMSI",
///         DataFactoryId = exampleFactory.Id,
///         Description = "ADB Linked Service via MSI",
///         AdbDomain = exampleWorkspace.WorkspaceUrl.Apply(workspaceUrl => $"https://{workspaceUrl}"),
///         MsiWorkspaceId = exampleWorkspace.Id,
///         NewClusterConfig = new Azure.DataFactory.Inputs.LinkedServiceAzureDatabricksNewClusterConfigArgs
///         {
///             NodeType = "Standard_NC12",
///             ClusterVersion = "5.5.x-gpu-scala2.11",
///             MinNumberOfWorkers = 1,
///             MaxNumberOfWorkers = 5,
///             DriverNodeType = "Standard_NC12",
///             LogDestination = "dbfs:/logs",
///             CustomTags =
///             {
///                 { "custom_tag1", "sct_value_1" },
///                 { "custom_tag2", "sct_value_2" },
///             },
///             SparkConfig =
///             {
///                 { "config1", "value1" },
///                 { "config2", "value2" },
///             },
///             SparkEnvironmentVariables =
///             {
///                 { "envVar1", "value1" },
///                 { "envVar2", "value2" },
///             },
///             InitScripts = new[]
///             {
///                 "init.sh",
///                 "init2.sh",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/databricks"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a Linked Service using managed identity and new cluster config
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("TestDtaFactory92783401247"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Identity: &datafactory.FactoryIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a databricks instance
/// 		exampleWorkspace, err := databricks.NewWorkspace(ctx, "example", &databricks.WorkspaceArgs{
/// 			Name:              pulumi.String("databricks-test"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewLinkedServiceAzureDatabricks(ctx, "msi_linked", &datafactory.LinkedServiceAzureDatabricksArgs{
/// 			Name:          pulumi.String("ADBLinkedServiceViaMSI"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			Description:   pulumi.String("ADB Linked Service via MSI"),
/// 			AdbDomain: exampleWorkspace.WorkspaceUrl.ApplyT(func(workspaceUrl string) (string, error) {
/// 				return fmt.Sprintf("https://%v", workspaceUrl), nil
/// 			}).(pulumi.StringOutput),
/// 			MsiWorkspaceId: exampleWorkspace.ID(),
/// 			NewClusterConfig: &datafactory.LinkedServiceAzureDatabricksNewClusterConfigArgs{
/// 				NodeType:           pulumi.String("Standard_NC12"),
/// 				ClusterVersion:     pulumi.String("5.5.x-gpu-scala2.11"),
/// 				MinNumberOfWorkers: pulumi.Int(1),
/// 				MaxNumberOfWorkers: pulumi.Int(5),
/// 				DriverNodeType:     pulumi.String("Standard_NC12"),
/// 				LogDestination:     pulumi.String("dbfs:/logs"),
/// 				CustomTags: pulumi.StringMap{
/// 					"custom_tag1": pulumi.String("sct_value_1"),
/// 					"custom_tag2": pulumi.String("sct_value_2"),
/// 				},
/// 				SparkConfig: pulumi.StringMap{
/// 					"config1": pulumi.String("value1"),
/// 					"config2": pulumi.String("value2"),
/// 				},
/// 				SparkEnvironmentVariables: pulumi.StringMap{
/// 					"envVar1": pulumi.String("value1"),
/// 					"envVar2": pulumi.String("value2"),
/// 				},
/// 				InitScripts: pulumi.StringArray{
/// 					pulumi.String("init.sh"),
/// 					pulumi.String("init2.sh"),
/// 				},
/// 			},
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.inputs.FactoryIdentityArgs;
/// import com.pulumi.azure.databricks.Workspace;
/// import com.pulumi.azure.databricks.WorkspaceArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureDatabricks;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureDatabricksArgs;
/// import com.pulumi.azure.datafactory.inputs.LinkedServiceAzureDatabricksNewClusterConfigArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example")
///             .location("East US")
///             .build());
///
///         //Create a Linked Service using managed identity and new cluster config
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("TestDtaFactory92783401247")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .identity(FactoryIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         //Create a databricks instance
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("databricks-test")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("standard")
///             .build());
///
///         var msiLinked = new LinkedServiceAzureDatabricks("msiLinked", LinkedServiceAzureDatabricksArgs.builder()
///             .name("ADBLinkedServiceViaMSI")
///             .dataFactoryId(exampleFactory.id())
///             .description("ADB Linked Service via MSI")
///             .adbDomain(exampleWorkspace.workspaceUrl().applyValue(_workspaceUrl -> String.format("https://%s", _workspaceUrl)))
///             .msiWorkspaceId(exampleWorkspace.id())
///             .newClusterConfig(LinkedServiceAzureDatabricksNewClusterConfigArgs.builder()
///                 .nodeType("Standard_NC12")
///                 .clusterVersion("5.5.x-gpu-scala2.11")
///                 .minNumberOfWorkers(1)
///                 .maxNumberOfWorkers(5)
///                 .driverNodeType("Standard_NC12")
///                 .logDestination("dbfs:/logs")
///                 .customTags(Map.ofEntries(
///                     Map.entry("custom_tag1", "sct_value_1"),
///                     Map.entry("custom_tag2", "sct_value_2")
///                 ))
///                 .sparkConfig(Map.ofEntries(
///                     Map.entry("config1", "value1"),
///                     Map.entry("config2", "value2")
///                 ))
///                 .sparkEnvironmentVariables(Map.ofEntries(
///                     Map.entry("envVar1", "value1"),
///                     Map.entry("envVar2", "value2")
///                 ))
///                 .initScripts(
///                     "init.sh",
///                     "init2.sh")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example
///       location: East US
///   #Create a Linked Service using managed identity and new cluster config
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: TestDtaFactory92783401247
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       identity:
///         type: SystemAssigned
///   #Create a databricks instance
///   exampleWorkspace:
///     type: azure:databricks:Workspace
///     name: example
///     properties:
///       name: databricks-test
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: standard
///   msiLinked:
///     type: azure:datafactory:LinkedServiceAzureDatabricks
///     name: msi_linked
///     properties:
///       name: ADBLinkedServiceViaMSI
///       dataFactoryId: ${exampleFactory.id}
///       description: ADB Linked Service via MSI
///       adbDomain: https://${exampleWorkspace.workspaceUrl}
///       msiWorkspaceId: ${exampleWorkspace.id}
///       newClusterConfig:
///         nodeType: Standard_NC12
///         clusterVersion: 5.5.x-gpu-scala2.11
///         minNumberOfWorkers: 1
///         maxNumberOfWorkers: 5
///         driverNodeType: Standard_NC12
///         logDestination: dbfs:/logs
///         customTags:
///           custom_tag1: sct_value_1
///           custom_tag2: sct_value_2
///         sparkConfig:
///           config1: value1
///           config2: value2
///         sparkEnvironmentVariables:
///           envVar1: value1
///           envVar2: value2
///         initScripts:
///           - init.sh
///           - init2.sh
/// ```
///
///
///
/// ### With Access Token & Existing Cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "East US",
/// });
/// //Link to an existing cluster via access token
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "TestDtaFactory92783401247",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// //Create a databricks instance
/// const exampleWorkspace = new azure.databricks.Workspace("example", {
///     name: "databricks-test",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "standard",
/// });
/// const atLinked = new azure.datafactory.LinkedServiceAzureDatabricks("at_linked", {
///     name: "ADBLinkedServiceViaAccessToken",
///     dataFactoryId: exampleFactory.id,
///     description: "ADB Linked Service via Access Token",
///     existingClusterId: "0308-201146-sly615",
///     accessToken: "SomeDatabricksAccessToken",
///     adbDomain: pulumi.interpolate`https://${exampleWorkspace.workspaceUrl}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="East US")
/// #Link to an existing cluster via access token
/// example_factory = azure.datafactory.Factory("example",
///     name="TestDtaFactory92783401247",
///     location=example.location,
///     resource_group_name=example.name)
/// #Create a databricks instance
/// example_workspace = azure.databricks.Workspace("example",
///     name="databricks-test",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="standard")
/// at_linked = azure.datafactory.LinkedServiceAzureDatabricks("at_linked",
///     name="ADBLinkedServiceViaAccessToken",
///     data_factory_id=example_factory.id,
///     description="ADB Linked Service via Access Token",
///     existing_cluster_id="0308-201146-sly615",
///     access_token="SomeDatabricksAccessToken",
///     adb_domain=example_workspace.workspace_url.apply(lambda workspace_url: f"https://{workspace_url}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example",
///         Location = "East US",
///     });
///
///     //Link to an existing cluster via access token
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "TestDtaFactory92783401247",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     //Create a databricks instance
///     var exampleWorkspace = new Azure.DataBricks.Workspace("example", new()
///     {
///         Name = "databricks-test",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "standard",
///     });
///
///     var atLinked = new Azure.DataFactory.LinkedServiceAzureDatabricks("at_linked", new()
///     {
///         Name = "ADBLinkedServiceViaAccessToken",
///         DataFactoryId = exampleFactory.Id,
///         Description = "ADB Linked Service via Access Token",
///         ExistingClusterId = "0308-201146-sly615",
///         AccessToken = "SomeDatabricksAccessToken",
///         AdbDomain = exampleWorkspace.WorkspaceUrl.Apply(workspaceUrl => $"https://{workspaceUrl}"),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/databricks"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Link to an existing cluster via access token
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("TestDtaFactory92783401247"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a databricks instance
/// 		exampleWorkspace, err := databricks.NewWorkspace(ctx, "example", &databricks.WorkspaceArgs{
/// 			Name:              pulumi.String("databricks-test"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewLinkedServiceAzureDatabricks(ctx, "at_linked", &datafactory.LinkedServiceAzureDatabricksArgs{
/// 			Name:              pulumi.String("ADBLinkedServiceViaAccessToken"),
/// 			DataFactoryId:     exampleFactory.ID(),
/// 			Description:       pulumi.String("ADB Linked Service via Access Token"),
/// 			ExistingClusterId: pulumi.String("0308-201146-sly615"),
/// 			AccessToken:       pulumi.String("SomeDatabricksAccessToken"),
/// 			AdbDomain: exampleWorkspace.WorkspaceUrl.ApplyT(func(workspaceUrl string) (string, error) {
/// 				return fmt.Sprintf("https://%v", workspaceUrl), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.databricks.Workspace;
/// import com.pulumi.azure.databricks.WorkspaceArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureDatabricks;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureDatabricksArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example")
///             .location("East US")
///             .build());
///
///         //Link to an existing cluster via access token
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("TestDtaFactory92783401247")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         //Create a databricks instance
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("databricks-test")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("standard")
///             .build());
///
///         var atLinked = new LinkedServiceAzureDatabricks("atLinked", LinkedServiceAzureDatabricksArgs.builder()
///             .name("ADBLinkedServiceViaAccessToken")
///             .dataFactoryId(exampleFactory.id())
///             .description("ADB Linked Service via Access Token")
///             .existingClusterId("0308-201146-sly615")
///             .accessToken("SomeDatabricksAccessToken")
///             .adbDomain(exampleWorkspace.workspaceUrl().applyValue(_workspaceUrl -> String.format("https://%s", _workspaceUrl)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example
///       location: East US
///   #Link to an existing cluster via access token
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: TestDtaFactory92783401247
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   #Create a databricks instance
///   exampleWorkspace:
///     type: azure:databricks:Workspace
///     name: example
///     properties:
///       name: databricks-test
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: standard
///   atLinked:
///     type: azure:datafactory:LinkedServiceAzureDatabricks
///     name: at_linked
///     properties:
///       name: ADBLinkedServiceViaAccessToken
///       dataFactoryId: ${exampleFactory.id}
///       description: ADB Linked Service via Access Token
///       existingClusterId: 0308-201146-sly615
///       accessToken: SomeDatabricksAccessToken
///       adbDomain: https://${exampleWorkspace.workspaceUrl}
/// ```
///
///
/// ## Import
///
/// Data Factory Linked Services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceAzureDatabricks:LinkedServiceAzureDatabricks example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedServiceAzureDatabricks extends pulumi.CustomResource {
  /// Authenticate to ADB via an access token.
  late final pulumi.Output<String?> accessToken;
  /// The domain URL of the databricks instance.
  late final pulumi.Output<String> adbDomain;
  /// A map of additional properties to associate with the Data Factory Linked Service.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  late final pulumi.Output<List<String>?> annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  late final pulumi.Output<String?> description;
  /// The cluster_id of an existing cluster within the linked ADB instance.
  late final pulumi.Output<String?> existingClusterId;
  /// Leverages an instance pool within the linked ADB instance as one `instance_pool` block defined below.
  late final pulumi.Output<LinkedServiceAzureDatabricksInstancePool?> instancePool;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  late final pulumi.Output<String?> integrationRuntimeName;
  /// Authenticate to ADB via Azure Key Vault Linked Service as defined in the `key_vault_password` block below.
  late final pulumi.Output<LinkedServiceAzureDatabricksKeyVaultPassword?> keyVaultPassword;
  late final pulumi.Output<String> msiWorkSpaceResourceId;
  /// Authenticate to ADB via managed service identity.
  late final pulumi.Output<String> msiWorkspaceId;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// Creates new clusters within the linked ADB instance as defined in the `new_cluster_config` block below.
  late final pulumi.Output<LinkedServiceAzureDatabricksNewClusterConfig?> newClusterConfig;
  /// A map of parameters to associate with the Data Factory Linked Service.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// Creates a new [LinkedServiceAzureDatabricks].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceAzureDatabricks]. {@macro pulumi_datafactory_linked_service_azure_databricks_linked_service_azure_databricks_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceAzureDatabricks(
    String name, {
    LinkedServiceAzureDatabricksArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceAzureDatabricks:LinkedServiceAzureDatabricks',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessToken = registerOutput<String?>('accessToken');
    this.adbDomain = registerOutput<String>('adbDomain');
    this.additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.existingClusterId = registerOutput<String?>('existingClusterId');
    this.instancePool = registerOutput<LinkedServiceAzureDatabricksInstancePool?>('instancePool');
    this.integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.keyVaultPassword = registerOutput<LinkedServiceAzureDatabricksKeyVaultPassword?>('keyVaultPassword');
    this.msiWorkSpaceResourceId = registerOutput<String>('msiWorkSpaceResourceId');
    this.msiWorkspaceId = registerOutput<String>('msiWorkspaceId');
    this.name = registerOutput<String>('name');
    this.newClusterConfig = registerOutput<LinkedServiceAzureDatabricksNewClusterConfig?>('newClusterConfig');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
  }
}
