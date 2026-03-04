import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';
import 'system_data_response.dart';

/// An deployment resource belonging to a device group resource.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Deployments_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deployment = new AzureNative.AzureSphere.Deployment("deployment", new()
///     {
///         CatalogName = "MyCatalog1",
///         DeploymentName = "MyDeployment1",
///         DeviceGroupName = "myDeviceGroup1",
///         ProductName = "MyProduct1",
///         ResourceGroupName = "MyResourceGroup1",
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
/// 	azuresphere "github.com/pulumi/pulumi-azure-native-sdk/azuresphere/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuresphere.NewDeployment(ctx, "deployment", &azuresphere.DeploymentArgs{
/// 			CatalogName:       pulumi.String("MyCatalog1"),
/// 			DeploymentName:    pulumi.String("MyDeployment1"),
/// 			DeviceGroupName:   pulumi.String("myDeviceGroup1"),
/// 			ProductName:       pulumi.String("MyProduct1"),
/// 			ResourceGroupName: pulumi.String("MyResourceGroup1"),
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
/// import com.pulumi.azurenative.azuresphere.Deployment;
/// import com.pulumi.azurenative.azuresphere.DeploymentArgs;
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
///         var deployment = new Deployment("deployment", DeploymentArgs.builder()
///             .catalogName("MyCatalog1")
///             .deploymentName("MyDeployment1")
///             .deviceGroupName("myDeviceGroup1")
///             .productName("MyProduct1")
///             .resourceGroupName("MyResourceGroup1")
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
/// const deployment = new azure_native.azuresphere.Deployment("deployment", {
///     catalogName: "MyCatalog1",
///     deploymentName: "MyDeployment1",
///     deviceGroupName: "myDeviceGroup1",
///     productName: "MyProduct1",
///     resourceGroupName: "MyResourceGroup1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deployment = azure_native.azuresphere.Deployment("deployment",
///     catalog_name="MyCatalog1",
///     deployment_name="MyDeployment1",
///     device_group_name="myDeviceGroup1",
///     product_name="MyProduct1",
///     resource_group_name="MyResourceGroup1")
///
/// ```
///
/// ```yaml
/// resources:
///   deployment:
///     type: azure-native:azuresphere:Deployment
///     properties:
///       catalogName: MyCatalog1
///       deploymentName: MyDeployment1
///       deviceGroupName: myDeviceGroup1
///       productName: MyProduct1
///       resourceGroupName: MyResourceGroup1
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
/// $ pulumi import azure-native:azuresphere:Deployment MyDeployment1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureSphere/catalogs/{catalogName}/products/{productName}/deviceGroups/{deviceGroupName}/deployments/{deploymentName}
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Images deployed
  late final pulumi.Output<List<Map<String, dynamic>>?> deployedImages;

  /// Deployment date UTC
  late final pulumi.Output<String> deploymentDateUtc;

  /// Deployment ID
  late final pulumi.Output<String?> deploymentId;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_azuresphere_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azuresphere:Deployment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deployedImages = registerOutput<List<Map<String, dynamic>>?>(
      'deployedImages',
    );
    deploymentDateUtc = registerOutput<String>('deploymentDateUtc');
    deploymentId = registerOutput<String?>('deploymentId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
