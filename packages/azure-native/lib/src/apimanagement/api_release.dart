import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_release_args.dart';

/// ApiRelease details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateApiRelease
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiRelease = new AzureNative.ApiManagement.ApiRelease("apiRelease", new()
///     {
///         ApiId = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/a1",
///         Notes = "yahooagain",
///         ReleaseId = "testrev",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
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
/// 		_, err := apimanagement.NewApiRelease(ctx, "apiRelease", &apimanagement.ApiReleaseArgs{
/// 			ApiId:             pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/a1"),
/// 			Notes:             pulumi.String("yahooagain"),
/// 			ReleaseId:         pulumi.String("testrev"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
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
/// import com.pulumi.azurenative.apimanagement.ApiRelease;
/// import com.pulumi.azurenative.apimanagement.ApiReleaseArgs;
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
///         var apiRelease = new ApiRelease("apiRelease", ApiReleaseArgs.builder()
///             .apiId("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/a1")
///             .notes("yahooagain")
///             .releaseId("testrev")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
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
/// const apiRelease = new azure_native.apimanagement.ApiRelease("apiRelease", {
///     apiId: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/a1",
///     notes: "yahooagain",
///     releaseId: "testrev",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_release = azure_native.apimanagement.ApiRelease("apiRelease",
///     api_id="/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/a1",
///     notes="yahooagain",
///     release_id="testrev",
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   apiRelease:
///     type: azure-native:apimanagement:ApiRelease
///     properties:
///       apiId: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/a1
///       notes: yahooagain
///       releaseId: testrev
///       resourceGroupName: rg1
///       serviceName: apimService1
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
/// $ pulumi import azure-native:apimanagement:ApiRelease testrev /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/releases/{releaseId}
/// ```
class ApiRelease extends pulumi.CustomResource {
  /// Identifier of the API the release belongs to.
  late final pulumi.Output<String?> apiId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The time the API was released. The date conforms to the following format: yyyy-MM-ddTHH:mm:ssZ as specified by the ISO 8601 standard.
  late final pulumi.Output<String> createdDateTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Release Notes
  late final pulumi.Output<String?> notes;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The time the API release was updated.
  late final pulumi.Output<String> updatedDateTime;

  /// Creates a new [ApiRelease].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiRelease]. {@macro pulumi_apimanagement_api_release_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiRelease(
    String name, {
    ApiReleaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:ApiRelease',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String?>('apiId');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.createdDateTime = registerOutput<String>('createdDateTime');
    this.name = registerOutput<String>('name');
    this.notes = registerOutput<String?>('notes');
    this.type = registerOutput<String>('type');
    this.updatedDateTime = registerOutput<String>('updatedDateTime');
  }
}
