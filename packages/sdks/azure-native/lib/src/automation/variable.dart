import 'package:pulumi/pulumi.dart' as pulumi;
import 'variable_args.dart';

/// Definition of the variable.
///
/// Uses Azure REST API version 2023-11-01. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a variable
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var variable = new AzureNative.Automation.Variable("variable", new()
///     {
///         AutomationAccountName = "sampleAccount9",
///         Description = "my description",
///         IsEncrypted = false,
///         Name = "sampleVariable",
///         ResourceGroupName = "rg",
///         Value = "\"ComputerName.domain.com\"",
///         VariableName = "sampleVariable",
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
/// 		_, err := automation.NewVariable(ctx, "variable", &automation.VariableArgs{
/// 			AutomationAccountName: pulumi.String("sampleAccount9"),
/// 			Description:           pulumi.String("my description"),
/// 			IsEncrypted:           pulumi.Bool(false),
/// 			Name:                  pulumi.String("sampleVariable"),
/// 			ResourceGroupName:     pulumi.String("rg"),
/// 			Value:                 pulumi.String("\"ComputerName.domain.com\""),
/// 			VariableName:          pulumi.String("sampleVariable"),
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
/// import com.pulumi.azurenative.automation.Variable;
/// import com.pulumi.azurenative.automation.VariableArgs;
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
///         var variable = new Variable("variable", VariableArgs.builder()
///             .automationAccountName("sampleAccount9")
///             .description("my description")
///             .isEncrypted(false)
///             .name("sampleVariable")
///             .resourceGroupName("rg")
///             .value("\"ComputerName.domain.com\"")
///             .variableName("sampleVariable")
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
/// const variable = new azure_native.automation.Variable("variable", {
///     automationAccountName: "sampleAccount9",
///     description: "my description",
///     isEncrypted: false,
///     name: "sampleVariable",
///     resourceGroupName: "rg",
///     value: "\"ComputerName.domain.com\"",
///     variableName: "sampleVariable",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// variable = azure_native.automation.Variable("variable",
///     automation_account_name="sampleAccount9",
///     description="my description",
///     is_encrypted=False,
///     name="sampleVariable",
///     resource_group_name="rg",
///     value="\"ComputerName.domain.com\"",
///     variable_name="sampleVariable")
///
/// ```
///
/// ```yaml
/// resources:
///   variable:
///     type: azure-native:automation:Variable
///     properties:
///       automationAccountName: sampleAccount9
///       description: my description
///       isEncrypted: false
///       name: sampleVariable
///       resourceGroupName: rg
///       value: '"ComputerName.domain.com"'
///       variableName: sampleVariable
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
/// $ pulumi import azure-native:automation:Variable sampleVariable /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/variables/{variableName}
/// ```
class Variable extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the creation time.
  late final pulumi.Output<String?> creationTime;
  /// Gets or sets the description.
  late final pulumi.Output<String?> description;
  /// Gets or sets the encrypted flag of the variable.
  late final pulumi.Output<bool?> isEncrypted;
  /// Gets or sets the last modified time.
  late final pulumi.Output<String?> lastModifiedTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// Gets or sets the value of the variable.
  late final pulumi.Output<String?> value;

  /// Creates a new [Variable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Variable]. {@macro pulumi_automation_variable_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Variable(
    String name, {
    VariableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:Variable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String?>('creationTime');
    description = registerOutput<String?>('description');
    isEncrypted = registerOutput<bool?>('isEncrypted');
    lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    value = registerOutput<String?>('value');
  }
}
