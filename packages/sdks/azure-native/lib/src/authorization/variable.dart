import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'variable_args.dart';

/// The variable.
///
/// Uses Azure REST API version 2022-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01-preview.
///
/// Other available API versions: 2024-12-01-preview, 2025-12-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var variable = new AzureNative.Authorization.Variable("variable", new()
///     {
///         Columns = new[]
///         {
///             new AzureNative.Authorization.Inputs.PolicyVariableColumnArgs
///             {
///                 ColumnName = "TestColumn",
///             },
///         },
///         VariableName = "DemoTestVariable",
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
/// 	authorization "github.com/pulumi/pulumi-azure-native-sdk/authorization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := authorization.NewVariable(ctx, "variable", &authorization.VariableArgs{
/// 			Columns: authorization.PolicyVariableColumnArray{
/// 				&authorization.PolicyVariableColumnArgs{
/// 					ColumnName: pulumi.String("TestColumn"),
/// 				},
/// 			},
/// 			VariableName: pulumi.String("DemoTestVariable"),
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
/// resource "azure-native_authorization_variable" "variable" {
///   columns {
///     column_name = "TestColumn"
///   }
///   variable_name = "DemoTestVariable"
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
/// import com.pulumi.azurenative.authorization.Variable;
/// import com.pulumi.azurenative.authorization.VariableArgs;
/// import com.pulumi.azurenative.authorization.inputs.PolicyVariableColumnArgs;
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
///         var variable = new Variable("variable", VariableArgs.builder()
///             .columns(PolicyVariableColumnArgs.builder()
///                 .columnName("TestColumn")
///                 .build())
///             .variableName("DemoTestVariable")
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
/// const variable = new azure_native.authorization.Variable("variable", {
///     columns: [{
///         columnName: "TestColumn",
///     }],
///     variableName: "DemoTestVariable",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// variable = azure_native.authorization.Variable("variable",
///     columns=[{
///         "column_name": "TestColumn",
///     }],
///     variable_name="DemoTestVariable")
///
/// ```
///
/// ```yaml
/// resources:
///   variable:
///     type: azure-native:authorization:Variable
///     properties:
///       columns:
///         - columnName: TestColumn
///       variableName: DemoTestVariable
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
/// $ pulumi import azure-native:authorization:Variable DemoTestVariable /subscriptions/{subscriptionId}/providers/Microsoft.Authorization/variables/{variableName}
/// ```
class Variable extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Variable column definitions.
  late final pulumi.Output<List<Map<String, dynamic>>> columns;
  /// The name of the variable.
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource (Microsoft.Authorization/variables).
  late final pulumi.Output<String> type;

  /// Creates a new [Variable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Variable]. {@macro pulumi_authorization_variable_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Variable(
    String name, {
    VariableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:Variable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    columns = registerOutput<List<Map<String, dynamic>>>('columns');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
