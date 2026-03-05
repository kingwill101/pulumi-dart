import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_args.dart';
import 'capability_properties_response.dart';
import 'system_data_response.dart';

/// Model that represents a Capability resource.
///
/// Uses Azure REST API version 2024-03-22-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-15-preview.
///
/// Other available API versions: 2023-04-15-preview, 2023-09-01-preview, 2023-10-27-preview, 2023-11-01, 2024-01-01, 2024-11-01-preview, 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native chaos [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create/update a Capability that extends a virtual machine Target resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var capability = new AzureNative.Chaos.Capability("capability", new()
///     {
///         CapabilityName = "Shutdown-1.0",
///         ParentProviderNamespace = "Microsoft.Compute",
///         ParentResourceName = "exampleVM",
///         ParentResourceType = "virtualMachines",
///         ResourceGroupName = "exampleRG",
///         TargetName = "Microsoft-VirtualMachine",
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
/// 	chaos "github.com/pulumi/pulumi-azure-native-sdk/chaos/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chaos.NewCapability(ctx, "capability", &chaos.CapabilityArgs{
/// 			CapabilityName:          pulumi.String("Shutdown-1.0"),
/// 			ParentProviderNamespace: pulumi.String("Microsoft.Compute"),
/// 			ParentResourceName:      pulumi.String("exampleVM"),
/// 			ParentResourceType:      pulumi.String("virtualMachines"),
/// 			ResourceGroupName:       pulumi.String("exampleRG"),
/// 			TargetName:              pulumi.String("Microsoft-VirtualMachine"),
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
/// import com.pulumi.azurenative.chaos.Capability;
/// import com.pulumi.azurenative.chaos.CapabilityArgs;
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
///         var capability = new Capability("capability", CapabilityArgs.builder()
///             .capabilityName("Shutdown-1.0")
///             .parentProviderNamespace("Microsoft.Compute")
///             .parentResourceName("exampleVM")
///             .parentResourceType("virtualMachines")
///             .resourceGroupName("exampleRG")
///             .targetName("Microsoft-VirtualMachine")
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
/// const capability = new azure_native.chaos.Capability("capability", {
///     capabilityName: "Shutdown-1.0",
///     parentProviderNamespace: "Microsoft.Compute",
///     parentResourceName: "exampleVM",
///     parentResourceType: "virtualMachines",
///     resourceGroupName: "exampleRG",
///     targetName: "Microsoft-VirtualMachine",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// capability = azure_native.chaos.Capability("capability",
///     capability_name="Shutdown-1.0",
///     parent_provider_namespace="Microsoft.Compute",
///     parent_resource_name="exampleVM",
///     parent_resource_type="virtualMachines",
///     resource_group_name="exampleRG",
///     target_name="Microsoft-VirtualMachine")
///
/// ```
///
/// ```yaml
/// resources:
///   capability:
///     type: azure-native:chaos:Capability
///     properties:
///       capabilityName: Shutdown-1.0
///       parentProviderNamespace: Microsoft.Compute
///       parentResourceName: exampleVM
///       parentResourceType: virtualMachines
///       resourceGroupName: exampleRG
///       targetName: Microsoft-VirtualMachine
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
/// $ pulumi import azure-native:chaos:Capability Shutdown-1.0 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{parentProviderNamespace}/{parentResourceType}/{parentResourceName}/providers/Microsoft.Chaos/targets/{targetName}/capabilities/{capabilityName}
/// ```
class Capability extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The properties of a capability resource.
  late final pulumi.Output<CapabilityPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Capability].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Capability]. {@macro pulumi_chaos_capability_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Capability(
    String name, {
    CapabilityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:chaos:Capability',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CapabilityPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CapabilityPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
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
    type = registerOutput<String>('type');
  }
}
