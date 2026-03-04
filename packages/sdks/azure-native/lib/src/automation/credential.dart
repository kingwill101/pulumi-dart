import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_args.dart';

/// Definition of the credential.
///
/// Uses Azure REST API version 2023-11-01. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a credential
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var credential = new AzureNative.Automation.Credential("credential", new()
///     {
///         AutomationAccountName = "myAutomationAccount18",
///         CredentialName = "myCredential",
///         Description = "my description goes here",
///         Name = "myCredential",
///         Password = "<password>",
///         ResourceGroupName = "rg",
///         UserName = "mylingaiah",
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
/// 	automation "github.com/pulumi/pulumi-azure-native-sdk/automation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := automation.NewCredential(ctx, "credential", &automation.CredentialArgs{
/// 			AutomationAccountName: pulumi.String("myAutomationAccount18"),
/// 			CredentialName:        pulumi.String("myCredential"),
/// 			Description:           pulumi.String("my description goes here"),
/// 			Name:                  pulumi.String("myCredential"),
/// 			Password:              pulumi.String("<password>"),
/// 			ResourceGroupName:     pulumi.String("rg"),
/// 			UserName:              pulumi.String("mylingaiah"),
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
/// import com.pulumi.azurenative.automation.Credential;
/// import com.pulumi.azurenative.automation.CredentialArgs;
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
///         var credential = new Credential("credential", CredentialArgs.builder()
///             .automationAccountName("myAutomationAccount18")
///             .credentialName("myCredential")
///             .description("my description goes here")
///             .name("myCredential")
///             .password("<password>")
///             .resourceGroupName("rg")
///             .userName("mylingaiah")
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
/// const credential = new azure_native.automation.Credential("credential", {
///     automationAccountName: "myAutomationAccount18",
///     credentialName: "myCredential",
///     description: "my description goes here",
///     name: "myCredential",
///     password: "<password>",
///     resourceGroupName: "rg",
///     userName: "mylingaiah",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// credential = azure_native.automation.Credential("credential",
///     automation_account_name="myAutomationAccount18",
///     credential_name="myCredential",
///     description="my description goes here",
///     name="myCredential",
///     password="<password>",
///     resource_group_name="rg",
///     user_name="mylingaiah")
///
/// ```
///
/// ```yaml
/// resources:
///   credential:
///     type: azure-native:automation:Credential
///     properties:
///       automationAccountName: myAutomationAccount18
///       credentialName: myCredential
///       description: my description goes here
///       name: myCredential
///       password: <password>
///       resourceGroupName: rg
///       userName: mylingaiah
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
/// $ pulumi import azure-native:automation:Credential myCredential /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/credentials/{credentialName}
/// ```
class Credential extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets the creation time.
  late final pulumi.Output<String> creationTime;

  /// Gets or sets the description.
  late final pulumi.Output<String?> description;

  /// Gets the last modified time.
  late final pulumi.Output<String> lastModifiedTime;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Gets the user name of the credential.
  late final pulumi.Output<String> userName;

  /// Creates a new [Credential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Credential]. {@macro pulumi_automation_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Credential(
    String name, {
    CredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:automation:Credential',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    userName = registerOutput<String>('userName');
  }
}
