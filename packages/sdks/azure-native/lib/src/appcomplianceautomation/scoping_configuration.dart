import 'package:pulumi/pulumi.dart' as pulumi;
import 'scoping_configuration_args.dart';
import 'system_data_response.dart';

/// A class represent an AppComplianceAutomation scoping configuration resource.
///
/// Uses Azure REST API version 2024-06-27. In version 2.x of the Azure Native provider, it used API version 2024-06-27.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ScopingConfiguration_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scopingConfiguration = new AzureNative.AppComplianceAutomation.ScopingConfiguration("scopingConfiguration", new()
///     {
///         Answers = new[]
///         {
///             new AzureNative.AppComplianceAutomation.Inputs.ScopingAnswerArgs
///             {
///                 Answers = new[]
///                 {
///                     "Azure",
///                 },
///                 QuestionId = "GEN20_hostingEnvironment",
///             },
///             new AzureNative.AppComplianceAutomation.Inputs.ScopingAnswerArgs
///             {
///                 Answers = new() { },
///                 QuestionId = "DHP_G07_customerDataProcess",
///             },
///             new AzureNative.AppComplianceAutomation.Inputs.ScopingAnswerArgs
///             {
///                 Answers = new() { },
///                 QuestionId = "Tier2InitSub_serviceCommunicate",
///             },
///         },
///         ReportName = "testReportName",
///         ScopingConfigurationName = "default",
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
/// 	appcomplianceautomation "github.com/pulumi/pulumi-azure-native-sdk/appcomplianceautomation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appcomplianceautomation.NewScopingConfiguration(ctx, "scopingConfiguration", &appcomplianceautomation.ScopingConfigurationArgs{
/// 			Answers: appcomplianceautomation.ScopingAnswerArray{
/// 				&appcomplianceautomation.ScopingAnswerArgs{
/// 					Answers: pulumi.StringArray{
/// 						pulumi.String("Azure"),
/// 					},
/// 					QuestionId: pulumi.String("GEN20_hostingEnvironment"),
/// 				},
/// 				&appcomplianceautomation.ScopingAnswerArgs{
/// 					Answers:    pulumi.StringArray{},
/// 					QuestionId: pulumi.String("DHP_G07_customerDataProcess"),
/// 				},
/// 				&appcomplianceautomation.ScopingAnswerArgs{
/// 					Answers:    pulumi.StringArray{},
/// 					QuestionId: pulumi.String("Tier2InitSub_serviceCommunicate"),
/// 				},
/// 			},
/// 			ReportName:               pulumi.String("testReportName"),
/// 			ScopingConfigurationName: pulumi.String("default"),
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
/// import com.pulumi.azurenative.appcomplianceautomation.ScopingConfiguration;
/// import com.pulumi.azurenative.appcomplianceautomation.ScopingConfigurationArgs;
/// import com.pulumi.azurenative.appcomplianceautomation.inputs.ScopingAnswerArgs;
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
///         var scopingConfiguration = new ScopingConfiguration("scopingConfiguration", ScopingConfigurationArgs.builder()
///             .answers(
///                 ScopingAnswerArgs.builder()
///                     .answers("Azure")
///                     .questionId("GEN20_hostingEnvironment")
///                     .build(),
///                 ScopingAnswerArgs.builder()
///                     .answers()
///                     .questionId("DHP_G07_customerDataProcess")
///                     .build(),
///                 ScopingAnswerArgs.builder()
///                     .answers()
///                     .questionId("Tier2InitSub_serviceCommunicate")
///                     .build())
///             .reportName("testReportName")
///             .scopingConfigurationName("default")
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
/// const scopingConfiguration = new azure_native.appcomplianceautomation.ScopingConfiguration("scopingConfiguration", {
///     answers: [
///         {
///             answers: ["Azure"],
///             questionId: "GEN20_hostingEnvironment",
///         },
///         {
///             answers: [],
///             questionId: "DHP_G07_customerDataProcess",
///         },
///         {
///             answers: [],
///             questionId: "Tier2InitSub_serviceCommunicate",
///         },
///     ],
///     reportName: "testReportName",
///     scopingConfigurationName: "default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scoping_configuration = azure_native.appcomplianceautomation.ScopingConfiguration("scopingConfiguration",
///     answers=[
///         {
///             "answers": ["Azure"],
///             "question_id": "GEN20_hostingEnvironment",
///         },
///         {
///             "answers": [],
///             "question_id": "DHP_G07_customerDataProcess",
///         },
///         {
///             "answers": [],
///             "question_id": "Tier2InitSub_serviceCommunicate",
///         },
///     ],
///     report_name="testReportName",
///     scoping_configuration_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   scopingConfiguration:
///     type: azure-native:appcomplianceautomation:ScopingConfiguration
///     properties:
///       answers:
///         - answers:
///             - Azure
///           questionId: GEN20_hostingEnvironment
///         - answers: []
///           questionId: DHP_G07_customerDataProcess
///         - answers: []
///           questionId: Tier2InitSub_serviceCommunicate
///       reportName: testReportName
///       scopingConfigurationName: default
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
/// $ pulumi import azure-native:appcomplianceautomation:ScopingConfiguration default /providers/Microsoft.AppComplianceAutomation/reports/{reportName}/scopingConfigurations/{scopingConfigurationName}
/// ```
class ScopingConfiguration extends pulumi.CustomResource {
  /// List of scoping question answers.
  late final pulumi.Output<List<Map<String, dynamic>>?> answers;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure lifecycle management
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ScopingConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScopingConfiguration]. {@macro pulumi_appcomplianceautomation_scoping_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScopingConfiguration(
    String name, {
    ScopingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:appcomplianceautomation:ScopingConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    answers = registerOutput<List<Map<String, dynamic>>?>('answers');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
