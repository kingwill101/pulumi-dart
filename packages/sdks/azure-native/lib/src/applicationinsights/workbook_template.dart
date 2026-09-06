import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workbook_template_args.dart';
import 'workbook_template_gallery_response.dart';
import 'workbook_template_localized_gallery_response.dart';

/// An Application Insights workbook template definition.
///
/// Uses Azure REST API version 2020-11-20.
///
/// Other available API versions: 2019-10-17-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native applicationinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkbookTemplateAdd
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workbookTemplate = new AzureNative.ApplicationInsights.WorkbookTemplate("workbookTemplate", new()
///     {
///         Author = "Contoso",
///         Galleries = new[]
///         {
///             new AzureNative.ApplicationInsights.Inputs.WorkbookTemplateGalleryArgs
///             {
///                 Category = "Failures",
///                 Name = "Simple Template",
///                 Order = 100,
///                 ResourceType = "microsoft.insights/components",
///                 Type = "tsg",
///             },
///         },
///         Location = "west us",
///         Priority = 1,
///         ResourceGroupName = "my-resource-group",
///         ResourceName = "testtemplate2",
///         TemplateData = new Dictionary<string, object?>
///         {
///             ["$schema"] = "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json",
///             ["items"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["content"] = new Dictionary<string, object?>
///                     {
///                         ["json"] = @"## New workbook
/// ---
///
/// Welcome to your new workbook.  This area will display text formatted as markdown.
///
///
/// We've included a basic analytics query to get you started. Use the `Edit` button below each section to configure it or add more sections.",
///                     },
///                     ["name"] = "text - 2",
///                     ["type"] = 1,
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["content"] = new Dictionary<string, object?>
///                     {
///                         ["exportToExcelOptions"] = "visible",
///                         ["query"] = @"union withsource=TableName *
/// | summarize Count=count() by TableName
/// | render barchart",
///                         ["queryType"] = 0,
///                         ["resourceType"] = "microsoft.operationalinsights/workspaces",
///                         ["size"] = 1,
///                         ["version"] = "KqlItem/1.0",
///                     },
///                     ["name"] = "query - 2",
///                     ["type"] = 3,
///                 },
///             },
///             ["styleSettings"] = new Dictionary<string, object?>
///             {
///             },
///             ["version"] = "Notebook/1.0",
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
/// 	applicationinsights "github.com/pulumi/pulumi-azure-native-sdk/applicationinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := applicationinsights.NewWorkbookTemplate(ctx, "workbookTemplate", &applicationinsights.WorkbookTemplateArgs{
/// 			Author: pulumi.String("Contoso"),
/// 			Galleries: applicationinsights.WorkbookTemplateGalleryArray{
/// 				&applicationinsights.WorkbookTemplateGalleryArgs{
/// 					Category:     pulumi.String("Failures"),
/// 					Name:         pulumi.String("Simple Template"),
/// 					Order:        pulumi.Int(100),
/// 					ResourceType: pulumi.String("microsoft.insights/components"),
/// 					Type:         pulumi.String("tsg"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("west us"),
/// 			Priority:          pulumi.Int(1),
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 			ResourceName:      pulumi.String("testtemplate2"),
/// 			TemplateData: pulumi.Any(map[string]interface{}{
/// 				"$schema": "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json",
/// 				"items": []interface{}{
/// 					map[string]interface{}{
/// 						"content": map[string]interface{}{
/// 							"json": "## New workbook\n---\n\nWelcome to your new workbook.  This area will display text formatted as markdown.\n\n\nWe've included a basic analytics query to get you started. Use the `Edit` button below each section to configure it or add more sections.",
/// 						},
/// 						"name": "text - 2",
/// 						"type": 1,
/// 					},
/// 					map[string]interface{}{
/// 						"content": map[string]interface{}{
/// 							"exportToExcelOptions": "visible",
/// 							"query":                "union withsource=TableName *\n| summarize Count=count() by TableName\n| render barchart",
/// 							"queryType":            0,
/// 							"resourceType":         "microsoft.operationalinsights/workspaces",
/// 							"size":                 1,
/// 							"version":              "KqlItem/1.0",
/// 						},
/// 						"name": "query - 2",
/// 						"type": 3,
/// 					},
/// 				},
/// 				"styleSettings": map[string]interface{}{},
/// 				"version":       "Notebook/1.0",
/// 			}),
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
/// resource "azure-native_applicationinsights_workbooktemplate" "workbookTemplate" {
///   author = "Contoso"
///   galleries {
///     category      = "Failures"
///     name          = "Simple Template"
///     order         = 100
///     resource_type = "microsoft.insights/components"
///     type          = "tsg"
///   }
///   location            = "west us"
///   priority            = 1
///   resource_group_name = "my-resource-group"
///   resource_name       = "testtemplate2"
///   template_data = {
///     "$schema" = "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json"
///     "items" = [{
///       "content" = {
///         "json" = "## New workbook\n---\n\nWelcome to your new workbook.  This area will display text formatted as markdown.\n\n\nWe've included a basic analytics query to get you started. Use the `Edit` button below each section to configure it or add more sections."
///       }
///       "name" = "text - 2"
///       "type" = 1
///       }, {
///       "content" = {
///         "exportToExcelOptions" = "visible"
///         "query"                = "union withsource=TableName *\n| summarize Count=count() by TableName\n| render barchart"
///         "queryType"            = 0
///         "resourceType"         = "microsoft.operationalinsights/workspaces"
///         "size"                 = 1
///         "version"              = "KqlItem/1.0"
///       }
///       "name" = "query - 2"
///       "type" = 3
///     }]
///     "styleSettings" = {}
///     "version"       = "Notebook/1.0"
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
/// import com.pulumi.azurenative.applicationinsights.WorkbookTemplate;
/// import com.pulumi.azurenative.applicationinsights.WorkbookTemplateArgs;
/// import com.pulumi.azurenative.applicationinsights.inputs.WorkbookTemplateGalleryArgs;
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
///         var workbookTemplate = new WorkbookTemplate("workbookTemplate", WorkbookTemplateArgs.builder()
///             .author("Contoso")
///             .galleries(WorkbookTemplateGalleryArgs.builder()
///                 .category("Failures")
///                 .name("Simple Template")
///                 .order(100)
///                 .resourceType("microsoft.insights/components")
///                 .type("tsg")
///                 .build())
///             .location("west us")
///             .priority(1)
///             .resourceGroupName("my-resource-group")
///             .resourceName("testtemplate2")
///             .templateData(Map.ofEntries(
///                 Map.entry("$schema", "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json"),
///                 Map.entry("items", Arrays.asList(
///                     Map.ofEntries(
///                         Map.entry("content", Map.of("json", """
/// ## New workbook
/// ---
///
/// Welcome to your new workbook.  This area will display text formatted as markdown.
///
///
/// We've included a basic analytics query to get you started. Use the `Edit` button below each section to configure it or add more sections.                        """)),
///                         Map.entry("name", "text - 2"),
///                         Map.entry("type", 1)
///                     ),
///                     Map.ofEntries(
///                         Map.entry("content", Map.ofEntries(
///                             Map.entry("exportToExcelOptions", "visible"),
///                             Map.entry("query", """
/// union withsource=TableName *
/// | summarize Count=count() by TableName
/// | render barchart                            """),
///                             Map.entry("queryType", 0),
///                             Map.entry("resourceType", "microsoft.operationalinsights/workspaces"),
///                             Map.entry("size", 1),
///                             Map.entry("version", "KqlItem/1.0")
///                         )),
///                         Map.entry("name", "query - 2"),
///                         Map.entry("type", 3)
///                     ))),
///                 Map.entry("styleSettings", Map.ofEntries(
///                 )),
///                 Map.entry("version", "Notebook/1.0")
///             ))
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
/// const workbookTemplate = new azure_native.applicationinsights.WorkbookTemplate("workbookTemplate", {
///     author: "Contoso",
///     galleries: [{
///         category: "Failures",
///         name: "Simple Template",
///         order: 100,
///         resourceType: "microsoft.insights/components",
///         type: "tsg",
///     }],
///     location: "west us",
///     priority: 1,
///     resourceGroupName: "my-resource-group",
///     resourceName: "testtemplate2",
///     templateData: {
///         $schema: "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json",
///         items: [
///             {
///                 content: {
///                     json: `## New workbook
/// ---
///
/// Welcome to your new workbook.  This area will display text formatted as markdown.
///
///
/// We've included a basic analytics query to get you started. Use the \`Edit\` button below each section to configure it or add more sections.`,
///                 },
///                 name: "text - 2",
///                 type: 1,
///             },
///             {
///                 content: {
///                     exportToExcelOptions: "visible",
///                     query: `union withsource=TableName *
/// | summarize Count=count() by TableName
/// | render barchart`,
///                     queryType: 0,
///                     resourceType: "microsoft.operationalinsights/workspaces",
///                     size: 1,
///                     version: "KqlItem/1.0",
///                 },
///                 name: "query - 2",
///                 type: 3,
///             },
///         ],
///         styleSettings: {},
///         version: "Notebook/1.0",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workbook_template = azure_native.applicationinsights.WorkbookTemplate("workbookTemplate",
///     author="Contoso",
///     galleries=[{
///         "category": "Failures",
///         "name": "Simple Template",
///         "order": 100,
///         "resource_type": "microsoft.insights/components",
///         "type": "tsg",
///     }],
///     location="west us",
///     priority=1,
///     resource_group_name="my-resource-group",
///     resource_name_="testtemplate2",
///     template_data={
///         "$schema": "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json",
///         "items": [
///             {
///                 "content": {
///                     "json": """## New workbook
/// ---
///
/// Welcome to your new workbook.  This area will display text formatted as markdown.
///
///
/// We've included a basic analytics query to get you started. Use the `Edit` button below each section to configure it or add more sections.""",
///                 },
///                 "name": "text - 2",
///                 "type": 1,
///             },
///             {
///                 "content": {
///                     "exportToExcelOptions": "visible",
///                     "query": """union withsource=TableName *
/// | summarize Count=count() by TableName
/// | render barchart""",
///                     "queryType": 0,
///                     "resourceType": "microsoft.operationalinsights/workspaces",
///                     "size": 1,
///                     "version": "KqlItem/1.0",
///                 },
///                 "name": "query - 2",
///                 "type": 3,
///             },
///         ],
///         "styleSettings": {},
///         "version": "Notebook/1.0",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   workbookTemplate:
///     type: azure-native:applicationinsights:WorkbookTemplate
///     properties:
///       author: Contoso
///       galleries:
///         - category: Failures
///           name: Simple Template
///           order: 100
///           resourceType: microsoft.insights/components
///           type: tsg
///       location: west us
///       priority: 1
///       resourceGroupName: my-resource-group
///       resourceName: testtemplate2
///       templateData:
///         $schema: https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json
///         items:
///           - content:
///               json: |-
///                 ## New workbook
///                 ---
///
///                 Welcome to your new workbook.  This area will display text formatted as markdown.
///
///
///                 We've included a basic analytics query to get you started. Use the `Edit` button below each section to configure it or add more sections.
///             name: text - 2
///             type: 1
///           - content:
///               exportToExcelOptions: visible
///               query: |-
///                 union withsource=TableName *
///                 | summarize Count=count() by TableName
///                 | render barchart
///               queryType: 0
///               resourceType: microsoft.operationalinsights/workspaces
///               size: 1
///               version: KqlItem/1.0
///             name: query - 2
///             type: 3
///         styleSettings: {}
///         version: Notebook/1.0
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
/// $ pulumi import azure-native:applicationinsights:WorkbookTemplate testtemplate2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/workbooktemplates/{resourceName}
/// ```
class WorkbookTemplate extends pulumi.CustomResource {
  /// Information about the author of the workbook template.
  late final pulumi.Output<String?> author;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Workbook galleries supported by the template.
  late final pulumi.Output<List<WorkbookTemplateGalleryResponse>> galleries;
  /// Key value pair of localized gallery. Each key is the locale code of languages supported by the Azure portal.
  late final pulumi.Output<Map<String, List<WorkbookTemplateLocalizedGalleryResponse>>?> localized;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Priority of the template. Determines which template to open when a workbook gallery is opened in viewer mode.
  late final pulumi.Output<int?> priority;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Valid JSON object containing workbook template payload.
  late final pulumi.Output<dynamic> templateData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkbookTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkbookTemplate]. {@macro pulumi_applicationinsights_workbook_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkbookTemplate(
    String name, {
    WorkbookTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:applicationinsights:WorkbookTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    author = registerOutput<String?>('author');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    galleries = registerOutput<List<WorkbookTemplateGalleryResponse>>('galleries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkbookTemplateGalleryResponse>(guardedValue, (value) => WorkbookTemplateGalleryResponse.fromMap((value as Map).cast<String, dynamic>())); });
    localized = registerOutput<Map<String, List<WorkbookTemplateLocalizedGalleryResponse>>?>('localized', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<WorkbookTemplateLocalizedGalleryResponse>>(guardedValue, (value) => pulumi.Input.decodeList<WorkbookTemplateLocalizedGalleryResponse>(value, (value) => WorkbookTemplateLocalizedGalleryResponse.fromMap((value as Map).cast<String, dynamic>()))); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    templateData = registerOutput<dynamic>('templateData');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WorkbookTemplate] resource.
  WorkbookTemplate.reference(String urn)
    : super(
        'azure-native:applicationinsights:WorkbookTemplate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    author = registerOutput<String?>('author');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    galleries = registerOutput<List<WorkbookTemplateGalleryResponse>>('galleries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkbookTemplateGalleryResponse>(guardedValue, (value) => WorkbookTemplateGalleryResponse.fromMap((value as Map).cast<String, dynamic>())); });
    localized = registerOutput<Map<String, List<WorkbookTemplateLocalizedGalleryResponse>>?>('localized', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<WorkbookTemplateLocalizedGalleryResponse>>(guardedValue, (value) => pulumi.Input.decodeList<WorkbookTemplateLocalizedGalleryResponse>(value, (value) => WorkbookTemplateLocalizedGalleryResponse.fromMap((value as Map).cast<String, dynamic>()))); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    templateData = registerOutput<dynamic>('templateData');
    type = registerOutput<String>('type');
  }
}
