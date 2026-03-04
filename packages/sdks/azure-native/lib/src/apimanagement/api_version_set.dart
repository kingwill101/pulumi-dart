import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_version_set_args.dart';

/// API Version Set Contract details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateApiVersionSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiVersionSet = new AzureNative.ApiManagement.ApiVersionSet("apiVersionSet", new()
///     {
///         Description = "Version configuration",
///         DisplayName = "api set 1",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         VersionSetId = "api1",
///         VersioningScheme = AzureNative.ApiManagement.VersioningScheme.Segment,
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
/// 		_, err := apimanagement.NewApiVersionSet(ctx, "apiVersionSet", &apimanagement.ApiVersionSetArgs{
/// 			Description:       pulumi.String("Version configuration"),
/// 			DisplayName:       pulumi.String("api set 1"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			VersionSetId:      pulumi.String("api1"),
/// 			VersioningScheme:  pulumi.String(apimanagement.VersioningSchemeSegment),
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
/// import com.pulumi.azurenative.apimanagement.ApiVersionSet;
/// import com.pulumi.azurenative.apimanagement.ApiVersionSetArgs;
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
///         var apiVersionSet = new ApiVersionSet("apiVersionSet", ApiVersionSetArgs.builder()
///             .description("Version configuration")
///             .displayName("api set 1")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .versionSetId("api1")
///             .versioningScheme("Segment")
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
/// const apiVersionSet = new azure_native.apimanagement.ApiVersionSet("apiVersionSet", {
///     description: "Version configuration",
///     displayName: "api set 1",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     versionSetId: "api1",
///     versioningScheme: azure_native.apimanagement.VersioningScheme.Segment,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_version_set = azure_native.apimanagement.ApiVersionSet("apiVersionSet",
///     description="Version configuration",
///     display_name="api set 1",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     version_set_id="api1",
///     versioning_scheme=azure_native.apimanagement.VersioningScheme.SEGMENT)
///
/// ```
///
/// ```yaml
/// resources:
///   apiVersionSet:
///     type: azure-native:apimanagement:ApiVersionSet
///     properties:
///       description: Version configuration
///       displayName: api set 1
///       resourceGroupName: rg1
///       serviceName: apimService1
///       versionSetId: api1
///       versioningScheme: Segment
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
/// $ pulumi import azure-native:apimanagement:ApiVersionSet api1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apiVersionSets/{versionSetId}
/// ```
class ApiVersionSet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Description of API Version Set.
  late final pulumi.Output<String?> description;

  /// Name of API Version Set
  late final pulumi.Output<String> displayName;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Name of HTTP header parameter that indicates the API Version if versioningScheme is set to `header`.
  late final pulumi.Output<String?> versionHeaderName;

  /// Name of query parameter that indicates the API Version if versioningScheme is set to `query`.
  late final pulumi.Output<String?> versionQueryName;

  /// An value that determines where the API Version identifier will be located in a HTTP request.
  late final pulumi.Output<String> versioningScheme;

  /// Creates a new [ApiVersionSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiVersionSet]. {@macro pulumi_apimanagement_api_version_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiVersionSet(
    String name, {
    ApiVersionSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:ApiVersionSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    versionHeaderName = registerOutput<String?>('versionHeaderName');
    versionQueryName = registerOutput<String?>('versionQueryName');
    versioningScheme = registerOutput<String>('versioningScheme');
  }
}
