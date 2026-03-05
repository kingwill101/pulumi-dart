import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_template_args.dart';
import 'config_template_properties_response.dart';
import 'system_data_response.dart';

/// Config Template Resource. Contains configuration expressions using the predefined expression language.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfigTemplates_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configTemplate = new AzureNative.Edge.ConfigTemplate("configTemplate", new()
///     {
///         ConfigTemplateName = "testname",
///         Location = "egqjo",
///         Properties = new AzureNative.Edge.Inputs.ConfigTemplatePropertiesArgs
///         {
///             Description = "ccdyggozwmhyvemlcwlsnhijwg",
///         },
///         ResourceGroupName = "rgconfigurationmanager",
///         Tags =
///         {
///             { "key6936", "vnqujuvnbxonbsgb" },
///         },
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
/// 	edge "github.com/pulumi/pulumi-azure-native-sdk/edge/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := edge.NewConfigTemplate(ctx, "configTemplate", &edge.ConfigTemplateArgs{
/// 			ConfigTemplateName: pulumi.String("testname"),
/// 			Location:           pulumi.String("egqjo"),
/// 			Properties: &edge.ConfigTemplatePropertiesArgs{
/// 				Description: pulumi.String("ccdyggozwmhyvemlcwlsnhijwg"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgconfigurationmanager"),
/// 			Tags: pulumi.StringMap{
/// 				"key6936": pulumi.String("vnqujuvnbxonbsgb"),
/// 			},
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
/// import com.pulumi.azurenative.edge.ConfigTemplate;
/// import com.pulumi.azurenative.edge.ConfigTemplateArgs;
/// import com.pulumi.azurenative.edge.inputs.ConfigTemplatePropertiesArgs;
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
///         var configTemplate = new ConfigTemplate("configTemplate", ConfigTemplateArgs.builder()
///             .configTemplateName("testname")
///             .location("egqjo")
///             .properties(ConfigTemplatePropertiesArgs.builder()
///                 .description("ccdyggozwmhyvemlcwlsnhijwg")
///                 .build())
///             .resourceGroupName("rgconfigurationmanager")
///             .tags(Map.of("key6936", "vnqujuvnbxonbsgb"))
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
/// const configTemplate = new azure_native.edge.ConfigTemplate("configTemplate", {
///     configTemplateName: "testname",
///     location: "egqjo",
///     properties: {
///         description: "ccdyggozwmhyvemlcwlsnhijwg",
///     },
///     resourceGroupName: "rgconfigurationmanager",
///     tags: {
///         key6936: "vnqujuvnbxonbsgb",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// config_template = azure_native.edge.ConfigTemplate("configTemplate",
///     config_template_name="testname",
///     location="egqjo",
///     properties={
///         "description": "ccdyggozwmhyvemlcwlsnhijwg",
///     },
///     resource_group_name="rgconfigurationmanager",
///     tags={
///         "key6936": "vnqujuvnbxonbsgb",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   configTemplate:
///     type: azure-native:edge:ConfigTemplate
///     properties:
///       configTemplateName: testname
///       location: egqjo
///       properties:
///         description: ccdyggozwmhyvemlcwlsnhijwg
///       resourceGroupName: rgconfigurationmanager
///       tags:
///         key6936: vnqujuvnbxonbsgb
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
/// $ pulumi import azure-native:edge:ConfigTemplate fmndkjemwjt /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/configTemplates/{configTemplateName}
/// ```
class ConfigTemplate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<ConfigTemplatePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConfigTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigTemplate]. {@macro pulumi_edge_config_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigTemplate(
    String name, {
    ConfigTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:edge:ConfigTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConfigTemplatePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigTemplatePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
