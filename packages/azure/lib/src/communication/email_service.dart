import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_service_args.dart';

/// Manages an Email Communication Service.
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
/// const exampleEmailService = new azure.communication.EmailService("example", {
///     name: "example-emailcommunicationservice",
///     resourceGroupName: example.name,
///     dataLocation: "United States",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_email_service = azure.communication.EmailService("example",
///     name="example-emailcommunicationservice",
///     resource_group_name=example.name,
///     data_location="United States")
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
///     var exampleEmailService = new Azure.Communication.EmailService("example", new()
///     {
///         Name = "example-emailcommunicationservice",
///         ResourceGroupName = example.Name,
///         DataLocation = "United States",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/communication"
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
/// 		_, err = communication.NewEmailService(ctx, "example", &communication.EmailServiceArgs{
/// 			Name:              pulumi.String("example-emailcommunicationservice"),
/// 			ResourceGroupName: example.Name,
/// 			DataLocation:      pulumi.String("United States"),
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
/// import com.pulumi.azure.communication.EmailService;
/// import com.pulumi.azure.communication.EmailServiceArgs;
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
///         var exampleEmailService = new EmailService("exampleEmailService", EmailServiceArgs.builder()
///             .name("example-emailcommunicationservice")
///             .resourceGroupName(example.name())
///             .dataLocation("United States")
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
///   exampleEmailService:
///     type: azure:communication:EmailService
///     name: example
///     properties:
///       name: example-emailcommunicationservice
///       resourceGroupName: ${example.name}
///       dataLocation: United States
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Communication` - 2023-03-31
///
/// ## Import
///
/// Communication Services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:communication/emailService:EmailService example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Communication/emailServices/emailCommunicationService1
/// ```
class EmailService extends pulumi.CustomResource {
  /// The location where the Email Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK` `usgov` and `United States`. Changing this forces a new Email Communication Service to be created.
  late final pulumi.Output<String> dataLocation;
  /// The name of the Email Communication Service resource. Changing this forces a new Email Communication Service to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Email Communication Service should exist. Changing this forces a new Email Communication Service to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Email Communication Service.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [EmailService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailService]. {@macro pulumi_communication_email_service_email_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailService(
    String name, {
    EmailServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:communication/emailService:EmailService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataLocation = registerOutput<String>('dataLocation');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
