import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_contract_properties_response.dart';
import 'workspace_named_value_args.dart';

/// NamedValue details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateWorkspaceNamedValue
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceNamedValue = new AzureNative.ApiManagement.WorkspaceNamedValue("workspaceNamedValue", new()
///     {
///         DisplayName = "prop3name",
///         NamedValueId = "testprop2",
///         ResourceGroupName = "rg1",
///         Secret = false,
///         ServiceName = "apimService1",
///         Tags = new[]
///         {
///             "foo",
///             "bar",
///         },
///         Value = "propValue",
///         WorkspaceId = "wks1",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewWorkspaceNamedValue(ctx, "workspaceNamedValue", &apimanagement.WorkspaceNamedValueArgs{
/// 			DisplayName:       pulumi.String("prop3name"),
/// 			NamedValueId:      pulumi.String("testprop2"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Secret:            pulumi.Bool(false),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 				pulumi.String("bar"),
/// 			},
/// 			Value:       pulumi.String("propValue"),
/// 			WorkspaceId: pulumi.String("wks1"),
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
/// import com.pulumi.azurenative.apimanagement.WorkspaceNamedValue;
/// import com.pulumi.azurenative.apimanagement.WorkspaceNamedValueArgs;
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
///         var workspaceNamedValue = new WorkspaceNamedValue("workspaceNamedValue", WorkspaceNamedValueArgs.builder()
///             .displayName("prop3name")
///             .namedValueId("testprop2")
///             .resourceGroupName("rg1")
///             .secret(false)
///             .serviceName("apimService1")
///             .tags(
///                 "foo",
///                 "bar")
///             .value("propValue")
///             .workspaceId("wks1")
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
/// const workspaceNamedValue = new azure_native.apimanagement.WorkspaceNamedValue("workspaceNamedValue", {
///     displayName: "prop3name",
///     namedValueId: "testprop2",
///     resourceGroupName: "rg1",
///     secret: false,
///     serviceName: "apimService1",
///     tags: [
///         "foo",
///         "bar",
///     ],
///     value: "propValue",
///     workspaceId: "wks1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_named_value = azure_native.apimanagement.WorkspaceNamedValue("workspaceNamedValue",
///     display_name="prop3name",
///     named_value_id="testprop2",
///     resource_group_name="rg1",
///     secret=False,
///     service_name="apimService1",
///     tags=[
///         "foo",
///         "bar",
///     ],
///     value="propValue",
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceNamedValue:
///     type: azure-native:apimanagement:WorkspaceNamedValue
///     properties:
///       displayName: prop3name
///       namedValueId: testprop2
///       resourceGroupName: rg1
///       secret: false
///       serviceName: apimService1
///       tags:
///         - foo
///         - bar
///       value: propValue
///       workspaceId: wks1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateWorkspaceNamedValueWithKeyVault
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceNamedValue = new AzureNative.ApiManagement.WorkspaceNamedValue("workspaceNamedValue", new()
///     {
///         DisplayName = "prop6namekv",
///         KeyVault = new AzureNative.ApiManagement.Inputs.KeyVaultContractCreatePropertiesArgs
///         {
///             IdentityClientId = "ceaa6b06-c00f-43ef-99ac-f53d1fe876a0",
///             SecretIdentifier = "https://contoso.vault.azure.net/secrets/aadSecret",
///         },
///         NamedValueId = "testprop6",
///         ResourceGroupName = "rg1",
///         Secret = true,
///         ServiceName = "apimService1",
///         Tags = new[]
///         {
///             "foo",
///             "bar",
///         },
///         WorkspaceId = "wks1",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewWorkspaceNamedValue(ctx, "workspaceNamedValue", &apimanagement.WorkspaceNamedValueArgs{
/// 			DisplayName: pulumi.String("prop6namekv"),
/// 			KeyVault: &apimanagement.KeyVaultContractCreatePropertiesArgs{
/// 				IdentityClientId: pulumi.String("ceaa6b06-c00f-43ef-99ac-f53d1fe876a0"),
/// 				SecretIdentifier: pulumi.String("https://contoso.vault.azure.net/secrets/aadSecret"),
/// 			},
/// 			NamedValueId:      pulumi.String("testprop6"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Secret:            pulumi.Bool(true),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 				pulumi.String("bar"),
/// 			},
/// 			WorkspaceId: pulumi.String("wks1"),
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
/// import com.pulumi.azurenative.apimanagement.WorkspaceNamedValue;
/// import com.pulumi.azurenative.apimanagement.WorkspaceNamedValueArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.KeyVaultContractCreatePropertiesArgs;
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
///         var workspaceNamedValue = new WorkspaceNamedValue("workspaceNamedValue", WorkspaceNamedValueArgs.builder()
///             .displayName("prop6namekv")
///             .keyVault(KeyVaultContractCreatePropertiesArgs.builder()
///                 .identityClientId("ceaa6b06-c00f-43ef-99ac-f53d1fe876a0")
///                 .secretIdentifier("https://contoso.vault.azure.net/secrets/aadSecret")
///                 .build())
///             .namedValueId("testprop6")
///             .resourceGroupName("rg1")
///             .secret(true)
///             .serviceName("apimService1")
///             .tags(
///                 "foo",
///                 "bar")
///             .workspaceId("wks1")
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
/// const workspaceNamedValue = new azure_native.apimanagement.WorkspaceNamedValue("workspaceNamedValue", {
///     displayName: "prop6namekv",
///     keyVault: {
///         identityClientId: "ceaa6b06-c00f-43ef-99ac-f53d1fe876a0",
///         secretIdentifier: "https://contoso.vault.azure.net/secrets/aadSecret",
///     },
///     namedValueId: "testprop6",
///     resourceGroupName: "rg1",
///     secret: true,
///     serviceName: "apimService1",
///     tags: [
///         "foo",
///         "bar",
///     ],
///     workspaceId: "wks1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_named_value = azure_native.apimanagement.WorkspaceNamedValue("workspaceNamedValue",
///     display_name="prop6namekv",
///     key_vault={
///         "identity_client_id": "ceaa6b06-c00f-43ef-99ac-f53d1fe876a0",
///         "secret_identifier": "https://contoso.vault.azure.net/secrets/aadSecret",
///     },
///     named_value_id="testprop6",
///     resource_group_name="rg1",
///     secret=True,
///     service_name="apimService1",
///     tags=[
///         "foo",
///         "bar",
///     ],
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceNamedValue:
///     type: azure-native:apimanagement:WorkspaceNamedValue
///     properties:
///       displayName: prop6namekv
///       keyVault:
///         identityClientId: ceaa6b06-c00f-43ef-99ac-f53d1fe876a0
///         secretIdentifier: https://contoso.vault.azure.net/secrets/aadSecret
///       namedValueId: testprop6
///       resourceGroupName: rg1
///       secret: true
///       serviceName: apimService1
///       tags:
///         - foo
///         - bar
///       workspaceId: wks1
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
/// $ pulumi import azure-native:apimanagement:WorkspaceNamedValue testprop6 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/workspaces/{workspaceId}/namedValues/{namedValueId}
/// ```
class WorkspaceNamedValue extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Unique name of NamedValue. It may contain only letters, digits, period, dash, and underscore characters.
  late final pulumi.Output<String> displayName;
  /// KeyVault location details of the namedValue.
  late final pulumi.Output<KeyVaultContractPropertiesResponse?> keyVault;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Determines whether the value is a secret and should be encrypted or not. Default value is false.
  late final pulumi.Output<bool?> secret;
  /// Optional tags that when provided can be used to filter the NamedValue list.
  late final pulumi.Output<List<String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Value of the NamedValue. Can contain policy expressions. It may not be empty or consist only of whitespace. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  late final pulumi.Output<String?> value;

  /// Creates a new [WorkspaceNamedValue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceNamedValue]. {@macro pulumi_apimanagement_workspace_named_value_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceNamedValue(
    String name, {
    WorkspaceNamedValueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:WorkspaceNamedValue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.displayName = registerOutput<String>('displayName');
    this.keyVault = registerOutput<KeyVaultContractPropertiesResponse?>('keyVault');
    this.name = registerOutput<String>('name');
    this.secret = registerOutput<bool?>('secret');
    this.tags = registerOutput<List<String>?>('tags');
    this.type = registerOutput<String>('type');
    this.value = registerOutput<String?>('value');
  }
}
