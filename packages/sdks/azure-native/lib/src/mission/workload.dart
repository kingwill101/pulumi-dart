import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_on_behalf_of_configuration_response.dart';
import 'system_data_response.dart';
import 'workload_args.dart';

/// Workload Model Resource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Workload_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workload = new AzureNative.Mission.Workload("workload", new()
///     {
///         Location = "westcentralus",
///         ResourceGroupCollection = new[] {},
///         ResourceGroupName = "rgopenapi",
///         Tags =
///         {
///             { "TestKey", "TestValue" },
///         },
///         VirtualEnclaveName = "TestMyEnclave",
///         WorkloadName = "TestMyWorkload",
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
/// 	mission "github.com/pulumi/pulumi-azure-native-sdk/mission/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mission.NewWorkload(ctx, "workload", &mission.WorkloadArgs{
/// 			Location:                pulumi.String("westcentralus"),
/// 			ResourceGroupCollection: pulumi.StringArray{},
/// 			ResourceGroupName:       pulumi.String("rgopenapi"),
/// 			Tags: pulumi.StringMap{
/// 				"TestKey": pulumi.String("TestValue"),
/// 			},
/// 			VirtualEnclaveName: pulumi.String("TestMyEnclave"),
/// 			WorkloadName:       pulumi.String("TestMyWorkload"),
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
/// import com.pulumi.azurenative.mission.Workload;
/// import com.pulumi.azurenative.mission.WorkloadArgs;
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
///         var workload = new Workload("workload", WorkloadArgs.builder()
///             .location("westcentralus")
///             .resourceGroupCollection()
///             .resourceGroupName("rgopenapi")
///             .tags(Map.of("TestKey", "TestValue"))
///             .virtualEnclaveName("TestMyEnclave")
///             .workloadName("TestMyWorkload")
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
/// const workload = new azure_native.mission.Workload("workload", {
///     location: "westcentralus",
///     resourceGroupCollection: [],
///     resourceGroupName: "rgopenapi",
///     tags: {
///         TestKey: "TestValue",
///     },
///     virtualEnclaveName: "TestMyEnclave",
///     workloadName: "TestMyWorkload",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload = azure_native.mission.Workload("workload",
///     location="westcentralus",
///     resource_group_collection=[],
///     resource_group_name="rgopenapi",
///     tags={
///         "TestKey": "TestValue",
///     },
///     virtual_enclave_name="TestMyEnclave",
///     workload_name="TestMyWorkload")
///
/// ```
///
/// ```yaml
/// resources:
///   workload:
///     type: azure-native:mission:Workload
///     properties:
///       location: westcentralus
///       resourceGroupCollection: []
///       resourceGroupName: rgopenapi
///       tags:
///         TestKey: TestValue
///       virtualEnclaveName: TestMyEnclave
///       workloadName: TestMyWorkload
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
/// $ pulumi import azure-native:mission:Workload kxzylwqnmxtivpmupnlho /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Mission/virtualEnclaves/{virtualEnclaveName}/workloads/{workloadName}
/// ```
class Workload extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Managed On Behalf Of Configuration.
  late final pulumi.Output<ManagedOnBehalfOfConfigurationResponse>
  managedOnBehalfOfConfiguration;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Provisioning State.
  late final pulumi.Output<String> provisioningState;

  /// List of resource group ids.
  late final pulumi.Output<List<String>?> resourceGroupCollection;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Workload].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workload]. {@macro pulumi_mission_workload_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workload(
    String name, {
    WorkloadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:mission:Workload',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    managedOnBehalfOfConfiguration =
        registerOutput<ManagedOnBehalfOfConfigurationResponse>(
          'managedOnBehalfOfConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagedOnBehalfOfConfigurationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGroupCollection = registerOutput<List<String>?>(
      'resourceGroupCollection',
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
