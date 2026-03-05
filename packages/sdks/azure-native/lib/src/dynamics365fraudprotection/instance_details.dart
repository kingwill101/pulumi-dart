import 'package:pulumi/pulumi.dart' as pulumi;
import 'dfpinstance_administrators_response.dart';
import 'instance_details_args.dart';
import 'system_data_response.dart';

/// Represents an instance of a DFP instance resource.
///
/// Uses Azure REST API version 2021-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-02-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create instance
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instanceDetails = new AzureNative.Dynamics365Fraudprotection.InstanceDetails("instanceDetails", new()
///     {
///         Administration = new AzureNative.Dynamics365Fraudprotection.Inputs.DFPInstanceAdministratorsArgs
///         {
///             Members = new[]
///             {
///                 "azsdktest@microsoft.com",
///                 "azsdktest2@microsoft.com",
///             },
///         },
///         InstanceName = "azsdktest",
///         Location = "West US",
///         ResourceGroupName = "TestRG",
///         Tags =
///         {
///             { "testKey", "testValue" },
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
/// 	dynamics365fraudprotection "github.com/pulumi/pulumi-azure-native-sdk/dynamics365fraudprotection/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dynamics365fraudprotection.NewInstanceDetails(ctx, "instanceDetails", &dynamics365fraudprotection.InstanceDetailsArgs{
/// 			Administration: &dynamics365fraudprotection.DFPInstanceAdministratorsArgs{
/// 				Members: pulumi.StringArray{
/// 					pulumi.String("azsdktest@microsoft.com"),
/// 					pulumi.String("azsdktest2@microsoft.com"),
/// 				},
/// 			},
/// 			InstanceName:      pulumi.String("azsdktest"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("TestRG"),
/// 			Tags: pulumi.StringMap{
/// 				"testKey": pulumi.String("testValue"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.dynamics365fraudprotection.InstanceDetails;
/// import com.pulumi.azurenative.dynamics365fraudprotection.InstanceDetailsArgs;
/// import com.pulumi.azurenative.dynamics365fraudprotection.inputs.DFPInstanceAdministratorsArgs;
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
///         var instanceDetails = new InstanceDetails("instanceDetails", InstanceDetailsArgs.builder()
///             .administration(DFPInstanceAdministratorsArgs.builder()
///                 .members(
///                     "azsdktest@microsoft.com",
///                     "azsdktest2@microsoft.com")
///                 .build())
///             .instanceName("azsdktest")
///             .location("West US")
///             .resourceGroupName("TestRG")
///             .tags(Map.of("testKey", "testValue"))
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
/// const instanceDetails = new azure_native.dynamics365fraudprotection.InstanceDetails("instanceDetails", {
///     administration: {
///         members: [
///             "azsdktest@microsoft.com",
///             "azsdktest2@microsoft.com",
///         ],
///     },
///     instanceName: "azsdktest",
///     location: "West US",
///     resourceGroupName: "TestRG",
///     tags: {
///         testKey: "testValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// instance_details = azure_native.dynamics365fraudprotection.InstanceDetails("instanceDetails",
///     administration={
///         "members": [
///             "azsdktest@microsoft.com",
///             "azsdktest2@microsoft.com",
///         ],
///     },
///     instance_name="azsdktest",
///     location="West US",
///     resource_group_name="TestRG",
///     tags={
///         "testKey": "testValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   instanceDetails:
///     type: azure-native:dynamics365fraudprotection:InstanceDetails
///     properties:
///       administration:
///         members:
///           - azsdktest@microsoft.com
///           - azsdktest2@microsoft.com
///       instanceName: azsdktest
///       location: West US
///       resourceGroupName: TestRG
///       tags:
///         testKey: testValue
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
/// $ pulumi import azure-native:dynamics365fraudprotection:InstanceDetails azsdktest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Dynamics365FraudProtection/instances/{instanceName}
/// ```
class InstanceDetails extends pulumi.CustomResource {
  /// A collection of DFP instance administrators
  late final pulumi.Output<DFPInstanceAdministratorsResponse?> administration;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Location of the DFP resource.
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The current deployment state of DFP resource. The provisioningState is to indicate states for resource provisioning.
  late final pulumi.Output<String> provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Key-value pairs of additional resource provisioning properties.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [InstanceDetails].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceDetails]. {@macro pulumi_dynamics365fraudprotection_instance_details_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceDetails(
    String name, {
    InstanceDetailsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dynamics365fraudprotection:InstanceDetails',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administration = registerOutput<DFPInstanceAdministratorsResponse?>('administration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DFPInstanceAdministratorsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
