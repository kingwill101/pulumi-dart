import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_version_args.dart';
import 'system_data_response.dart';

/// API version entity.
///
/// Uses Azure REST API version 2024-03-15-preview. In version 2.x of the Azure Native provider, it used API version 2024-03-01.
///
/// Other available API versions: 2024-03-01, 2024-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apicenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiVersions_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiVersion = new AzureNative.ApiCenter.ApiVersion("apiVersion", new()
///     {
///         ApiName = "echo-api",
///         LifecycleStage = AzureNative.ApiCenter.LifecycleStage.Production,
///         ResourceGroupName = "contoso-resources",
///         ServiceName = "contoso",
///         Title = "2023-01-01",
///         VersionName = "2023-01-01",
///         WorkspaceName = "default",
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
/// 	apicenter "github.com/pulumi/pulumi-azure-native-sdk/apicenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apicenter.NewApiVersion(ctx, "apiVersion", &apicenter.ApiVersionArgs{
/// 			ApiName:           pulumi.String("echo-api"),
/// 			LifecycleStage:    pulumi.String(apicenter.LifecycleStageProduction),
/// 			ResourceGroupName: pulumi.String("contoso-resources"),
/// 			ServiceName:       pulumi.String("contoso"),
/// 			Title:             pulumi.String("2023-01-01"),
/// 			VersionName:       pulumi.String("2023-01-01"),
/// 			WorkspaceName:     pulumi.String("default"),
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
/// resource "azure-native_apicenter_apiversion" "apiVersion" {
///   api_name            = "echo-api"
///   lifecycle_stage     = "production"
///   resource_group_name = "contoso-resources"
///   service_name        = "contoso"
///   title               = "2023-01-01"
///   version_name        = "2023-01-01"
///   workspace_name      = "default"
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
/// import com.pulumi.azurenative.apicenter.ApiVersion;
/// import com.pulumi.azurenative.apicenter.ApiVersionArgs;
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
///         var apiVersion = new ApiVersion("apiVersion", ApiVersionArgs.builder()
///             .apiName("echo-api")
///             .lifecycleStage("production")
///             .resourceGroupName("contoso-resources")
///             .serviceName("contoso")
///             .title("2023-01-01")
///             .versionName("2023-01-01")
///             .workspaceName("default")
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
/// const apiVersion = new azure_native.apicenter.ApiVersion("apiVersion", {
///     apiName: "echo-api",
///     lifecycleStage: azure_native.apicenter.LifecycleStage.Production,
///     resourceGroupName: "contoso-resources",
///     serviceName: "contoso",
///     title: "2023-01-01",
///     versionName: "2023-01-01",
///     workspaceName: "default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_version = azure_native.apicenter.ApiVersion("apiVersion",
///     api_name="echo-api",
///     lifecycle_stage=azure_native.apicenter.LifecycleStage.PRODUCTION,
///     resource_group_name="contoso-resources",
///     service_name="contoso",
///     title="2023-01-01",
///     version_name="2023-01-01",
///     workspace_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   apiVersion:
///     type: azure-native:apicenter:ApiVersion
///     properties:
///       apiName: echo-api
///       lifecycleStage: production
///       resourceGroupName: contoso-resources
///       serviceName: contoso
///       title: 2023-01-01
///       versionName: 2023-01-01
///       workspaceName: default
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
/// $ pulumi import azure-native:apicenter:ApiVersion 2023-01-01 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiCenter/services/{serviceName}/workspaces/{workspaceName}/apis/{apiName}/versions/{versionName}
/// ```
class ApiVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Current lifecycle stage of the API.
  late final pulumi.Output<String> lifecycleStage;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// API version title.
  late final pulumi.Output<String> title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ApiVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiVersion]. {@macro pulumi_apicenter_api_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiVersion(
    String name, {
    ApiVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apicenter:ApiVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    lifecycleStage = registerOutput<String>('lifecycleStage');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    title = registerOutput<String>('title');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ApiVersion] resource.
  ApiVersion.reference(String urn)
    : super(
        'azure-native:apicenter:ApiVersion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    lifecycleStage = registerOutput<String>('lifecycleStage');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    title = registerOutput<String>('title');
    type = registerOutput<String>('type');
  }
}
