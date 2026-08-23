import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_run_command_args.dart';
import 'machine_run_command_instance_view_response.dart';
import 'machine_run_command_script_source_response.dart';
import 'run_command_managed_identity_response.dart';
import 'system_data_response.dart';

/// Describes a Run Command
///
/// Uses Azure REST API version 2024-07-31-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-03-preview.
///
/// Other available API versions: 2023-10-03-preview, 2024-03-31-preview, 2024-05-20-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview, 2026-02-12-preview, 2026-06-04-preview, 2026-06-16-preview, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a Run Command
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var machineRunCommand = new AzureNative.HybridCompute.MachineRunCommand("machineRunCommand", new()
///     {
///         AsyncExecution = false,
///         ErrorBlobUri = "https://mystorageaccount.blob.core.windows.net/mycontainer/MyScriptError.txt",
///         Location = "eastus2",
///         MachineName = "myMachine",
///         OutputBlobUri = "https://mystorageaccount.blob.core.windows.net/myscriptoutputcontainer/MyScriptoutput.txt",
///         Parameters = new[]
///         {
///             new AzureNative.HybridCompute.Inputs.RunCommandInputParameterArgs
///             {
///                 Name = "param1",
///                 Value = "value1",
///             },
///             new AzureNative.HybridCompute.Inputs.RunCommandInputParameterArgs
///             {
///                 Name = "param2",
///                 Value = "value2",
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         RunAsPassword = "<runAsPassword>",
///         RunAsUser = "user1",
///         RunCommandName = "myRunCommand",
///         Source = new AzureNative.HybridCompute.Inputs.MachineRunCommandScriptSourceArgs
///         {
///             Script = "Write-Host Hello World!",
///         },
///         TimeoutInSeconds = 3600,
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
/// 	hybridcompute "github.com/pulumi/pulumi-azure-native-sdk/hybridcompute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcompute.NewMachineRunCommand(ctx, "machineRunCommand", &hybridcompute.MachineRunCommandArgs{
/// 			AsyncExecution: pulumi.Bool(false),
/// 			ErrorBlobUri:   pulumi.String("https://mystorageaccount.blob.core.windows.net/mycontainer/MyScriptError.txt"),
/// 			Location:       pulumi.String("eastus2"),
/// 			MachineName:    pulumi.String("myMachine"),
/// 			OutputBlobUri:  pulumi.String("https://mystorageaccount.blob.core.windows.net/myscriptoutputcontainer/MyScriptoutput.txt"),
/// 			Parameters: hybridcompute.RunCommandInputParameterArray{
/// 				&hybridcompute.RunCommandInputParameterArgs{
/// 					Name:  pulumi.String("param1"),
/// 					Value: pulumi.String("value1"),
/// 				},
/// 				&hybridcompute.RunCommandInputParameterArgs{
/// 					Name:  pulumi.String("param2"),
/// 					Value: pulumi.String("value2"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			RunAsPassword:     pulumi.String("<runAsPassword>"),
/// 			RunAsUser:         pulumi.String("user1"),
/// 			RunCommandName:    pulumi.String("myRunCommand"),
/// 			Source: &hybridcompute.MachineRunCommandScriptSourceArgs{
/// 				Script: pulumi.String("Write-Host Hello World!"),
/// 			},
/// 			TimeoutInSeconds: pulumi.Int(3600),
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
/// resource "azure-native_hybridcompute_machineruncommand" "machineRunCommand" {
///   async_execution = false
///   error_blob_uri  = "https://mystorageaccount.blob.core.windows.net/mycontainer/MyScriptError.txt"
///   location        = "eastus2"
///   machine_name    = "myMachine"
///   output_blob_uri = "https://mystorageaccount.blob.core.windows.net/myscriptoutputcontainer/MyScriptoutput.txt"
///   parameters {
///     name  = "param1"
///     value = "value1"
///   }
///   parameters {
///     name  = "param2"
///     value = "value2"
///   }
///   resource_group_name = "myResourceGroup"
///   run_as_password     = "<runAsPassword>"
///   run_as_user         = "user1"
///   run_command_name    = "myRunCommand"
///   source = {
///     script = "Write-Host Hello World!"
///   }
///   timeout_in_seconds = 3600
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
/// import com.pulumi.azurenative.hybridcompute.MachineRunCommand;
/// import com.pulumi.azurenative.hybridcompute.MachineRunCommandArgs;
/// import com.pulumi.azurenative.hybridcompute.inputs.RunCommandInputParameterArgs;
/// import com.pulumi.azurenative.hybridcompute.inputs.MachineRunCommandScriptSourceArgs;
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
///         var machineRunCommand = new MachineRunCommand("machineRunCommand", MachineRunCommandArgs.builder()
///             .asyncExecution(false)
///             .errorBlobUri("https://mystorageaccount.blob.core.windows.net/mycontainer/MyScriptError.txt")
///             .location("eastus2")
///             .machineName("myMachine")
///             .outputBlobUri("https://mystorageaccount.blob.core.windows.net/myscriptoutputcontainer/MyScriptoutput.txt")
///             .parameters(
///                 RunCommandInputParameterArgs.builder()
///                     .name("param1")
///                     .value("value1")
///                     .build(),
///                 RunCommandInputParameterArgs.builder()
///                     .name("param2")
///                     .value("value2")
///                     .build())
///             .resourceGroupName("myResourceGroup")
///             .runAsPassword("<runAsPassword>")
///             .runAsUser("user1")
///             .runCommandName("myRunCommand")
///             .source(MachineRunCommandScriptSourceArgs.builder()
///                 .script("Write-Host Hello World!")
///                 .build())
///             .timeoutInSeconds(3600)
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
/// const machineRunCommand = new azure_native.hybridcompute.MachineRunCommand("machineRunCommand", {
///     asyncExecution: false,
///     errorBlobUri: "https://mystorageaccount.blob.core.windows.net/mycontainer/MyScriptError.txt",
///     location: "eastus2",
///     machineName: "myMachine",
///     outputBlobUri: "https://mystorageaccount.blob.core.windows.net/myscriptoutputcontainer/MyScriptoutput.txt",
///     parameters: [
///         {
///             name: "param1",
///             value: "value1",
///         },
///         {
///             name: "param2",
///             value: "value2",
///         },
///     ],
///     resourceGroupName: "myResourceGroup",
///     runAsPassword: "<runAsPassword>",
///     runAsUser: "user1",
///     runCommandName: "myRunCommand",
///     source: {
///         script: "Write-Host Hello World!",
///     },
///     timeoutInSeconds: 3600,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// machine_run_command = azure_native.hybridcompute.MachineRunCommand("machineRunCommand",
///     async_execution=False,
///     error_blob_uri="https://mystorageaccount.blob.core.windows.net/mycontainer/MyScriptError.txt",
///     location="eastus2",
///     machine_name="myMachine",
///     output_blob_uri="https://mystorageaccount.blob.core.windows.net/myscriptoutputcontainer/MyScriptoutput.txt",
///     parameters=[
///         {
///             "name": "param1",
///             "value": "value1",
///         },
///         {
///             "name": "param2",
///             "value": "value2",
///         },
///     ],
///     resource_group_name="myResourceGroup",
///     run_as_password="<runAsPassword>",
///     run_as_user="user1",
///     run_command_name="myRunCommand",
///     source={
///         "script": "Write-Host Hello World!",
///     },
///     timeout_in_seconds=3600)
///
/// ```
///
/// ```yaml
/// resources:
///   machineRunCommand:
///     type: azure-native:hybridcompute:MachineRunCommand
///     properties:
///       asyncExecution: false
///       errorBlobUri: https://mystorageaccount.blob.core.windows.net/mycontainer/MyScriptError.txt
///       location: eastus2
///       machineName: myMachine
///       outputBlobUri: https://mystorageaccount.blob.core.windows.net/myscriptoutputcontainer/MyScriptoutput.txt
///       parameters:
///         - name: param1
///           value: value1
///         - name: param2
///           value: value2
///       resourceGroupName: myResourceGroup
///       runAsPassword: <runAsPassword>
///       runAsUser: user1
///       runCommandName: myRunCommand
///       source:
///         script: Write-Host Hello World!
///       timeoutInSeconds: 3600
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
/// $ pulumi import azure-native:hybridcompute:MachineRunCommand myRunCommand /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridCompute/machines/{machineName}/runCommands/{runCommandName}
/// ```
class MachineRunCommand extends pulumi.CustomResource {
  /// Optional. If set to true, provisioning will complete as soon as script starts and will not wait for script to complete.
  late final pulumi.Output<bool?> asyncExecution;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// User-assigned managed identity that has access to errorBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  late final pulumi.Output<RunCommandManagedIdentityResponse?> errorBlobManagedIdentity;
  /// Specifies the Azure storage blob where script error stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer errorBlobManagedIdentity parameter.
  late final pulumi.Output<String?> errorBlobUri;
  /// The machine run command instance view.
  late final pulumi.Output<MachineRunCommandInstanceViewResponse> instanceView;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// User-assigned managed identity that has access to outputBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  late final pulumi.Output<RunCommandManagedIdentityResponse?> outputBlobManagedIdentity;
  /// Specifies the Azure storage blob where script output stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer outputBlobManagedIdentity parameter.
  late final pulumi.Output<String?> outputBlobUri;
  /// The parameters used by the script.
  late final pulumi.Output<List<Map<String, dynamic>>?> parameters;
  /// The parameters used by the script.
  late final pulumi.Output<List<Map<String, dynamic>>?> protectedParameters;
  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// Specifies the user account password on the machine when executing the run command.
  late final pulumi.Output<String?> runAsPassword;
  /// Specifies the user account on the machine when executing the run command.
  late final pulumi.Output<String?> runAsUser;
  /// The source of the run command script.
  late final pulumi.Output<MachineRunCommandScriptSourceResponse?> source;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The timeout in seconds to execute the run command.
  late final pulumi.Output<int?> timeoutInSeconds;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MachineRunCommand].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MachineRunCommand]. {@macro pulumi_hybridcompute_machine_run_command_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MachineRunCommand(
    String name, {
    MachineRunCommandArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridcompute:MachineRunCommand',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    asyncExecution = registerOutput<bool?>('asyncExecution');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    errorBlobManagedIdentity = registerOutput<RunCommandManagedIdentityResponse?>('errorBlobManagedIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunCommandManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    errorBlobUri = registerOutput<String?>('errorBlobUri');
    instanceView = registerOutput<MachineRunCommandInstanceViewResponse>('instanceView', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MachineRunCommandInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputBlobManagedIdentity = registerOutput<RunCommandManagedIdentityResponse?>('outputBlobManagedIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunCommandManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outputBlobUri = registerOutput<String?>('outputBlobUri');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    protectedParameters = registerOutput<List<Map<String, dynamic>>?>('protectedParameters');
    provisioningState = registerOutput<String>('provisioningState');
    runAsPassword = registerOutput<String?>('runAsPassword');
    runAsUser = registerOutput<String?>('runAsUser');
    source = registerOutput<MachineRunCommandScriptSourceResponse?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MachineRunCommandScriptSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    timeoutInSeconds = registerOutput<int?>('timeoutInSeconds');
    type = registerOutput<String>('type');
  }
}
