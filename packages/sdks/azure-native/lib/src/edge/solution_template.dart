import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution_template_args.dart';
import 'solution_template_properties_response.dart';
import 'system_data_response.dart';

/// Solution Template Resource. Contains capabilities and operations for creating versions.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-08-01, 2025-08-15-preview, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SolutionTemplates_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var solutionTemplate = new AzureNative.Edge.SolutionTemplate("solutionTemplate", new()
///     {
///         Location = "zheaaqvadewftnctxzpinrgeproqs",
///         Properties = new AzureNative.Edge.Inputs.SolutionTemplatePropertiesArgs
///         {
///             Capabilities = new[]
///             {
///                 "dfoyxbbknrhvlunhmuyyt",
///             },
///             Description = "psrftehgzngcdlccivhjmwsmiz",
///             EnableExternalValidation = true,
///             State = AzureNative.Edge.ResourceState.Active,
///         },
///         ResourceGroupName = "rgconfigurationmanager",
///         SolutionTemplateName = "testname",
///         Tags =
///         {
///             { "key5091", "dov" },
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
/// 		_, err := edge.NewSolutionTemplate(ctx, "solutionTemplate", &edge.SolutionTemplateArgs{
/// 			Location: pulumi.String("zheaaqvadewftnctxzpinrgeproqs"),
/// 			Properties: &edge.SolutionTemplatePropertiesArgs{
/// 				Capabilities: pulumi.StringArray{
/// 					pulumi.String("dfoyxbbknrhvlunhmuyyt"),
/// 				},
/// 				Description:              pulumi.String("psrftehgzngcdlccivhjmwsmiz"),
/// 				EnableExternalValidation: pulumi.Bool(true),
/// 				State:                    pulumi.String(edge.ResourceStateActive),
/// 			},
/// 			ResourceGroupName:    pulumi.String("rgconfigurationmanager"),
/// 			SolutionTemplateName: pulumi.String("testname"),
/// 			Tags: pulumi.StringMap{
/// 				"key5091": pulumi.String("dov"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_edge_solutiontemplate" "solutionTemplate" {
///   location = "zheaaqvadewftnctxzpinrgeproqs"
///   properties = {
///     capabilities               = ["dfoyxbbknrhvlunhmuyyt"]
///     description                = "psrftehgzngcdlccivhjmwsmiz"
///     enable_external_validation = true
///     state                      = "active"
///   }
///   resource_group_name    = "rgconfigurationmanager"
///   solution_template_name = "testname"
///   tags = {
///     "key5091" = "dov"
///   }
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
/// import com.pulumi.azurenative.edge.SolutionTemplate;
/// import com.pulumi.azurenative.edge.SolutionTemplateArgs;
/// import com.pulumi.azurenative.edge.inputs.SolutionTemplatePropertiesArgs;
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
///         var solutionTemplate = new SolutionTemplate("solutionTemplate", SolutionTemplateArgs.builder()
///             .location("zheaaqvadewftnctxzpinrgeproqs")
///             .properties(SolutionTemplatePropertiesArgs.builder()
///                 .capabilities("dfoyxbbknrhvlunhmuyyt")
///                 .description("psrftehgzngcdlccivhjmwsmiz")
///                 .enableExternalValidation(true)
///                 .state("active")
///                 .build())
///             .resourceGroupName("rgconfigurationmanager")
///             .solutionTemplateName("testname")
///             .tags(Map.of("key5091", "dov"))
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
/// const solutionTemplate = new azure_native.edge.SolutionTemplate("solutionTemplate", {
///     location: "zheaaqvadewftnctxzpinrgeproqs",
///     properties: {
///         capabilities: ["dfoyxbbknrhvlunhmuyyt"],
///         description: "psrftehgzngcdlccivhjmwsmiz",
///         enableExternalValidation: true,
///         state: azure_native.edge.ResourceState.Active,
///     },
///     resourceGroupName: "rgconfigurationmanager",
///     solutionTemplateName: "testname",
///     tags: {
///         key5091: "dov",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// solution_template = azure_native.edge.SolutionTemplate("solutionTemplate",
///     location="zheaaqvadewftnctxzpinrgeproqs",
///     properties={
///         "capabilities": ["dfoyxbbknrhvlunhmuyyt"],
///         "description": "psrftehgzngcdlccivhjmwsmiz",
///         "enable_external_validation": True,
///         "state": azure_native.edge.ResourceState.ACTIVE,
///     },
///     resource_group_name="rgconfigurationmanager",
///     solution_template_name="testname",
///     tags={
///         "key5091": "dov",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   solutionTemplate:
///     type: azure-native:edge:SolutionTemplate
///     properties:
///       location: zheaaqvadewftnctxzpinrgeproqs
///       properties:
///         capabilities:
///           - dfoyxbbknrhvlunhmuyyt
///         description: psrftehgzngcdlccivhjmwsmiz
///         enableExternalValidation: true
///         state: active
///       resourceGroupName: rgconfigurationmanager
///       solutionTemplateName: testname
///       tags:
///         key5091: dov
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
/// $ pulumi import azure-native:edge:SolutionTemplate hhmslfrwpuvrjr /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/solutionTemplates/{solutionTemplateName}
/// ```
class SolutionTemplate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SolutionTemplatePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SolutionTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SolutionTemplate]. {@macro pulumi_edge_solution_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SolutionTemplate(
    String name, {
    SolutionTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:edge:SolutionTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SolutionTemplatePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SolutionTemplatePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [SolutionTemplate] resource.
  SolutionTemplate.reference(String urn)
    : super(
        'azure-native:edge:SolutionTemplate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SolutionTemplatePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SolutionTemplatePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
