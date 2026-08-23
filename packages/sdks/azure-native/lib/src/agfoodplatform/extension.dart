import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_properties_response.dart';
import 'extension_args.dart';
import 'system_data_response.dart';

/// Extension resource.
///
/// Uses Azure REST API version 2023-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Extensions_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var extension = new AzureNative.AgFoodPlatform.Extension("extension", new()
///     {
///         DataManagerForAgricultureResourceName = "examples-dataManagerForAgricultureResourceName",
///         ExtensionId = "provider.extension",
///         ResourceGroupName = "examples-rg",
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
/// 	agfoodplatform "github.com/pulumi/pulumi-azure-native-sdk/agfoodplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agfoodplatform.NewExtension(ctx, "extension", &agfoodplatform.ExtensionArgs{
/// 			DataManagerForAgricultureResourceName: pulumi.String("examples-dataManagerForAgricultureResourceName"),
/// 			ExtensionId:                           pulumi.String("provider.extension"),
/// 			ResourceGroupName:                     pulumi.String("examples-rg"),
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
/// resource "azure-native_agfoodplatform_extension" "extension" {
///   data_manager_for_agriculture_resource_name = "examples-dataManagerForAgricultureResourceName"
///   extension_id                               = "provider.extension"
///   resource_group_name                        = "examples-rg"
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
/// import com.pulumi.azurenative.agfoodplatform.Extension;
/// import com.pulumi.azurenative.agfoodplatform.ExtensionArgs;
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
///         var extension = new Extension("extension", ExtensionArgs.builder()
///             .dataManagerForAgricultureResourceName("examples-dataManagerForAgricultureResourceName")
///             .extensionId("provider.extension")
///             .resourceGroupName("examples-rg")
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
/// const extension = new azure_native.agfoodplatform.Extension("extension", {
///     dataManagerForAgricultureResourceName: "examples-dataManagerForAgricultureResourceName",
///     extensionId: "provider.extension",
///     resourceGroupName: "examples-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// extension = azure_native.agfoodplatform.Extension("extension",
///     data_manager_for_agriculture_resource_name="examples-dataManagerForAgricultureResourceName",
///     extension_id="provider.extension",
///     resource_group_name="examples-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   extension:
///     type: azure-native:agfoodplatform:Extension
///     properties:
///       dataManagerForAgricultureResourceName: examples-dataManagerForAgricultureResourceName
///       extensionId: provider.extension
///       resourceGroupName: examples-rg
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
/// $ pulumi import azure-native:agfoodplatform:Extension provider.extension /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AgFoodPlatform/farmBeats/{dataManagerForAgricultureResourceName}/extensions/{extensionId}
/// ```
class Extension extends pulumi.CustomResource {
  /// Additional Api Properties.
  late final pulumi.Output<Map<String, ApiPropertiesResponse>> additionalApiProperties;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The ETag value to implement optimistic concurrency.
  late final pulumi.Output<String> eTag;
  /// Extension api docs link.
  late final pulumi.Output<String> extensionApiDocsLink;
  /// Extension auth link.
  late final pulumi.Output<String> extensionAuthLink;
  /// Extension category. e.g. weather/sensor/satellite.
  late final pulumi.Output<String> extensionCategory;
  /// Extension Id.
  late final pulumi.Output<String> extensionId;
  /// Installed extension version.
  late final pulumi.Output<String> installedExtensionVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Extension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Extension]. {@macro pulumi_agfoodplatform_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Extension(
    String name, {
    ExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:agfoodplatform:Extension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalApiProperties = registerOutput<Map<String, ApiPropertiesResponse>>('additionalApiProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ApiPropertiesResponse>(guardedValue, (value) => ApiPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    extensionApiDocsLink = registerOutput<String>('extensionApiDocsLink');
    extensionAuthLink = registerOutput<String>('extensionAuthLink');
    extensionCategory = registerOutput<String>('extensionCategory');
    extensionId = registerOutput<String>('extensionId');
    installedExtensionVersion = registerOutput<String>('installedExtensionVersion');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
