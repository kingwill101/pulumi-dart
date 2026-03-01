import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_recipient_email_args.dart';

/// Manages a API Management Notification Recipient Email.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "My Company",
///     publisherEmail: "company@terraform.io",
///     skuName: "Developer_1",
/// });
/// const exampleNotificationRecipientEmail = new azure.apimanagement.NotificationRecipientEmail("example", {
///     apiManagementId: exampleService.id,
///     notificationType: "AccountClosedPublisher",
///     email: "foo@bar.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="My Company",
///     publisher_email="company@terraform.io",
///     sku_name="Developer_1")
/// example_notification_recipient_email = azure.apimanagement.NotificationRecipientEmail("example",
///     api_management_id=example_service.id,
///     notification_type="AccountClosedPublisher",
///     email="foo@bar.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "My Company",
///         PublisherEmail = "company@terraform.io",
///         SkuName = "Developer_1",
///     });
///
///     var exampleNotificationRecipientEmail = new Azure.ApiManagement.NotificationRecipientEmail("example", new()
///     {
///         ApiManagementId = exampleService.Id,
///         NotificationType = "AccountClosedPublisher",
///         Email = "foo@bar.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("My Company"),
/// 			PublisherEmail:    pulumi.String("company@terraform.io"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewNotificationRecipientEmail(ctx, "example", &apimanagement.NotificationRecipientEmailArgs{
/// 			ApiManagementId:  exampleService.ID(),
/// 			NotificationType: pulumi.String("AccountClosedPublisher"),
/// 			Email:            pulumi.String("foo@bar.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.apimanagement.NotificationRecipientEmail;
/// import com.pulumi.azure.apimanagement.NotificationRecipientEmailArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("My Company")
///             .publisherEmail("company@terraform.io")
///             .skuName("Developer_1")
///             .build());
///
///         var exampleNotificationRecipientEmail = new NotificationRecipientEmail("exampleNotificationRecipientEmail", NotificationRecipientEmailArgs.builder()
///             .apiManagementId(exampleService.id())
///             .notificationType("AccountClosedPublisher")
///             .email("foo@bar.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: My Company
///       publisherEmail: company@terraform.io
///       skuName: Developer_1
///   exampleNotificationRecipientEmail:
///     type: azure:apimanagement:NotificationRecipientEmail
///     name: example
///     properties:
///       apiManagementId: ${exampleService.id}
///       notificationType: AccountClosedPublisher
///       email: foo@bar.com
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management Notification Recipient Emails can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/notificationRecipientEmail:NotificationRecipientEmail example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/notifications/notificationName1/recipientEmails/email1
/// ```
class NotificationRecipientEmail extends pulumi.CustomResource {
  /// The ID of the API Management Service from which to create this Notification Recipient Email. Changing this forces a new API Management Notification Recipient Email to be created.
  late final pulumi.Output<String> apiManagementId;
  /// The recipient email address. Changing this forces a new API Management Notification Recipient Email to be created.
  late final pulumi.Output<String> email;
  /// The Notification Name to be received. Changing this forces a new API Management Notification Recipient Email to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`.
  late final pulumi.Output<String> notificationType;

  /// Creates a new [NotificationRecipientEmail].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationRecipientEmail]. {@macro pulumi_apimanagement_notification_recipient_email_notification_recipient_email_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationRecipientEmail(
    String name, {
    NotificationRecipientEmailArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/notificationRecipientEmail:NotificationRecipientEmail',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementId = registerOutput<String>('apiManagementId');
    this.email = registerOutput<String>('email');
    this.notificationType = registerOutput<String>('notificationType');
  }
}
