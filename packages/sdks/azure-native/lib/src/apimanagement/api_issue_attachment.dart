import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_issue_attachment_args.dart';

/// Issue Attachment Contract details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateApiIssueAttachment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiIssueAttachment = new AzureNative.ApiManagement.ApiIssueAttachment("apiIssueAttachment", new()
///     {
///         ApiId = "57d1f7558aa04f15146d9d8a",
///         AttachmentId = "57d2ef278aa04f0888cba3f3",
///         Content = "IEJhc2U2NA==",
///         ContentFormat = "image/jpeg",
///         IssueId = "57d2ef278aa04f0ad01d6cdc",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Title = "Issue attachment.",
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
/// 		_, err := apimanagement.NewApiIssueAttachment(ctx, "apiIssueAttachment", &apimanagement.ApiIssueAttachmentArgs{
/// 			ApiId:             pulumi.String("57d1f7558aa04f15146d9d8a"),
/// 			AttachmentId:      pulumi.String("57d2ef278aa04f0888cba3f3"),
/// 			Content:           pulumi.String("IEJhc2U2NA=="),
/// 			ContentFormat:     pulumi.String("image/jpeg"),
/// 			IssueId:           pulumi.String("57d2ef278aa04f0ad01d6cdc"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Title:             pulumi.String("Issue attachment."),
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
/// import com.pulumi.azurenative.apimanagement.ApiIssueAttachment;
/// import com.pulumi.azurenative.apimanagement.ApiIssueAttachmentArgs;
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
///         var apiIssueAttachment = new ApiIssueAttachment("apiIssueAttachment", ApiIssueAttachmentArgs.builder()
///             .apiId("57d1f7558aa04f15146d9d8a")
///             .attachmentId("57d2ef278aa04f0888cba3f3")
///             .content("IEJhc2U2NA==")
///             .contentFormat("image/jpeg")
///             .issueId("57d2ef278aa04f0ad01d6cdc")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .title("Issue attachment.")
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
/// const apiIssueAttachment = new azure_native.apimanagement.ApiIssueAttachment("apiIssueAttachment", {
///     apiId: "57d1f7558aa04f15146d9d8a",
///     attachmentId: "57d2ef278aa04f0888cba3f3",
///     content: "IEJhc2U2NA==",
///     contentFormat: "image/jpeg",
///     issueId: "57d2ef278aa04f0ad01d6cdc",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     title: "Issue attachment.",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_issue_attachment = azure_native.apimanagement.ApiIssueAttachment("apiIssueAttachment",
///     api_id="57d1f7558aa04f15146d9d8a",
///     attachment_id="57d2ef278aa04f0888cba3f3",
///     content="IEJhc2U2NA==",
///     content_format="image/jpeg",
///     issue_id="57d2ef278aa04f0ad01d6cdc",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     title="Issue attachment.")
///
/// ```
///
/// ```yaml
/// resources:
///   apiIssueAttachment:
///     type: azure-native:apimanagement:ApiIssueAttachment
///     properties:
///       apiId: 57d1f7558aa04f15146d9d8a
///       attachmentId: 57d2ef278aa04f0888cba3f3
///       content: IEJhc2U2NA==
///       contentFormat: image/jpeg
///       issueId: 57d2ef278aa04f0ad01d6cdc
///       resourceGroupName: rg1
///       serviceName: apimService1
///       title: Issue attachment.
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
/// $ pulumi import azure-native:apimanagement:ApiIssueAttachment 57d2ef278aa04f0888cba3f3 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/issues/{issueId}/attachments/{attachmentId}
/// ```
class ApiIssueAttachment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// An HTTP link or Base64-encoded binary data.
  late final pulumi.Output<String> content;
  /// Either 'link' if content is provided via an HTTP link or the MIME type of the Base64-encoded binary data provided in the 'content' property.
  late final pulumi.Output<String> contentFormat;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Filename by which the binary data will be saved.
  late final pulumi.Output<String> title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ApiIssueAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiIssueAttachment]. {@macro pulumi_apimanagement_api_issue_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiIssueAttachment(
    String name, {
    ApiIssueAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:ApiIssueAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.content = registerOutput<String>('content');
    this.contentFormat = registerOutput<String>('contentFormat');
    this.name = registerOutput<String>('name');
    this.title = registerOutput<String>('title');
    this.type = registerOutput<String>('type');
  }
}
