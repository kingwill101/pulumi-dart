import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_args.dart';
import 'system_data_response.dart';

/// The Advisor assessment result data structure.
///
/// Uses Azure REST API version 2023-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-09-01-preview.
///
/// Other available API versions: 2024-11-18-preview, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native advisor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutAssessment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assessment = new AzureNative.Advisor.Assessment("assessment", new()
///     {
///         AssessmentName = "assessment1",
///         Locale = "en-us",
///         TypeId = "23513bdb-e8a2-4f0b-8b6b-191ee1f52d34",
///         WorkloadId = "f72b7134-800f-4f1b-a5bd-691e2140c7d5",
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
/// 	advisor "github.com/pulumi/pulumi-azure-native-sdk/advisor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := advisor.NewAssessment(ctx, "assessment", &advisor.AssessmentArgs{
/// 			AssessmentName: pulumi.String("assessment1"),
/// 			Locale:         pulumi.String("en-us"),
/// 			TypeId:         pulumi.String("23513bdb-e8a2-4f0b-8b6b-191ee1f52d34"),
/// 			WorkloadId:     pulumi.String("f72b7134-800f-4f1b-a5bd-691e2140c7d5"),
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
/// import com.pulumi.azurenative.advisor.Assessment;
/// import com.pulumi.azurenative.advisor.AssessmentArgs;
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
///         var assessment = new Assessment("assessment", AssessmentArgs.builder()
///             .assessmentName("assessment1")
///             .locale("en-us")
///             .typeId("23513bdb-e8a2-4f0b-8b6b-191ee1f52d34")
///             .workloadId("f72b7134-800f-4f1b-a5bd-691e2140c7d5")
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
/// const assessment = new azure_native.advisor.Assessment("assessment", {
///     assessmentName: "assessment1",
///     locale: "en-us",
///     typeId: "23513bdb-e8a2-4f0b-8b6b-191ee1f52d34",
///     workloadId: "f72b7134-800f-4f1b-a5bd-691e2140c7d5",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assessment = azure_native.advisor.Assessment("assessment",
///     assessment_name="assessment1",
///     locale="en-us",
///     type_id="23513bdb-e8a2-4f0b-8b6b-191ee1f52d34",
///     workload_id="f72b7134-800f-4f1b-a5bd-691e2140c7d5")
///
/// ```
///
/// ```yaml
/// resources:
///   assessment:
///     type: azure-native:advisor:Assessment
///     properties:
///       assessmentName: assessment1
///       locale: en-us
///       typeId: 23513bdb-e8a2-4f0b-8b6b-191ee1f52d34
///       workloadId: f72b7134-800f-4f1b-a5bd-691e2140c7d5
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
/// $ pulumi import azure-native:advisor:Assessment MCWAR1 /subscriptions/{subscriptionId}/providers/Microsoft.Advisor/assessments/{assessmentName}
/// ```
class Assessment extends pulumi.CustomResource {
  /// Assessment Id.
  late final pulumi.Output<String> assessmentId;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Assessment Type Description.
  late final pulumi.Output<String> description;

  /// Assessment Type Locale.
  late final pulumi.Output<String?> locale;

  /// Assessment Name
  late final pulumi.Output<String> name;

  /// Assessment Score.
  late final pulumi.Output<int> score;

  /// Assessment State.
  late final pulumi.Output<String> state;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource Type
  late final pulumi.Output<String> type;

  /// Assessment Type Id.
  late final pulumi.Output<String?> typeId;

  /// Assessment Type Version.
  late final pulumi.Output<String> typeVersion;

  /// Workload Id.
  late final pulumi.Output<String?> workloadId;

  /// Workload Name.
  late final pulumi.Output<String> workloadName;

  /// Creates a new [Assessment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Assessment]. {@macro pulumi_advisor_assessment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Assessment(
    String name, {
    AssessmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:advisor:Assessment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assessmentId = registerOutput<String>('assessmentId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String>('description');
    locale = registerOutput<String?>('locale');
    this.name = registerOutput<String>('name');
    score = registerOutput<int>('score');
    state = registerOutput<String>('state');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
    typeId = registerOutput<String?>('typeId');
    typeVersion = registerOutput<String>('typeVersion');
    workloadId = registerOutput<String?>('workloadId');
    workloadName = registerOutput<String>('workloadName');
  }
}
