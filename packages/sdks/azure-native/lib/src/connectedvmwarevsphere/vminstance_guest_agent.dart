import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_credential_response.dart';
import 'http_proxy_configuration_response.dart';
import 'system_data_response.dart';
import 'vminstance_guest_agent_args.dart';

/// Defines the GuestAgent.
///
/// Uses Azure REST API version 2023-12-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var vmInstanceGuestAgent = new AzureNative.ConnectedVMwarevSphere.VMInstanceGuestAgent("vmInstanceGuestAgent", new()
///     {
///         Credentials = new AzureNative.ConnectedVMwarevSphere.Inputs.GuestCredentialArgs
///         {
///             Password = "<password>",
///             Username = "tempuser",
///         },
///         HttpProxyConfig = new AzureNative.ConnectedVMwarevSphere.Inputs.HttpProxyConfigurationArgs
///         {
///             HttpsProxy = "http://192.1.2.3:8080",
///         },
///         PrivateLinkScopeResourceId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName",
///         ProvisioningAction = AzureNative.ConnectedVMwarevSphere.ProvisioningAction.Install,
///         ResourceUri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
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
/// 	connectedvmwarevsphere "github.com/pulumi/pulumi-azure-native-sdk/connectedvmwarevsphere/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connectedvmwarevsphere.NewVMInstanceGuestAgent(ctx, "vmInstanceGuestAgent", &connectedvmwarevsphere.VMInstanceGuestAgentArgs{
/// 			Credentials: &connectedvmwarevsphere.GuestCredentialArgs{
/// 				Password: pulumi.String("<password>"),
/// 				Username: pulumi.String("tempuser"),
/// 			},
/// 			HttpProxyConfig: &connectedvmwarevsphere.HttpProxyConfigurationArgs{
/// 				HttpsProxy: pulumi.String("http://192.1.2.3:8080"),
/// 			},
/// 			PrivateLinkScopeResourceId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName"),
/// 			ProvisioningAction:         pulumi.String(connectedvmwarevsphere.ProvisioningActionInstall),
/// 			ResourceUri:                pulumi.String("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"),
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
/// import com.pulumi.azurenative.connectedvmwarevsphere.VMInstanceGuestAgent;
/// import com.pulumi.azurenative.connectedvmwarevsphere.VMInstanceGuestAgentArgs;
/// import com.pulumi.azurenative.connectedvmwarevsphere.inputs.GuestCredentialArgs;
/// import com.pulumi.azurenative.connectedvmwarevsphere.inputs.HttpProxyConfigurationArgs;
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
///         var vmInstanceGuestAgent = new VMInstanceGuestAgent("vmInstanceGuestAgent", VMInstanceGuestAgentArgs.builder()
///             .credentials(GuestCredentialArgs.builder()
///                 .password("<password>")
///                 .username("tempuser")
///                 .build())
///             .httpProxyConfig(HttpProxyConfigurationArgs.builder()
///                 .httpsProxy("http://192.1.2.3:8080")
///                 .build())
///             .privateLinkScopeResourceId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName")
///             .provisioningAction("install")
///             .resourceUri("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
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
/// const vmInstanceGuestAgent = new azure_native.connectedvmwarevsphere.VMInstanceGuestAgent("vmInstanceGuestAgent", {
///     credentials: {
///         password: "<password>",
///         username: "tempuser",
///     },
///     httpProxyConfig: {
///         httpsProxy: "http://192.1.2.3:8080",
///     },
///     privateLinkScopeResourceId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName",
///     provisioningAction: azure_native.connectedvmwarevsphere.ProvisioningAction.Install,
///     resourceUri: "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vm_instance_guest_agent = azure_native.connectedvmwarevsphere.VMInstanceGuestAgent("vmInstanceGuestAgent",
///     credentials={
///         "password": "<password>",
///         "username": "tempuser",
///     },
///     http_proxy_config={
///         "https_proxy": "http://192.1.2.3:8080",
///     },
///     private_link_scope_resource_id="/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName",
///     provisioning_action=azure_native.connectedvmwarevsphere.ProvisioningAction.INSTALL,
///     resource_uri="subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
///
/// ```
///
/// ```yaml
/// resources:
///   vmInstanceGuestAgent:
///     type: azure-native:connectedvmwarevsphere:VMInstanceGuestAgent
///     properties:
///       credentials:
///         password: <password>
///         username: tempuser
///       httpProxyConfig:
///         httpsProxy: http://192.1.2.3:8080
///       privateLinkScopeResourceId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName
///       provisioningAction: install
///       resourceUri: subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM
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
/// $ pulumi import azure-native:connectedvmwarevsphere:VMInstanceGuestAgent default /{resourceUri}/providers/Microsoft.ConnectedVMwarevSphere/virtualMachineInstances/default/guestAgents/default
/// ```
class VMInstanceGuestAgent extends pulumi.CustomResource {
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
  /// The resource id of the private link scope this machine is assigned to, if any.
  late final pulumi.Output<String?> privateLinkScopeResourceId;
  /// Gets or sets the guest agent provisioning action.
  late final pulumi.Output<String?> provisioningAction;
  /// Gets the provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Gets or sets the guest agent status.
  late final pulumi.Output<String> status;
  /// The resource status information.
  late final pulumi.Output<List<Map<String, dynamic>>> statuses;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Gets or sets a unique identifier for this resource.
  late final pulumi.Output<String> uuid;

  /// Creates a new [VMInstanceGuestAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VMInstanceGuestAgent]. {@macro pulumi_connectedvmwarevsphere_vminstance_guest_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VMInstanceGuestAgent(
    String name, {
    VMInstanceGuestAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:connectedvmwarevsphere:VMInstanceGuestAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    credentials = registerOutput<GuestCredentialResponse?>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GuestCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customResourceName = registerOutput<String>('customResourceName');
    httpProxyConfig = registerOutput<HttpProxyConfigurationResponse?>('httpProxyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HttpProxyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    privateLinkScopeResourceId = registerOutput<String?>('privateLinkScopeResourceId');
    provisioningAction = registerOutput<String?>('provisioningAction');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
  }
}
