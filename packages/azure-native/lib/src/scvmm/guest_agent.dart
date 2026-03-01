import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_agent_args.dart';
import 'guest_credential_response.dart';
import 'http_proxy_configuration_response.dart';
import 'system_data_response.dart';

/// Defines the GuestAgent.
///
/// Uses Azure REST API version 2023-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-21-preview.
///
/// Other available API versions: 2022-05-21-preview, 2023-10-07, 2024-06-01, 2025-03-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateGuestAgent
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var guestAgent = new AzureNative.ScVmm.GuestAgent("guestAgent", new()
///     {
///         Credentials = new AzureNative.ScVmm.Inputs.GuestCredentialArgs
///         {
///             Password = "<password>",
///             Username = "tempuser",
///         },
///         GuestAgentName = "default",
///         HttpProxyConfig = new AzureNative.ScVmm.Inputs.HttpProxyConfigurationArgs
///         {
///             HttpsProxy = "http://192.1.2.3:8080",
///         },
///         ProvisioningAction = AzureNative.ScVmm.ProvisioningAction.Install,
///         ResourceGroupName = "testrg",
///         VirtualMachineName = "ContosoVm",
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
/// 	scvmm "github.com/pulumi/pulumi-azure-native-sdk/scvmm/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := scvmm.NewGuestAgent(ctx, "guestAgent", &scvmm.GuestAgentArgs{
/// 			Credentials: &scvmm.GuestCredentialArgs{
/// 				Password: pulumi.String("<password>"),
/// 				Username: pulumi.String("tempuser"),
/// 			},
/// 			GuestAgentName: pulumi.String("default"),
/// 			HttpProxyConfig: &scvmm.HttpProxyConfigurationArgs{
/// 				HttpsProxy: pulumi.String("http://192.1.2.3:8080"),
/// 			},
/// 			ProvisioningAction: pulumi.String(scvmm.ProvisioningActionInstall),
/// 			ResourceGroupName:  pulumi.String("testrg"),
/// 			VirtualMachineName: pulumi.String("ContosoVm"),
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
/// import com.pulumi.azurenative.scvmm.GuestAgent;
/// import com.pulumi.azurenative.scvmm.GuestAgentArgs;
/// import com.pulumi.azurenative.scvmm.inputs.GuestCredentialArgs;
/// import com.pulumi.azurenative.scvmm.inputs.HttpProxyConfigurationArgs;
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
///         var guestAgent = new GuestAgent("guestAgent", GuestAgentArgs.builder()
///             .credentials(GuestCredentialArgs.builder()
///                 .password("<password>")
///                 .username("tempuser")
///                 .build())
///             .guestAgentName("default")
///             .httpProxyConfig(HttpProxyConfigurationArgs.builder()
///                 .httpsProxy("http://192.1.2.3:8080")
///                 .build())
///             .provisioningAction("install")
///             .resourceGroupName("testrg")
///             .virtualMachineName("ContosoVm")
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
/// const guestAgent = new azure_native.scvmm.GuestAgent("guestAgent", {
///     credentials: {
///         password: "<password>",
///         username: "tempuser",
///     },
///     guestAgentName: "default",
///     httpProxyConfig: {
///         httpsProxy: "http://192.1.2.3:8080",
///     },
///     provisioningAction: azure_native.scvmm.ProvisioningAction.Install,
///     resourceGroupName: "testrg",
///     virtualMachineName: "ContosoVm",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// guest_agent = azure_native.scvmm.GuestAgent("guestAgent",
///     credentials={
///         "password": "<password>",
///         "username": "tempuser",
///     },
///     guest_agent_name="default",
///     http_proxy_config={
///         "https_proxy": "http://192.1.2.3:8080",
///     },
///     provisioning_action=azure_native.scvmm.ProvisioningAction.INSTALL,
///     resource_group_name="testrg",
///     virtual_machine_name="ContosoVm")
///
/// ```
///
/// ```yaml
/// resources:
///   guestAgent:
///     type: azure-native:scvmm:GuestAgent
///     properties:
///       credentials:
///         password: <password>
///         username: tempuser
///       guestAgentName: default
///       httpProxyConfig:
///         httpsProxy: http://192.1.2.3:8080
///       provisioningAction: install
///       resourceGroupName: testrg
///       virtualMachineName: ContosoVm
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
/// $ pulumi import azure-native:scvmm:GuestAgent default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ScVmm/virtualMachines/{virtualMachineName}/guestAgents/{guestAgentName}
/// ```
class GuestAgent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Username / Password Credentials to provision guest agent.
  late final pulumi.Output<GuestCredentialResponse?> credentials;
  /// Gets the name of the corresponding resource in Kubernetes.
  late final pulumi.Output<String> customResourceName;
  /// HTTP Proxy configuration for the VM.
  late final pulumi.Output<HttpProxyConfigurationResponse?> httpProxyConfig;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets or sets the guest agent provisioning action.
  late final pulumi.Output<String?> provisioningAction;
  /// Gets or sets the provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Gets or sets the guest agent status.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Gets or sets a unique identifier for this resource.
  late final pulumi.Output<String> uuid;

  /// Creates a new [GuestAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GuestAgent]. {@macro pulumi_scvmm_guest_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GuestAgent(
    String name, {
    GuestAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:scvmm:GuestAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.credentials = registerOutput<GuestCredentialResponse?>('credentials');
    this.customResourceName = registerOutput<String>('customResourceName');
    this.httpProxyConfig = registerOutput<HttpProxyConfigurationResponse?>('httpProxyConfig');
    this.name = registerOutput<String>('name');
    this.provisioningAction = registerOutput<String?>('provisioningAction');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.status = registerOutput<String>('status');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
    this.uuid = registerOutput<String>('uuid');
  }
}
