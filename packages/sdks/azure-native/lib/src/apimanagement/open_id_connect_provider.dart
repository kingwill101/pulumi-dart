import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_id_connect_provider_args.dart';

/// OpenId Connect Provider details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateOpenIdConnectProvider
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var openIdConnectProvider = new AzureNative.ApiManagement.OpenIdConnectProvider("openIdConnectProvider", new()
///     {
///         ClientId = "oidprovidertemplate3",
///         ClientSecret = "x",
///         DisplayName = "templateoidprovider3",
///         MetadataEndpoint = "https://example.com",
///         Opid = "templateOpenIdConnect3",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         UseInApiDocumentation = true,
///         UseInTestConsole = false,
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
/// 		_, err := apimanagement.NewOpenIdConnectProvider(ctx, "openIdConnectProvider", &apimanagement.OpenIdConnectProviderArgs{
/// 			ClientId:              pulumi.String("oidprovidertemplate3"),
/// 			ClientSecret:          pulumi.String("x"),
/// 			DisplayName:           pulumi.String("templateoidprovider3"),
/// 			MetadataEndpoint:      pulumi.String("https://example.com"),
/// 			Opid:                  pulumi.String("templateOpenIdConnect3"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			ServiceName:           pulumi.String("apimService1"),
/// 			UseInApiDocumentation: pulumi.Bool(true),
/// 			UseInTestConsole:      pulumi.Bool(false),
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
/// import com.pulumi.azurenative.apimanagement.OpenIdConnectProvider;
/// import com.pulumi.azurenative.apimanagement.OpenIdConnectProviderArgs;
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
///         var openIdConnectProvider = new OpenIdConnectProvider("openIdConnectProvider", OpenIdConnectProviderArgs.builder()
///             .clientId("oidprovidertemplate3")
///             .clientSecret("x")
///             .displayName("templateoidprovider3")
///             .metadataEndpoint("https://example.com")
///             .opid("templateOpenIdConnect3")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .useInApiDocumentation(true)
///             .useInTestConsole(false)
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
/// const openIdConnectProvider = new azure_native.apimanagement.OpenIdConnectProvider("openIdConnectProvider", {
///     clientId: "oidprovidertemplate3",
///     clientSecret: "x",
///     displayName: "templateoidprovider3",
///     metadataEndpoint: "https://example.com",
///     opid: "templateOpenIdConnect3",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     useInApiDocumentation: true,
///     useInTestConsole: false,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// open_id_connect_provider = azure_native.apimanagement.OpenIdConnectProvider("openIdConnectProvider",
///     client_id="oidprovidertemplate3",
///     client_secret="x",
///     display_name="templateoidprovider3",
///     metadata_endpoint="https://example.com",
///     opid="templateOpenIdConnect3",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     use_in_api_documentation=True,
///     use_in_test_console=False)
///
/// ```
///
/// ```yaml
/// resources:
///   openIdConnectProvider:
///     type: azure-native:apimanagement:OpenIdConnectProvider
///     properties:
///       clientId: oidprovidertemplate3
///       clientSecret: x
///       displayName: templateoidprovider3
///       metadataEndpoint: https://example.com
///       opid: templateOpenIdConnect3
///       resourceGroupName: rg1
///       serviceName: apimService1
///       useInApiDocumentation: true
///       useInTestConsole: false
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
/// $ pulumi import azure-native:apimanagement:OpenIdConnectProvider templateOpenIdConnect3 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/openidConnectProviders/{opid}
/// ```
class OpenIdConnectProvider extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Client ID of developer console which is the client application.
  late final pulumi.Output<String> clientId;

  /// Client Secret of developer console which is the client application.
  late final pulumi.Output<String?> clientSecret;

  /// User-friendly description of OpenID Connect Provider.
  late final pulumi.Output<String?> description;

  /// User-friendly OpenID Connect Provider name.
  late final pulumi.Output<String> displayName;

  /// Metadata endpoint URI.
  late final pulumi.Output<String> metadataEndpoint;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// If true, the Open ID Connect provider will be used in the API documentation in the developer portal. False by default if no value is provided.
  late final pulumi.Output<bool?> useInApiDocumentation;

  /// If true, the Open ID Connect provider may be used in the developer portal test console. True by default if no value is provided.
  late final pulumi.Output<bool?> useInTestConsole;

  /// Creates a new [OpenIdConnectProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OpenIdConnectProvider]. {@macro pulumi_apimanagement_open_id_connect_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OpenIdConnectProvider(
    String name, {
    OpenIdConnectProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:OpenIdConnectProvider',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String?>('clientSecret');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    metadataEndpoint = registerOutput<String>('metadataEndpoint');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    useInApiDocumentation = registerOutput<bool?>('useInApiDocumentation');
    useInTestConsole = registerOutput<bool?>('useInTestConsole');
  }
}
