import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_variable_column_response.dart';
import 'system_data_response.dart';
import 'variable_at_management_group_args.dart';

/// The variable.
///
/// Uses Azure REST API version 2022-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01-preview.
///
/// Other available API versions: 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a variable at management group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var variableAtManagementGroup = new AzureNative.Authorization.VariableAtManagementGroup("variableAtManagementGroup", new()
///     {
///         Columns = new[]
///         {
///             new AzureNative.Authorization.Inputs.PolicyVariableColumnArgs
///             {
///                 ColumnName = "TestColumn",
///             },
///         },
///         ManagementGroupId = "DevOrg",
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
/// 		_, err := authorization.NewVariableAtManagementGroup(ctx, "variableAtManagementGroup", &authorization.VariableAtManagementGroupArgs{
/// 			Columns: authorization.PolicyVariableColumnArray{
/// 				&authorization.PolicyVariableColumnArgs{
/// 					ColumnName: pulumi.String("TestColumn"),
/// 				},
/// 			},
/// 			ManagementGroupId: pulumi.String("DevOrg"),
/// 			VariableName:      pulumi.String("DemoTestVariable"),
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
/// import com.pulumi.azurenative.authorization.VariableAtManagementGroup;
/// import com.pulumi.azurenative.authorization.VariableAtManagementGroupArgs;
/// import com.pulumi.azurenative.authorization.inputs.PolicyVariableColumnArgs;
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
///         var variableAtManagementGroup = new VariableAtManagementGroup("variableAtManagementGroup", VariableAtManagementGroupArgs.builder()
///             .columns(PolicyVariableColumnArgs.builder()
///                 .columnName("TestColumn")
///                 .build())
///             .managementGroupId("DevOrg")
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
/// const variableAtManagementGroup = new azure_native.authorization.VariableAtManagementGroup("variableAtManagementGroup", {
///     columns: [{
///         columnName: "TestColumn",
///     }],
///     managementGroupId: "DevOrg",
///     variableName: "DemoTestVariable",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// variable_at_management_group = azure_native.authorization.VariableAtManagementGroup("variableAtManagementGroup",
///     columns=[{
///         "column_name": "TestColumn",
///     }],
///     management_group_id="DevOrg",
///     variable_name="DemoTestVariable")
///
/// ```
///
/// ```yaml
/// resources:
///   variableAtManagementGroup:
///     type: azure-native:authorization:VariableAtManagementGroup
///     properties:
///       columns:
///         - columnName: TestColumn
///       managementGroupId: DevOrg
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
/// $ pulumi import azure-native:authorization:VariableAtManagementGroup DemoTestVariable /providers/Microsoft.Management/managementGroups/{managementGroupId}/providers/Microsoft.Authorization/variables/{variableName}
/// ```
class VariableAtManagementGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Variable column definitions.
  late final pulumi.Output<List<PolicyVariableColumnResponse>> columns;
  /// The name of the variable.
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource (Microsoft.Authorization/variables).
  late final pulumi.Output<String> type;

  /// Creates a new [VariableAtManagementGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VariableAtManagementGroup]. {@macro pulumi_authorization_variable_at_management_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VariableAtManagementGroup(
    String name, {
    VariableAtManagementGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:VariableAtManagementGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.columns = registerOutput<List<PolicyVariableColumnResponse>>('columns');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
