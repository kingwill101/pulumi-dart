import 'package:pulumi/pulumi.dart' as pulumi;
import 'script_execution_args.dart';
import 'system_data_response.dart';

/// An instance of a script executed by a user - custom or AVS
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ScriptExecutions_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scriptExecution = new AzureNative.AVS.ScriptExecution("scriptExecution", new()
///     {
///         HiddenParameters = new[]
///         {
///             new AzureNative.AVS.Inputs.ScriptSecureStringExecutionParameterArgs
///             {
///                 Name = "Password",
///                 SecureValue = "PlaceholderPassword",
///                 Type = "SecureValue",
///             },
///         },
///         Parameters = new[]
///         {
///             new AzureNative.AVS.Inputs.ScriptStringExecutionParameterArgs
///             {
///                 Name = "DomainName",
///                 Type = "Value",
///                 Value = "placeholderDomain.local",
///             },
///             new AzureNative.AVS.Inputs.ScriptStringExecutionParameterArgs
///             {
///                 Name = "BaseUserDN",
///                 Type = "Value",
///                 Value = "DC=placeholder, DC=placeholder",
///             },
///         },
///         PrivateCloudName = "cloud1",
///         ResourceGroupName = "group1",
///         Retention = "P0Y0M60DT0H60M60S",
///         ScriptCmdletId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/scriptPackages/AVS.PowerCommands@1.0.0/scriptCmdlets/New-SsoExternalIdentitySource",
///         ScriptExecutionName = "addSsoServer",
///         Timeout = "P0Y0M0DT0H60M60S",
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewScriptExecution(ctx, "scriptExecution", &avs.ScriptExecutionArgs{
/// 			HiddenParameters: pulumi.Array{
/// 				avs.ScriptSecureStringExecutionParameter{
/// 					Name:        "Password",
/// 					SecureValue: "PlaceholderPassword",
/// 					Type:        "SecureValue",
/// 				},
/// 			},
/// 			Parameters: pulumi.Array{
/// 				avs.ScriptStringExecutionParameter{
/// 					Name:  "DomainName",
/// 					Type:  "Value",
/// 					Value: "placeholderDomain.local",
/// 				},
/// 				avs.ScriptStringExecutionParameter{
/// 					Name:  "BaseUserDN",
/// 					Type:  "Value",
/// 					Value: "DC=placeholder, DC=placeholder",
/// 				},
/// 			},
/// 			PrivateCloudName:    pulumi.String("cloud1"),
/// 			ResourceGroupName:   pulumi.String("group1"),
/// 			Retention:           pulumi.String("P0Y0M60DT0H60M60S"),
/// 			ScriptCmdletId:      pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/scriptPackages/AVS.PowerCommands@1.0.0/scriptCmdlets/New-SsoExternalIdentitySource"),
/// 			ScriptExecutionName: pulumi.String("addSsoServer"),
/// 			Timeout:             pulumi.String("P0Y0M0DT0H60M60S"),
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
/// import com.pulumi.azurenative.avs.ScriptExecution;
/// import com.pulumi.azurenative.avs.ScriptExecutionArgs;
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
///         var scriptExecution = new ScriptExecution("scriptExecution", ScriptExecutionArgs.builder()
///             .hiddenParameters(ScriptSecureStringExecutionParameterArgs.builder()
///                 .name("Password")
///                 .secureValue("PlaceholderPassword")
///                 .type("SecureValue")
///                 .build())
///             .parameters(
///                 ScriptStringExecutionParameterArgs.builder()
///                     .name("DomainName")
///                     .type("Value")
///                     .value("placeholderDomain.local")
///                     .build(),
///                 ScriptStringExecutionParameterArgs.builder()
///                     .name("BaseUserDN")
///                     .type("Value")
///                     .value("DC=placeholder, DC=placeholder")
///                     .build())
///             .privateCloudName("cloud1")
///             .resourceGroupName("group1")
///             .retention("P0Y0M60DT0H60M60S")
///             .scriptCmdletId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/scriptPackages/AVS.PowerCommands@1.0.0/scriptCmdlets/New-SsoExternalIdentitySource")
///             .scriptExecutionName("addSsoServer")
///             .timeout("P0Y0M0DT0H60M60S")
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
/// const scriptExecution = new azure_native.avs.ScriptExecution("scriptExecution", {
///     hiddenParameters: [{
///         name: "Password",
///         secureValue: "PlaceholderPassword",
///         type: "SecureValue",
///     }],
///     parameters: [
///         {
///             name: "DomainName",
///             type: "Value",
///             value: "placeholderDomain.local",
///         },
///         {
///             name: "BaseUserDN",
///             type: "Value",
///             value: "DC=placeholder, DC=placeholder",
///         },
///     ],
///     privateCloudName: "cloud1",
///     resourceGroupName: "group1",
///     retention: "P0Y0M60DT0H60M60S",
///     scriptCmdletId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/scriptPackages/AVS.PowerCommands@1.0.0/scriptCmdlets/New-SsoExternalIdentitySource",
///     scriptExecutionName: "addSsoServer",
///     timeout: "P0Y0M0DT0H60M60S",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// script_execution = azure_native.avs.ScriptExecution("scriptExecution",
///     hidden_parameters=[{
///         "name": "Password",
///         "secure_value": "PlaceholderPassword",
///         "type": "SecureValue",
///     }],
///     parameters=[
///         {
///             "name": "DomainName",
///             "type": "Value",
///             "value": "placeholderDomain.local",
///         },
///         {
///             "name": "BaseUserDN",
///             "type": "Value",
///             "value": "DC=placeholder, DC=placeholder",
///         },
///     ],
///     private_cloud_name="cloud1",
///     resource_group_name="group1",
///     retention="P0Y0M60DT0H60M60S",
///     script_cmdlet_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/scriptPackages/AVS.PowerCommands@1.0.0/scriptCmdlets/New-SsoExternalIdentitySource",
///     script_execution_name="addSsoServer",
///     timeout="P0Y0M0DT0H60M60S")
///
/// ```
///
/// ```yaml
/// resources:
///   scriptExecution:
///     type: azure-native:avs:ScriptExecution
///     properties:
///       hiddenParameters:
///         - name: Password
///           secureValue: PlaceholderPassword
///           type: SecureValue
///       parameters:
///         - name: DomainName
///           type: Value
///           value: placeholderDomain.local
///         - name: BaseUserDN
///           type: Value
///           value: DC=placeholder, DC=placeholder
///       privateCloudName: cloud1
///       resourceGroupName: group1
///       retention: P0Y0M60DT0H60M60S
///       scriptCmdletId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/scriptPackages/AVS.PowerCommands@1.0.0/scriptCmdlets/New-SsoExternalIdentitySource
///       scriptExecutionName: addSsoServer
///       timeout: P0Y0M0DT0H60M60S
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
/// $ pulumi import azure-native:avs:ScriptExecution addSsoServer /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/scriptExecutions/{scriptExecutionName}
/// ```
class ScriptExecution extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Standard error output stream from the powershell execution
  late final pulumi.Output<List<String>> errors;
  /// Error message if the script was able to run, but if the script itself had
  /// errors or powershell threw an exception
  late final pulumi.Output<String?> failureReason;
  /// Time the script execution was finished
  late final pulumi.Output<String> finishedAt;
  /// Parameters that will be hidden/not visible to ARM, such as passwords and
  /// credentials
  late final pulumi.Output<List<Map<String, dynamic>>?> hiddenParameters;
  /// Standard information out stream from the powershell execution
  late final pulumi.Output<List<String>> information;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// User-defined dictionary.
  late final pulumi.Output<Map<String, dynamic>?> namedOutputs;
  /// Standard output stream from the powershell execution
  late final pulumi.Output<List<String>?> output;
  /// Parameters the script will accept
  late final pulumi.Output<List<Map<String, dynamic>>?> parameters;
  /// The state of the script execution resource
  late final pulumi.Output<String> provisioningState;
  /// Time to live for the resource. If not provided, will be available for 60 days
  late final pulumi.Output<String?> retention;
  /// A reference to the script cmdlet resource if user is running a AVS script
  late final pulumi.Output<String?> scriptCmdletId;
  /// Time the script execution was started
  late final pulumi.Output<String> startedAt;
  /// Time the script execution was submitted
  late final pulumi.Output<String> submittedAt;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Time limit for execution
  late final pulumi.Output<String> timeout;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Standard warning out stream from the powershell execution
  late final pulumi.Output<List<String>> warnings;

  /// Creates a new [ScriptExecution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScriptExecution]. {@macro pulumi_avs_script_execution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScriptExecution(
    String name, {
    ScriptExecutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:ScriptExecution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    errors = registerOutput<List<String>>('errors');
    failureReason = registerOutput<String?>('failureReason');
    finishedAt = registerOutput<String>('finishedAt');
    hiddenParameters = registerOutput<List<Map<String, dynamic>>?>('hiddenParameters');
    information = registerOutput<List<String>>('information');
    this.name = registerOutput<String>('name');
    namedOutputs = registerOutput<Map<String, dynamic>?>('namedOutputs');
    output = registerOutput<List<String>?>('output');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    provisioningState = registerOutput<String>('provisioningState');
    retention = registerOutput<String?>('retention');
    scriptCmdletId = registerOutput<String?>('scriptCmdletId');
    startedAt = registerOutput<String>('startedAt');
    submittedAt = registerOutput<String>('submittedAt');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeout = registerOutput<String>('timeout');
    type = registerOutput<String>('type');
    warnings = registerOutput<List<String>>('warnings');
  }
}
