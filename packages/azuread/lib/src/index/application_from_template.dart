import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_from_template_args.dart';

/// Creates an application registration and associated service principal from a gallery template.
///
/// > The azuread.Application resource can also be used to instantiate a gallery application, however unlike the `azuread.Application` resource, this resource does not attempt to manage any properties of the resulting application.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`
///
/// When authenticated with a user principal, this resource may require one of the following directory roles: `Application Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getApplicationTemplate({
///     displayName: "Marketo",
/// });
/// const exampleApplicationFromTemplate = new azuread.ApplicationFromTemplate("example", {
///     displayName: "Example Application",
///     templateId: example.then(example => example.templateId),
/// });
/// const exampleGetApplication = azuread.getApplicationOutput({
///     objectId: exampleApplicationFromTemplate.applicationObjectId,
/// });
/// const exampleGetServicePrincipal = azuread.getServicePrincipalOutput({
///     objectId: exampleApplicationFromTemplate.servicePrincipalObjectId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_application_template(display_name="Marketo")
/// example_application_from_template = azuread.ApplicationFromTemplate("example",
///     display_name="Example Application",
///     template_id=example.template_id)
/// example_get_application = azuread.get_application_output(object_id=example_application_from_template.application_object_id)
/// example_get_service_principal = azuread.get_service_principal_output(object_id=example_application_from_template.service_principal_object_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetApplicationTemplate.Invoke(new()
///     {
///         DisplayName = "Marketo",
///     });
///
///     var exampleApplicationFromTemplate = new AzureAD.ApplicationFromTemplate("example", new()
///     {
///         DisplayName = "Example Application",
///         TemplateId = example.Apply(getApplicationTemplateResult => getApplicationTemplateResult.TemplateId),
///     });
///
///     var exampleGetApplication = AzureAD.GetApplication.Invoke(new()
///     {
///         ObjectId = exampleApplicationFromTemplate.ApplicationObjectId,
///     });
///
///     var exampleGetServicePrincipal = AzureAD.GetServicePrincipal.Invoke(new()
///     {
///         ObjectId = exampleApplicationFromTemplate.ServicePrincipalObjectId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := azuread.GetApplicationTemplate(ctx, &azuread.GetApplicationTemplateArgs{
/// 			DisplayName: pulumi.StringRef("Marketo"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApplicationFromTemplate, err := azuread.NewApplicationFromTemplate(ctx, "example", &azuread.ApplicationFromTemplateArgs{
/// 			DisplayName: pulumi.String("Example Application"),
/// 			TemplateId:  pulumi.String(example.TemplateId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = azuread.LookupApplicationOutput(ctx, azuread.GetApplicationOutputArgs{
/// 			ObjectId: exampleApplicationFromTemplate.ApplicationObjectId,
/// 		}, nil)
/// 		_ = azuread.LookupServicePrincipalOutput(ctx, azuread.GetServicePrincipalOutputArgs{
/// 			ObjectId: exampleApplicationFromTemplate.ServicePrincipalObjectId,
/// 		}, nil)
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
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.inputs.GetApplicationTemplateArgs;
/// import com.pulumi.azuread.ApplicationFromTemplate;
/// import com.pulumi.azuread.ApplicationFromTemplateArgs;
/// import com.pulumi.azuread.inputs.GetApplicationArgs;
/// import com.pulumi.azuread.inputs.GetServicePrincipalArgs;
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
///         final var example = AzureadFunctions.getApplicationTemplate(GetApplicationTemplateArgs.builder()
///             .displayName("Marketo")
///             .build());
///
///         var exampleApplicationFromTemplate = new ApplicationFromTemplate("exampleApplicationFromTemplate", ApplicationFromTemplateArgs.builder()
///             .displayName("Example Application")
///             .templateId(example.templateId())
///             .build());
///
///         final var exampleGetApplication = AzureadFunctions.getApplication(GetApplicationArgs.builder()
///             .objectId(exampleApplicationFromTemplate.applicationObjectId())
///             .build());
///
///         final var exampleGetServicePrincipal = AzureadFunctions.getServicePrincipal(GetServicePrincipalArgs.builder()
///             .objectId(exampleApplicationFromTemplate.servicePrincipalObjectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleApplicationFromTemplate:
///     type: azuread:ApplicationFromTemplate
///     name: example
///     properties:
///       displayName: Example Application
///       templateId: ${example.templateId}
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getApplicationTemplate
///       arguments:
///         displayName: Marketo
///   exampleGetApplication:
///     fn::invoke:
///       function: azuread:getApplication
///       arguments:
///         objectId: ${exampleApplicationFromTemplate.applicationObjectId}
///   exampleGetServicePrincipal:
///     fn::invoke:
///       function: azuread:getServicePrincipal
///       arguments:
///         objectId: ${exampleApplicationFromTemplate.servicePrincipalObjectId}
/// ```
///
///
/// ## Import
///
/// Templated Applications can be imported using the template ID, the object ID of the application, and the object ID of the service principal, in the following format.
///
/// ```sh
/// $ pulumi import azuread:index/applicationFromTemplate:ApplicationFromTemplate example /applicationTemplates/00000000-0000-0000-0000-000000000000/instantiate/11111111-1111-1111-1111-111111111111/22222222-2222-2222-2222-222222222222
/// ```
class ApplicationFromTemplate extends pulumi.CustomResource {
  /// The resource ID for the application.
  late final pulumi.Output<String> applicationId;
  /// The object ID for the application.
  late final pulumi.Output<String> applicationObjectId;
  /// The display name for the application.
  late final pulumi.Output<String> displayName;
  /// The resource ID for the service principal.
  late final pulumi.Output<String> servicePrincipalId;
  /// The object ID for the service principal.
  late final pulumi.Output<String> servicePrincipalObjectId;
  /// Unique ID for a templated application in the Azure AD App Gallery, from which to create the application. Changing this forces a new resource to be created.
  late final pulumi.Output<String> templateId;

  /// Creates a new [ApplicationFromTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationFromTemplate]. {@macro pulumi_index_application_from_template_application_from_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationFromTemplate(
    String name, {
    ApplicationFromTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationFromTemplate:ApplicationFromTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.applicationObjectId = registerOutput<String>('applicationObjectId');
    this.displayName = registerOutput<String>('displayName');
    this.servicePrincipalId = registerOutput<String>('servicePrincipalId');
    this.servicePrincipalObjectId = registerOutput<String>('servicePrincipalObjectId');
    this.templateId = registerOutput<String>('templateId');
  }
}
