import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_variable_value_column_value_response.dart';
import 'system_data_response.dart';
import 'variable_value_args.dart';

/// The variable value.
///
/// Uses Azure REST API version 2022-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01-preview.
///
/// Other available API versions: 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a variable value
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var variableValue = new AzureNative.Authorization.VariableValue("variableValue", new()
///     {
///         Values = new[]
///         {
///             new AzureNative.Authorization.Inputs.PolicyVariableValueColumnValueArgs
///             {
///                 ColumnName = "StringColumn",
///                 ColumnValue = "SampleValue",
///             },
///             new AzureNative.Authorization.Inputs.PolicyVariableValueColumnValueArgs
///             {
///                 ColumnName = "IntegerColumn",
///                 ColumnValue = 10,
///             },
///         },
///         VariableName = "DemoTestVariable",
///         VariableValueName = "TestValue",
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
/// 		_, err := authorization.NewVariableValue(ctx, "variableValue", &authorization.VariableValueArgs{
/// 			Values: authorization.PolicyVariableValueColumnValueArray{
/// 				&authorization.PolicyVariableValueColumnValueArgs{
/// 					ColumnName:  pulumi.String("StringColumn"),
/// 					ColumnValue: pulumi.Any("SampleValue"),
/// 				},
/// 				&authorization.PolicyVariableValueColumnValueArgs{
/// 					ColumnName:  pulumi.String("IntegerColumn"),
/// 					ColumnValue: pulumi.Any(10),
/// 				},
/// 			},
/// 			VariableName:      pulumi.String("DemoTestVariable"),
/// 			VariableValueName: pulumi.String("TestValue"),
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
/// import com.pulumi.azurenative.authorization.VariableValue;
/// import com.pulumi.azurenative.authorization.VariableValueArgs;
/// import com.pulumi.azurenative.authorization.inputs.PolicyVariableValueColumnValueArgs;
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
///         var variableValue = new VariableValue("variableValue", VariableValueArgs.builder()
///             .values(
///                 PolicyVariableValueColumnValueArgs.builder()
///                     .columnName("StringColumn")
///                     .columnValue("SampleValue")
///                     .build(),
///                 PolicyVariableValueColumnValueArgs.builder()
///                     .columnName("IntegerColumn")
///                     .columnValue(10)
///                     .build())
///             .variableName("DemoTestVariable")
///             .variableValueName("TestValue")
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
/// const variableValue = new azure_native.authorization.VariableValue("variableValue", {
///     values: [
///         {
///             columnName: "StringColumn",
///             columnValue: "SampleValue",
///         },
///         {
///             columnName: "IntegerColumn",
///             columnValue: 10,
///         },
///     ],
///     variableName: "DemoTestVariable",
///     variableValueName: "TestValue",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// variable_value = azure_native.authorization.VariableValue("variableValue",
///     values=[
///         {
///             "column_name": "StringColumn",
///             "column_value": "SampleValue",
///         },
///         {
///             "column_name": "IntegerColumn",
///             "column_value": 10,
///         },
///     ],
///     variable_name="DemoTestVariable",
///     variable_value_name="TestValue")
///
/// ```
///
/// ```yaml
/// resources:
///   variableValue:
///     type: azure-native:authorization:VariableValue
///     properties:
///       values:
///         - columnName: StringColumn
///           columnValue: SampleValue
///         - columnName: IntegerColumn
///           columnValue: 10
///       variableName: DemoTestVariable
///       variableValueName: TestValue
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
/// $ pulumi import azure-native:authorization:VariableValue TestValue /subscriptions/{subscriptionId}/providers/Microsoft.Authorization/variables/{variableName}/values/{variableValueName}
/// ```
class VariableValue extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the variable.
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource (Microsoft.Authorization/variables/values).
  late final pulumi.Output<String> type;
  /// Variable value column value array.
  late final pulumi.Output<List<PolicyVariableValueColumnValueResponse>> values;

  /// Creates a new [VariableValue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VariableValue]. {@macro pulumi_authorization_variable_value_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VariableValue(
    String name, {
    VariableValueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:VariableValue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
    this.values = registerOutput<List<PolicyVariableValueColumnValueResponse>>('values');
  }
}
