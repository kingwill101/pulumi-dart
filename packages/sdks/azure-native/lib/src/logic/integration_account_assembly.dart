import 'package:pulumi/pulumi.dart' as pulumi;
import 'assembly_properties_response.dart';
import 'integration_account_assembly_args.dart';

/// The assembly definition.
///
/// Uses Azure REST API version 2019-05-01. In version 2.x of the Azure Native provider, it used API version 2019-05-01.
///
/// Other available API versions: 2016-06-01, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update an account assembly
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integrationAccountAssembly = new AzureNative.Logic.IntegrationAccountAssembly("integrationAccountAssembly", new()
///     {
///         AssemblyArtifactName = "testAssembly",
///         IntegrationAccountName = "testIntegrationAccount",
///         Location = "westus",
///         Properties = new AzureNative.Logic.Inputs.AssemblyPropertiesArgs
///         {
///             AssemblyName = "System.IdentityModel.Tokens.Jwt",
///             Content = "Base64 encoded Assembly Content",
///             Metadata = null,
///         },
///         ResourceGroupName = "testResourceGroup",
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
/// 	logic "github.com/pulumi/pulumi-azure-native-sdk/logic/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logic.NewIntegrationAccountAssembly(ctx, "integrationAccountAssembly", &logic.IntegrationAccountAssemblyArgs{
/// 			AssemblyArtifactName:   pulumi.String("testAssembly"),
/// 			IntegrationAccountName: pulumi.String("testIntegrationAccount"),
/// 			Location:               pulumi.String("westus"),
/// 			Properties: &logic.AssemblyPropertiesArgs{
/// 				AssemblyName: pulumi.String("System.IdentityModel.Tokens.Jwt"),
/// 				Content:      pulumi.Any("Base64 encoded Assembly Content"),
/// 				Metadata:     pulumi.Any(map[string]interface{}{}),
/// 			},
/// 			ResourceGroupName: pulumi.String("testResourceGroup"),
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
/// import com.pulumi.azurenative.logic.IntegrationAccountAssembly;
/// import com.pulumi.azurenative.logic.IntegrationAccountAssemblyArgs;
/// import com.pulumi.azurenative.logic.inputs.AssemblyPropertiesArgs;
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
///         var integrationAccountAssembly = new IntegrationAccountAssembly("integrationAccountAssembly", IntegrationAccountAssemblyArgs.builder()
///             .assemblyArtifactName("testAssembly")
///             .integrationAccountName("testIntegrationAccount")
///             .location("westus")
///             .properties(AssemblyPropertiesArgs.builder()
///                 .assemblyName("System.IdentityModel.Tokens.Jwt")
///                 .content("Base64 encoded Assembly Content")
///                 .metadata(Map.ofEntries(
///                 ))
///                 .build())
///             .resourceGroupName("testResourceGroup")
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
/// const integrationAccountAssembly = new azure_native.logic.IntegrationAccountAssembly("integrationAccountAssembly", {
///     assemblyArtifactName: "testAssembly",
///     integrationAccountName: "testIntegrationAccount",
///     location: "westus",
///     properties: {
///         assemblyName: "System.IdentityModel.Tokens.Jwt",
///         content: "Base64 encoded Assembly Content",
///         metadata: {},
///     },
///     resourceGroupName: "testResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// integration_account_assembly = azure_native.logic.IntegrationAccountAssembly("integrationAccountAssembly",
///     assembly_artifact_name="testAssembly",
///     integration_account_name="testIntegrationAccount",
///     location="westus",
///     properties={
///         "assembly_name": "System.IdentityModel.Tokens.Jwt",
///         "content": "Base64 encoded Assembly Content",
///         "metadata": {},
///     },
///     resource_group_name="testResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   integrationAccountAssembly:
///     type: azure-native:logic:IntegrationAccountAssembly
///     properties:
///       assemblyArtifactName: testAssembly
///       integrationAccountName: testIntegrationAccount
///       location: westus
///       properties:
///         assemblyName: System.IdentityModel.Tokens.Jwt
///         content: Base64 encoded Assembly Content
///         metadata: {}
///       resourceGroupName: testResourceGroup
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
/// $ pulumi import azure-native:logic:IntegrationAccountAssembly testAssembly /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/assemblies/{assemblyArtifactName}
/// ```
class IntegrationAccountAssembly extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// Gets the resource name.
  late final pulumi.Output<String> name;
  /// The assembly properties.
  late final pulumi.Output<AssemblyPropertiesResponse> properties;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets the resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IntegrationAccountAssembly].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccountAssembly]. {@macro pulumi_logic_integration_account_assembly_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccountAssembly(
    String name, {
    IntegrationAccountAssemblyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:logic:IntegrationAccountAssembly',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AssemblyPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssemblyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
