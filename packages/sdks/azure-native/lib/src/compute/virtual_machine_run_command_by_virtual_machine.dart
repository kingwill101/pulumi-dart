import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_command_input_parameter_response.dart';
import 'run_command_managed_identity_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_run_command_by_virtual_machine_args.dart';
import 'virtual_machine_run_command_instance_view_response.dart';
import 'virtual_machine_run_command_script_source_response.dart';

/// Describes a Virtual Machine run command.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a run command.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineRunCommandByVirtualMachine = new AzureNative.Compute.VirtualMachineRunCommandByVirtualMachine("virtualMachineRunCommandByVirtualMachine", new()
///     {
///         AsyncExecution = false,
///         ErrorBlobUri = "https://mystorageaccount.blob.core.windows.net/scriptcontainer/scriptURI",
///         Location = "West US",
///         OutputBlobManagedIdentity = new AzureNative.Compute.Inputs.RunCommandManagedIdentityArgs
///         {
///             ClientId = "22d35efb-0c99-4041-8c5b-6d24db33a69a",
///         },
///         OutputBlobUri = "https://mystorageaccount.blob.core.windows.net/myscriptoutputcontainer/MyScriptoutput.txt",
///         Parameters = new[]
///         {
///             new AzureNative.Compute.Inputs.RunCommandInputParameterArgs
///             {
///                 Name = "param1",
///                 Value = "value1",
///             },
///             new AzureNative.Compute.Inputs.RunCommandInputParameterArgs
///             {
///                 Name = "param2",
///                 Value = "value2",
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         RunAsPassword = "<runAsPassword>",
///         RunAsUser = "user1",
///         RunCommandName = "myRunCommand",
///         Source = new AzureNative.Compute.Inputs.VirtualMachineRunCommandScriptSourceArgs
///         {
///             ScriptUri = "https://mystorageaccount.blob.core.windows.net/scriptcontainer/scriptURI",
///         },
///         TimeoutInSeconds = 3600,
///         TreatFailureAsDeploymentFailure = false,
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachineRunCommandByVirtualMachine(ctx, "virtualMachineRunCommandByVirtualMachine", &compute.VirtualMachineRunCommandByVirtualMachineArgs{
/// 			AsyncExecution: pulumi.Bool(false),
/// 			ErrorBlobUri:   pulumi.String("https://mystorageaccount.blob.core.windows.net/scriptcontainer/scriptURI"),
/// 			Location:       pulumi.String("West US"),
/// 			OutputBlobManagedIdentity: &compute.RunCommandManagedIdentityArgs{
/// 				ClientId: pulumi.String("22d35efb-0c99-4041-8c5b-6d24db33a69a"),
/// 			},
/// 			OutputBlobUri: pulumi.String("https://mystorageaccount.blob.core.windows.net/myscriptoutputcontainer/MyScriptoutput.txt"),
/// 			Parameters: compute.RunCommandInputParameterArray{
/// 				&compute.RunCommandInputParameterArgs{
/// 					Name:  pulumi.String("param1"),
/// 					Value: pulumi.String("value1"),
/// 				},
/// 				&compute.RunCommandInputParameterArgs{
/// 					Name:  pulumi.String("param2"),
/// 					Value: pulumi.String("value2"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			RunAsPassword:     pulumi.String("<runAsPassword>"),
/// 			RunAsUser:         pulumi.String("user1"),
/// 			RunCommandName:    pulumi.String("myRunCommand"),
/// 			Source: &compute.VirtualMachineRunCommandScriptSourceArgs{
/// 				ScriptUri: pulumi.String("https://mystorageaccount.blob.core.windows.net/scriptcontainer/scriptURI"),
/// 			},
/// 			TimeoutInSeconds:                pulumi.Int(3600),
/// 			TreatFailureAsDeploymentFailure: pulumi.Bool(false),
/// 			VmName:                          pulumi.String("myVM"),
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
/// resource "azure-native_compute_virtualmachineruncommandbyvirtualmachine" "virtualMachineRunCommandByVirtualMachine" {
///   async_execution = false
///   error_blob_uri  = "https://mystorageaccount.blob.core.windows.net/scriptcontainer/scriptURI"
///   location        = "West US"
///   output_blob_managed_identity = {
///     client_id = "22d35efb-0c99-4041-8c5b-6d24db33a69a"
///   }
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
///     script_uri = "https://mystorageaccount.blob.core.windows.net/scriptcontainer/scriptURI"
///   }
///   timeout_in_seconds                  = 3600
///   treat_failure_as_deployment_failure = false
///   vm_name                             = "myVM"
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
/// import com.pulumi.azurenative.compute.VirtualMachineRunCommandByVirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineRunCommandByVirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.RunCommandManagedIdentityArgs;
/// import com.pulumi.azurenative.compute.inputs.RunCommandInputParameterArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineRunCommandScriptSourceArgs;
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
///         var virtualMachineRunCommandByVirtualMachine = new VirtualMachineRunCommandByVirtualMachine("virtualMachineRunCommandByVirtualMachine", VirtualMachineRunCommandByVirtualMachineArgs.builder()
///             .asyncExecution(false)
///             .errorBlobUri("https://mystorageaccount.blob.core.windows.net/scriptcontainer/scriptURI")
///             .location("West US")
///             .outputBlobManagedIdentity(RunCommandManagedIdentityArgs.builder()
///                 .clientId("22d35efb-0c99-4041-8c5b-6d24db33a69a")
///                 .build())
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
///             .source(VirtualMachineRunCommandScriptSourceArgs.builder()
///                 .scriptUri("https://mystorageaccount.blob.core.windows.net/scriptcontainer/scriptURI")
///                 .build())
///             .timeoutInSeconds(3600)
///             .treatFailureAsDeploymentFailure(false)
///             .vmName("myVM")
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
/// const virtualMachineRunCommandByVirtualMachine = new azure_native.compute.VirtualMachineRunCommandByVirtualMachine("virtualMachineRunCommandByVirtualMachine", {
///     asyncExecution: false,
///     errorBlobUri: "https://mystorageaccount.blob.core.windows.net/scriptcontainer/scriptURI",
///     location: "West US",
///     outputBlobManagedIdentity: {
///         clientId: "22d35efb-0c99-4041-8c5b-6d24db33a69a",
///     },
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
///         scriptUri: "https://mystorageaccount.blob.core.windows.net/scriptcontainer/scriptURI",
///     },
///     timeoutInSeconds: 3600,
///     treatFailureAsDeploymentFailure: false,
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_run_command_by_virtual_machine = azure_native.compute.VirtualMachineRunCommandByVirtualMachine("virtualMachineRunCommandByVirtualMachine",
///     async_execution=False,
///     error_blob_uri="https://mystorageaccount.blob.core.windows.net/scriptcontainer/scriptURI",
///     location="West US",
///     output_blob_managed_identity={
///         "client_id": "22d35efb-0c99-4041-8c5b-6d24db33a69a",
///     },
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
///         "script_uri": "https://mystorageaccount.blob.core.windows.net/scriptcontainer/scriptURI",
///     },
///     timeout_in_seconds=3600,
///     treat_failure_as_deployment_failure=False,
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineRunCommandByVirtualMachine:
///     type: azure-native:compute:VirtualMachineRunCommandByVirtualMachine
///     properties:
///       asyncExecution: false
///       errorBlobUri: https://mystorageaccount.blob.core.windows.net/scriptcontainer/scriptURI
///       location: West US
///       outputBlobManagedIdentity:
///         clientId: 22d35efb-0c99-4041-8c5b-6d24db33a69a
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
///         scriptUri: https://mystorageaccount.blob.core.windows.net/scriptcontainer/scriptURI
///       timeoutInSeconds: 3600
///       treatFailureAsDeploymentFailure: false
///       vmName: myVM
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
/// $ pulumi import azure-native:compute:VirtualMachineRunCommandByVirtualMachine myRunCommand /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/runCommands/{runCommandName}
/// ```
class VirtualMachineRunCommandByVirtualMachine extends pulumi.CustomResource {
  /// Optional. If set to true, provisioning will complete as soon as the script starts and will not wait for script to complete.
  late final pulumi.Output<bool?> asyncExecution;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// User-assigned managed identity that has access to errorBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  late final pulumi.Output<RunCommandManagedIdentityResponse?> errorBlobManagedIdentity;
  /// Specifies the Azure storage blob where script error stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer errorBlobManagedIdentity parameter.
  late final pulumi.Output<String?> errorBlobUri;
  /// The virtual machine run command instance view.
  late final pulumi.Output<VirtualMachineRunCommandInstanceViewResponse> instanceView;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// User-assigned managed identity that has access to outputBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  late final pulumi.Output<RunCommandManagedIdentityResponse?> outputBlobManagedIdentity;
  /// Specifies the Azure storage blob where script output stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer outputBlobManagedIdentity parameter.
  late final pulumi.Output<String?> outputBlobUri;
  /// The parameters used by the script.
  late final pulumi.Output<List<RunCommandInputParameterResponse>?> parameters;
  /// The parameters used by the script.
  late final pulumi.Output<List<RunCommandInputParameterResponse>?> protectedParameters;
  /// The provisioning state, which only appears in the response. If treatFailureAsDeploymentFailure set to true, any failure in the script will fail the deployment and ProvisioningState will be marked as Failed. If treatFailureAsDeploymentFailure set to false, ProvisioningState would only reflect whether the run command was run or not by the extensions platform, it would not indicate whether script failed in case of script failures. See instance view of run command in case of script failures to see executionMessage, output, error: https://aka.ms/runcommandmanaged#get-execution-status-and-results
  late final pulumi.Output<String> provisioningState;
  /// Specifies the user account password on the VM when executing the run command.
  late final pulumi.Output<String?> runAsPassword;
  /// Specifies the user account on the VM when executing the run command.
  late final pulumi.Output<String?> runAsUser;
  /// The source of the run command script.
  late final pulumi.Output<VirtualMachineRunCommandScriptSourceResponse?> source;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The timeout in seconds to execute the run command.
  late final pulumi.Output<int?> timeoutInSeconds;
  /// Optional. If set to true, any failure in the script will fail the deployment and ProvisioningState will be marked as Failed. If set to false, ProvisioningState would only reflect whether the run command was run or not by the extensions platform, it would not indicate whether script failed in case of script failures. See instance view of run command in case of script failures to see executionMessage, output, error: https://aka.ms/runcommandmanaged#get-execution-status-and-results
  late final pulumi.Output<bool?> treatFailureAsDeploymentFailure;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [VirtualMachineRunCommandByVirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineRunCommandByVirtualMachine]. {@macro pulumi_compute_virtual_machine_run_command_by_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineRunCommandByVirtualMachine(
    String name, {
    VirtualMachineRunCommandByVirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:VirtualMachineRunCommandByVirtualMachine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    asyncExecution = registerOutput<bool?>('asyncExecution');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    errorBlobManagedIdentity = registerOutput<RunCommandManagedIdentityResponse?>('errorBlobManagedIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunCommandManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    errorBlobUri = registerOutput<String?>('errorBlobUri');
    instanceView = registerOutput<VirtualMachineRunCommandInstanceViewResponse>('instanceView', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineRunCommandInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputBlobManagedIdentity = registerOutput<RunCommandManagedIdentityResponse?>('outputBlobManagedIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunCommandManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outputBlobUri = registerOutput<String?>('outputBlobUri');
    parameters = registerOutput<List<RunCommandInputParameterResponse>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RunCommandInputParameterResponse>(guardedValue, (value) => RunCommandInputParameterResponse.fromMap((value as Map).cast<String, dynamic>())); });
    protectedParameters = registerOutput<List<RunCommandInputParameterResponse>?>('protectedParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RunCommandInputParameterResponse>(guardedValue, (value) => RunCommandInputParameterResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    runAsPassword = registerOutput<String?>('runAsPassword');
    runAsUser = registerOutput<String?>('runAsUser');
    source = registerOutput<VirtualMachineRunCommandScriptSourceResponse?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineRunCommandScriptSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeoutInSeconds = registerOutput<int?>('timeoutInSeconds');
    treatFailureAsDeploymentFailure = registerOutput<bool?>('treatFailureAsDeploymentFailure');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [VirtualMachineRunCommandByVirtualMachine] resource.
  VirtualMachineRunCommandByVirtualMachine.reference(String urn)
    : super(
        'azure-native:compute:VirtualMachineRunCommandByVirtualMachine',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    asyncExecution = registerOutput<bool?>('asyncExecution');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    errorBlobManagedIdentity = registerOutput<RunCommandManagedIdentityResponse?>('errorBlobManagedIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunCommandManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    errorBlobUri = registerOutput<String?>('errorBlobUri');
    instanceView = registerOutput<VirtualMachineRunCommandInstanceViewResponse>('instanceView', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineRunCommandInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputBlobManagedIdentity = registerOutput<RunCommandManagedIdentityResponse?>('outputBlobManagedIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunCommandManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outputBlobUri = registerOutput<String?>('outputBlobUri');
    parameters = registerOutput<List<RunCommandInputParameterResponse>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RunCommandInputParameterResponse>(guardedValue, (value) => RunCommandInputParameterResponse.fromMap((value as Map).cast<String, dynamic>())); });
    protectedParameters = registerOutput<List<RunCommandInputParameterResponse>?>('protectedParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RunCommandInputParameterResponse>(guardedValue, (value) => RunCommandInputParameterResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    runAsPassword = registerOutput<String?>('runAsPassword');
    runAsUser = registerOutput<String?>('runAsUser');
    source = registerOutput<VirtualMachineRunCommandScriptSourceResponse?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineRunCommandScriptSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeoutInSeconds = registerOutput<int?>('timeoutInSeconds');
    treatFailureAsDeploymentFailure = registerOutput<bool?>('treatFailureAsDeploymentFailure');
    type = registerOutput<String>('type');
  }
}
