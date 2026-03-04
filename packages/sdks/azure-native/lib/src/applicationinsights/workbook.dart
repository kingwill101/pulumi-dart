import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workbook_args.dart';
import 'workbook_resource_response_identity.dart';

/// A workbook definition.
///
/// Uses Azure REST API version 2023-06-01.
///
/// Other available API versions: 2015-05-01, 2018-06-17-preview, 2020-10-20, 2021-03-08, 2021-08-01, 2022-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native applicationinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkbookAdd
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workbook = new AzureNative.ApplicationInsights.Workbook("workbook", new()
///     {
///         Category = "workbook",
///         Description = "Sample workbook",
///         DisplayName = "Sample workbook",
///         Kind = AzureNative.ApplicationInsights.WorkbookSharedTypeKind.Shared,
///         Location = "westus",
///         ResourceGroupName = "my-resource-group",
///         ResourceName = "deadb33f-5e0d-4064-8ebb-1a4ed0313eb2",
///         SerializedData = "{\"version\":\"Notebook/1.0\",\"items\":[{\"type\":1,\"content\":\"{\"json\":\"## New workbook\\r\\n---\\r\\n\\r\\nWelcome to your new workbook.  This area will display text formatted as markdown.\\r\\n\\r\\n\\r\\nWe've included a basic analytics query to get you started. Use the `Edit` button below each section to configure it or add more sections.\"}\",\"halfWidth\":null,\"conditionalVisibility\":null},{\"type\":3,\"content\":\"{\"version\":\"KqlItem/1.0\",\"query\":\"union withsource=TableName *\\n| summarize Count=count() by TableName\\n| render barchart\",\"showQuery\":false,\"size\":1,\"aggregation\":0,\"showAnnotations\":false}\",\"halfWidth\":null,\"conditionalVisibility\":null}],\"isLocked\":false}",
///         SourceId = "/subscriptions/6b643656-33eb-422f-aee8-3ac145d124af/resourcegroups/my-resource-group",
///         Tags =
///         {
///             { "TagSample01", "sample01" },
///             { "TagSample02", "sample02" },
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
/// 		_, err := applicationinsights.NewWorkbook(ctx, "workbook", &applicationinsights.WorkbookArgs{
/// 			Category:          pulumi.String("workbook"),
/// 			Description:       pulumi.String("Sample workbook"),
/// 			DisplayName:       pulumi.String("Sample workbook"),
/// 			Kind:              pulumi.String(applicationinsights.WorkbookSharedTypeKindShared),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 			ResourceName:      pulumi.String("deadb33f-5e0d-4064-8ebb-1a4ed0313eb2"),
/// 			SerializedData:    pulumi.String("{\"version\":\"Notebook/1.0\",\"items\":[{\"type\":1,\"content\":\"{\"json\":\"## New workbook\\r\\n---\\r\\n\\r\\nWelcome to your new workbook.  This area will display text formatted as markdown.\\r\\n\\r\\n\\r\\nWe've included a basic analytics query to get you started. Use the `Edit` button below each section to configure it or add more sections.\"}\",\"halfWidth\":null,\"conditionalVisibility\":null},{\"type\":3,\"content\":\"{\"version\":\"KqlItem/1.0\",\"query\":\"union withsource=TableName *\\n| summarize Count=count() by TableName\\n| render barchart\",\"showQuery\":false,\"size\":1,\"aggregation\":0,\"showAnnotations\":false}\",\"halfWidth\":null,\"conditionalVisibility\":null}],\"isLocked\":false}"),
/// 			SourceId:          pulumi.String("/subscriptions/6b643656-33eb-422f-aee8-3ac145d124af/resourcegroups/my-resource-group"),
/// 			Tags: pulumi.StringMap{
/// 				"TagSample01": pulumi.String("sample01"),
/// 				"TagSample02": pulumi.String("sample02"),
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
/// import com.pulumi.azurenative.applicationinsights.Workbook;
/// import com.pulumi.azurenative.applicationinsights.WorkbookArgs;
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
///         var workbook = new Workbook("workbook", WorkbookArgs.builder()
///             .category("workbook")
///             .description("Sample workbook")
///             .displayName("Sample workbook")
///             .kind("shared")
///             .location("westus")
///             .resourceGroupName("my-resource-group")
///             .resourceName("deadb33f-5e0d-4064-8ebb-1a4ed0313eb2")
///             .serializedData("{\"version\":\"Notebook/1.0\",\"items\":[{\"type\":1,\"content\":\"{\"json\":\"## New workbook\\r\\n---\\r\\n\\r\\nWelcome to your new workbook.  This area will display text formatted as markdown.\\r\\n\\r\\n\\r\\nWe've included a basic analytics query to get you started. Use the `Edit` button below each section to configure it or add more sections.\"}\",\"halfWidth\":null,\"conditionalVisibility\":null},{\"type\":3,\"content\":\"{\"version\":\"KqlItem/1.0\",\"query\":\"union withsource=TableName *\\n| summarize Count=count() by TableName\\n| render barchart\",\"showQuery\":false,\"size\":1,\"aggregation\":0,\"showAnnotations\":false}\",\"halfWidth\":null,\"conditionalVisibility\":null}],\"isLocked\":false}")
///             .sourceId("/subscriptions/6b643656-33eb-422f-aee8-3ac145d124af/resourcegroups/my-resource-group")
///             .tags(Map.ofEntries(
///                 Map.entry("TagSample01", "sample01"),
///                 Map.entry("TagSample02", "sample02")
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
/// const workbook = new azure_native.applicationinsights.Workbook("workbook", {
///     category: "workbook",
///     description: "Sample workbook",
///     displayName: "Sample workbook",
///     kind: azure_native.applicationinsights.WorkbookSharedTypeKind.Shared,
///     location: "westus",
///     resourceGroupName: "my-resource-group",
///     resourceName: "deadb33f-5e0d-4064-8ebb-1a4ed0313eb2",
///     serializedData: "{\"version\":\"Notebook/1.0\",\"items\":[{\"type\":1,\"content\":\"{\"json\":\"## New workbook\\r\\n---\\r\\n\\r\\nWelcome to your new workbook.  This area will display text formatted as markdown.\\r\\n\\r\\n\\r\\nWe've included a basic analytics query to get you started. Use the `Edit` button below each section to configure it or add more sections.\"}\",\"halfWidth\":null,\"conditionalVisibility\":null},{\"type\":3,\"content\":\"{\"version\":\"KqlItem/1.0\",\"query\":\"union withsource=TableName *\\n| summarize Count=count() by TableName\\n| render barchart\",\"showQuery\":false,\"size\":1,\"aggregation\":0,\"showAnnotations\":false}\",\"halfWidth\":null,\"conditionalVisibility\":null}],\"isLocked\":false}",
///     sourceId: "/subscriptions/6b643656-33eb-422f-aee8-3ac145d124af/resourcegroups/my-resource-group",
///     tags: {
///         TagSample01: "sample01",
///         TagSample02: "sample02",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workbook = azure_native.applicationinsights.Workbook("workbook",
///     category="workbook",
///     description="Sample workbook",
///     display_name="Sample workbook",
///     kind=azure_native.applicationinsights.WorkbookSharedTypeKind.SHARED,
///     location="westus",
///     resource_group_name="my-resource-group",
///     resource_name_="deadb33f-5e0d-4064-8ebb-1a4ed0313eb2",
///     serialized_data="{\"version\":\"Notebook/1.0\",\"items\":[{\"type\":1,\"content\":\"{\"json\":\"## New workbook\\r\\n---\\r\\n\\r\\nWelcome to your new workbook.  This area will display text formatted as markdown.\\r\\n\\r\\n\\r\\nWe've included a basic analytics query to get you started. Use the `Edit` button below each section to configure it or add more sections.\"}\",\"halfWidth\":null,\"conditionalVisibility\":null},{\"type\":3,\"content\":\"{\"version\":\"KqlItem/1.0\",\"query\":\"union withsource=TableName *\\n| summarize Count=count() by TableName\\n| render barchart\",\"showQuery\":false,\"size\":1,\"aggregation\":0,\"showAnnotations\":false}\",\"halfWidth\":null,\"conditionalVisibility\":null}],\"isLocked\":false}",
///     source_id="/subscriptions/6b643656-33eb-422f-aee8-3ac145d124af/resourcegroups/my-resource-group",
///     tags={
///         "TagSample01": "sample01",
///         "TagSample02": "sample02",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   workbook:
///     type: azure-native:applicationinsights:Workbook
///     properties:
///       category: workbook
///       description: Sample workbook
///       displayName: Sample workbook
///       kind: shared
///       location: westus
///       resourceGroupName: my-resource-group
///       resourceName: deadb33f-5e0d-4064-8ebb-1a4ed0313eb2
///       serializedData: '{"version":"Notebook/1.0","items":[{"type":1,"content":"{"json":"## New workbook\r\n---\r\n\r\nWelcome to your new workbook.  This area will display text formatted as markdown.\r\n\r\n\r\nWe''ve included a basic analytics query to get you started. Use the `Edit` button below each section to configure it or add more sections."}","halfWidth":null,"conditionalVisibility":null},{"type":3,"content":"{"version":"KqlItem/1.0","query":"union withsource=TableName *\n| summarize Count=count() by TableName\n| render barchart","showQuery":false,"size":1,"aggregation":0,"showAnnotations":false}","halfWidth":null,"conditionalVisibility":null}],"isLocked":false}'
///       sourceId: /subscriptions/6b643656-33eb-422f-aee8-3ac145d124af/resourcegroups/my-resource-group
///       tags:
///         TagSample01: sample01
///         TagSample02: sample02
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
/// $ pulumi import azure-native:applicationinsights:Workbook deadb33f-5e0d-4064-8ebb-1a4ed0313eb2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/workbooks/{resourceName}
/// ```
class Workbook extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Workbook category, as defined by the user at creation time.
  late final pulumi.Output<String> category;

  /// The description of the workbook.
  late final pulumi.Output<String?> description;

  /// The user-defined name (display name) of the workbook.
  late final pulumi.Output<String> displayName;

  /// Resource etag
  late final pulumi.Output<String?> etag;

  /// Identity used for BYOS
  late final pulumi.Output<WorkbookResourceResponseIdentity?> identity;

  /// The kind of workbook. Only valid value is shared.
  late final pulumi.Output<String?> kind;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The unique revision id for this workbook definition
  late final pulumi.Output<String> revision;

  /// Configuration of this particular workbook. Configuration data is a string containing valid JSON
  late final pulumi.Output<String> serializedData;

  /// ResourceId for a source resource.
  late final pulumi.Output<String?> sourceId;

  /// The resourceId to the storage account when bring your own storage is used
  late final pulumi.Output<String?> storageUri;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Date and time in UTC of the last modification that was made to this workbook definition.
  late final pulumi.Output<String> timeModified;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Unique user id of the specific user that owns this workbook.
  late final pulumi.Output<String> userId;

  /// Workbook schema version format, like 'Notebook/1.0', which should match the workbook in serializedData
  late final pulumi.Output<String?> version;

  /// Creates a new [Workbook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workbook]. {@macro pulumi_applicationinsights_workbook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workbook(
    String name, {
    WorkbookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:applicationinsights:Workbook',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    category = registerOutput<String>('category');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String?>('etag');
    identity = registerOutput<WorkbookResourceResponseIdentity?>('identity');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    revision = registerOutput<String>('revision');
    serializedData = registerOutput<String>('serializedData');
    sourceId = registerOutput<String?>('sourceId');
    storageUri = registerOutput<String?>('storageUri');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    timeModified = registerOutput<String>('timeModified');
    type = registerOutput<String>('type');
    userId = registerOutput<String>('userId');
    version = registerOutput<String?>('version');
  }
}
