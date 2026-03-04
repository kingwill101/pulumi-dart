import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_aiargs.dart';
import 'open_aiintegration_properties_response.dart';

/// Capture properties of Open AI resource Integration.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2024-03-01.
///
/// Other available API versions: 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### OpenAI_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var openAI = new AzureNative.Elastic.OpenAI("openAI", new()
///     {
///         IntegrationName = "default",
///         MonitorName = "myMonitor",
///         ResourceGroupName = "myResourceGroup",
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
/// 	elastic "github.com/pulumi/pulumi-azure-native-sdk/elastic/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elastic.NewOpenAI(ctx, "openAI", &elastic.OpenAIArgs{
/// 			IntegrationName:   pulumi.String("default"),
/// 			MonitorName:       pulumi.String("myMonitor"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.elastic.OpenAI;
/// import com.pulumi.azurenative.elastic.OpenAIArgs;
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
///         var openAI = new OpenAI("openAI", OpenAIArgs.builder()
///             .integrationName("default")
///             .monitorName("myMonitor")
///             .resourceGroupName("myResourceGroup")
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
/// const openAI = new azure_native.elastic.OpenAI("openAI", {
///     integrationName: "default",
///     monitorName: "myMonitor",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// open_ai = azure_native.elastic.OpenAI("openAI",
///     integration_name="default",
///     monitor_name="myMonitor",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   openAI:
///     type: azure-native:elastic:OpenAI
///     properties:
///       integrationName: default
///       monitorName: myMonitor
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:elastic:OpenAI default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Elastic/monitors/{monitorName}/openAIIntegrations/{integrationName}
/// ```
class OpenAI extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Name of the integration.
  late final pulumi.Output<String> name;

  /// Open AI Integration details.
  late final pulumi.Output<OpenAIIntegrationPropertiesResponse> properties;

  /// The type of the integration.
  late final pulumi.Output<String> type;

  /// Creates a new [OpenAI].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OpenAI]. {@macro pulumi_elastic_open_aiargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  OpenAI(String name, {OpenAIArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:elastic:OpenAI',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<OpenAIIntegrationPropertiesResponse>(
      'properties',
    );
    type = registerOutput<String>('type');
  }
}
