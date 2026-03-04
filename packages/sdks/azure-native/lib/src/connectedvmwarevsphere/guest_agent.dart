import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_agent_args.dart';
import 'guest_credential_response.dart';
import 'http_proxy_configuration_response.dart';
import 'system_data_response.dart';

/// Defines the GuestAgent.
///
/// Uses Azure REST API version 2023-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-07-15-preview.
///
/// Other available API versions: 2022-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var guestAgent = new AzureNative.ConnectedVMwarevSphere.GuestAgent("guestAgent", new()
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
///         Name = "default",
///         PrivateLinkScopeResourceId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName",
///         ProvisioningAction = AzureNative.ConnectedVMwarevSphere.ProvisioningAction.Install,
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
/// 	connectedvmwarevsphere "github.com/pulumi/pulumi-azure-native-sdk/connectedvmwarevsphere/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connectedvmwarevsphere.NewGuestAgent(ctx, "guestAgent", &connectedvmwarevsphere.GuestAgentArgs{
/// 			Credentials: &connectedvmwarevsphere.GuestCredentialArgs{
/// 				Password: pulumi.String("<password>"),
/// 				Username: pulumi.String("tempuser"),
/// 			},
/// 			HttpProxyConfig: &connectedvmwarevsphere.HttpProxyConfigurationArgs{
/// 				HttpsProxy: pulumi.String("http://192.1.2.3:8080"),
/// 			},
/// 			Name:                       pulumi.String("default"),
/// 			PrivateLinkScopeResourceId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName"),
/// 			ProvisioningAction:         pulumi.String(connectedvmwarevsphere.ProvisioningActionInstall),
/// 			ResourceGroupName:          pulumi.String("testrg"),
/// 			VirtualMachineName:         pulumi.String("ContosoVm"),
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
/// import com.pulumi.azurenative.connectedvmwarevsphere.GuestAgent;
/// import com.pulumi.azurenative.connectedvmwarevsphere.GuestAgentArgs;
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
///         var guestAgent = new GuestAgent("guestAgent", GuestAgentArgs.builder()
///             .credentials(GuestCredentialArgs.builder()
///                 .password("<password>")
///                 .username("tempuser")
///                 .build())
///             .httpProxyConfig(HttpProxyConfigurationArgs.builder()
///                 .httpsProxy("http://192.1.2.3:8080")
///                 .build())
///             .name("default")
///             .privateLinkScopeResourceId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName")
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
/// const guestAgent = new azure_native.connectedvmwarevsphere.GuestAgent("guestAgent", {
///     credentials: {
///         password: "<password>",
///         username: "tempuser",
///     },
///     httpProxyConfig: {
///         httpsProxy: "http://192.1.2.3:8080",
///     },
///     name: "default",
///     privateLinkScopeResourceId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName",
///     provisioningAction: azure_native.connectedvmwarevsphere.ProvisioningAction.Install,
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
/// guest_agent = azure_native.connectedvmwarevsphere.GuestAgent("guestAgent",
///     credentials={
///         "password": "<password>",
///         "username": "tempuser",
///     },
///     http_proxy_config={
///         "https_proxy": "http://192.1.2.3:8080",
///     },
///     name="default",
///     private_link_scope_resource_id="/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName",
///     provisioning_action=azure_native.connectedvmwarevsphere.ProvisioningAction.INSTALL,
///     resource_group_name="testrg",
///     virtual_machine_name="ContosoVm")
///
/// ```
///
/// ```yaml
/// resources:
///   guestAgent:
///     type: azure-native:connectedvmwarevsphere:GuestAgent
///     properties:
///       credentials:
///         password: <password>
///         username: tempuser
///       httpProxyConfig:
///         httpsProxy: http://192.1.2.3:8080
///       name: default
///       privateLinkScopeResourceId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName
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
/// $ pulumi import azure-native:connectedvmwarevsphere:GuestAgent default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedVMwarevSphere/virtualMachines/{virtualMachineName}/guestAgents/{name}
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

  /// Creates a new [GuestAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GuestAgent]. {@macro pulumi_connectedvmwarevsphere_guest_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GuestAgent(
    String name, {
    GuestAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:connectedvmwarevsphere:GuestAgent',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    credentials = registerOutput<GuestCredentialResponse?>('credentials');
    customResourceName = registerOutput<String>('customResourceName');
    httpProxyConfig = registerOutput<HttpProxyConfigurationResponse?>(
      'httpProxyConfig',
    );
    this.name = registerOutput<String>('name');
    privateLinkScopeResourceId = registerOutput<String?>(
      'privateLinkScopeResourceId',
    );
    provisioningAction = registerOutput<String?>('provisioningAction');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
  }
}
