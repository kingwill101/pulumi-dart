import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_template_args.dart';

/// Email Template details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateTemplate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var emailTemplate = new AzureNative.ApiManagement.EmailTemplate("emailTemplate", new()
///     {
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Subject = "Your request for $IssueName was successfully received.",
///         TemplateName = "newIssueNotificationMessage",
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
/// 		_, err := apimanagement.NewEmailTemplate(ctx, "emailTemplate", &apimanagement.EmailTemplateArgs{
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Subject:           pulumi.String("Your request for $IssueName was successfully received."),
/// 			TemplateName:      pulumi.String("newIssueNotificationMessage"),
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
/// resource "azure-native_apimanagement_emailtemplate" "emailTemplate" {
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   subject             = "Your request for $IssueName was successfully received."
///   template_name       = "newIssueNotificationMessage"
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
/// import com.pulumi.azurenative.apimanagement.EmailTemplate;
/// import com.pulumi.azurenative.apimanagement.EmailTemplateArgs;
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
///         var emailTemplate = new EmailTemplate("emailTemplate", EmailTemplateArgs.builder()
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .subject("Your request for $IssueName was successfully received.")
///             .templateName("newIssueNotificationMessage")
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
/// const emailTemplate = new azure_native.apimanagement.EmailTemplate("emailTemplate", {
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     subject: "Your request for $IssueName was successfully received.",
///     templateName: "newIssueNotificationMessage",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// email_template = azure_native.apimanagement.EmailTemplate("emailTemplate",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     subject="Your request for $IssueName was successfully received.",
///     template_name="newIssueNotificationMessage")
///
/// ```
///
/// ```yaml
/// resources:
///   emailTemplate:
///     type: azure-native:apimanagement:EmailTemplate
///     properties:
///       resourceGroupName: rg1
///       serviceName: apimService1
///       subject: Your request for $IssueName was successfully received.
///       templateName: newIssueNotificationMessage
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
/// $ pulumi import azure-native:apimanagement:EmailTemplate NewIssueNotificationMessage /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/templates/{templateName}
/// ```
class EmailTemplate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Email Template Body. This should be a valid XDocument
  late final pulumi.Output<String> body;
  /// Description of the Email Template.
  late final pulumi.Output<String?> description;
  /// Whether the template is the default template provided by API Management or has been edited.
  late final pulumi.Output<bool> isDefault;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Email Template Parameter values.
  late final pulumi.Output<List<Map<String, dynamic>>?> parameters;
  /// Subject of the Template.
  late final pulumi.Output<String> subject;
  /// Title of the Template.
  late final pulumi.Output<String?> title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EmailTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailTemplate]. {@macro pulumi_apimanagement_email_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailTemplate(
    String name, {
    EmailTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:EmailTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    body = registerOutput<String>('body');
    description = registerOutput<String?>('description');
    isDefault = registerOutput<bool>('isDefault');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    subject = registerOutput<String>('subject');
    title = registerOutput<String?>('title');
    type = registerOutput<String>('type');
  }
}
