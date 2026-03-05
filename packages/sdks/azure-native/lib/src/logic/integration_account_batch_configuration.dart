import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_configuration_properties_response.dart';
import 'integration_account_batch_configuration_args.dart';

/// The batch configuration resource definition.
///
/// Uses Azure REST API version 2019-05-01. In version 2.x of the Azure Native provider, it used API version 2019-05-01.
///
/// Other available API versions: 2016-06-01, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a batch configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integrationAccountBatchConfiguration = new AzureNative.Logic.IntegrationAccountBatchConfiguration("integrationAccountBatchConfiguration", new()
///     {
///         BatchConfigurationName = "testBatchConfiguration",
///         IntegrationAccountName = "testIntegrationAccount",
///         Location = "westus",
///         Properties = new AzureNative.Logic.Inputs.BatchConfigurationPropertiesArgs
///         {
///             BatchGroupName = "DEFAULT",
///             ReleaseCriteria = new AzureNative.Logic.Inputs.BatchReleaseCriteriaArgs
///             {
///                 BatchSize = 234567,
///                 MessageCount = 10,
///                 Recurrence = new AzureNative.Logic.Inputs.WorkflowTriggerRecurrenceArgs
///                 {
///                     Frequency = AzureNative.Logic.RecurrenceFrequency.Minute,
///                     Interval = 1,
///                     StartTime = "2017-03-24T11:43:00",
///                     TimeZone = "India Standard Time",
///                 },
///             },
///         },
///         ResourceGroupName = "testResourceGroup",
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
/// 	logic "github.com/pulumi/pulumi-azure-native-sdk/logic/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logic.NewIntegrationAccountBatchConfiguration(ctx, "integrationAccountBatchConfiguration", &logic.IntegrationAccountBatchConfigurationArgs{
/// 			BatchConfigurationName: pulumi.String("testBatchConfiguration"),
/// 			IntegrationAccountName: pulumi.String("testIntegrationAccount"),
/// 			Location:               pulumi.String("westus"),
/// 			Properties: &logic.BatchConfigurationPropertiesArgs{
/// 				BatchGroupName: pulumi.String("DEFAULT"),
/// 				ReleaseCriteria: &logic.BatchReleaseCriteriaArgs{
/// 					BatchSize:    pulumi.Int(234567),
/// 					MessageCount: pulumi.Int(10),
/// 					Recurrence: &logic.WorkflowTriggerRecurrenceArgs{
/// 						Frequency: pulumi.String(logic.RecurrenceFrequencyMinute),
/// 						Interval:  pulumi.Int(1),
/// 						StartTime: pulumi.String("2017-03-24T11:43:00"),
/// 						TimeZone:  pulumi.String("India Standard Time"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("testResourceGroup"),
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
/// import com.pulumi.azurenative.logic.IntegrationAccountBatchConfiguration;
/// import com.pulumi.azurenative.logic.IntegrationAccountBatchConfigurationArgs;
/// import com.pulumi.azurenative.logic.inputs.BatchConfigurationPropertiesArgs;
/// import com.pulumi.azurenative.logic.inputs.BatchReleaseCriteriaArgs;
/// import com.pulumi.azurenative.logic.inputs.WorkflowTriggerRecurrenceArgs;
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
///         var integrationAccountBatchConfiguration = new IntegrationAccountBatchConfiguration("integrationAccountBatchConfiguration", IntegrationAccountBatchConfigurationArgs.builder()
///             .batchConfigurationName("testBatchConfiguration")
///             .integrationAccountName("testIntegrationAccount")
///             .location("westus")
///             .properties(BatchConfigurationPropertiesArgs.builder()
///                 .batchGroupName("DEFAULT")
///                 .releaseCriteria(BatchReleaseCriteriaArgs.builder()
///                     .batchSize(234567)
///                     .messageCount(10)
///                     .recurrence(WorkflowTriggerRecurrenceArgs.builder()
///                         .frequency("Minute")
///                         .interval(1)
///                         .startTime("2017-03-24T11:43:00")
///                         .timeZone("India Standard Time")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("testResourceGroup")
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
/// const integrationAccountBatchConfiguration = new azure_native.logic.IntegrationAccountBatchConfiguration("integrationAccountBatchConfiguration", {
///     batchConfigurationName: "testBatchConfiguration",
///     integrationAccountName: "testIntegrationAccount",
///     location: "westus",
///     properties: {
///         batchGroupName: "DEFAULT",
///         releaseCriteria: {
///             batchSize: 234567,
///             messageCount: 10,
///             recurrence: {
///                 frequency: azure_native.logic.RecurrenceFrequency.Minute,
///                 interval: 1,
///                 startTime: "2017-03-24T11:43:00",
///                 timeZone: "India Standard Time",
///             },
///         },
///     },
///     resourceGroupName: "testResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// integration_account_batch_configuration = azure_native.logic.IntegrationAccountBatchConfiguration("integrationAccountBatchConfiguration",
///     batch_configuration_name="testBatchConfiguration",
///     integration_account_name="testIntegrationAccount",
///     location="westus",
///     properties={
///         "batch_group_name": "DEFAULT",
///         "release_criteria": {
///             "batch_size": 234567,
///             "message_count": 10,
///             "recurrence": {
///                 "frequency": azure_native.logic.RecurrenceFrequency.MINUTE,
///                 "interval": 1,
///                 "start_time": "2017-03-24T11:43:00",
///                 "time_zone": "India Standard Time",
///             },
///         },
///     },
///     resource_group_name="testResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   integrationAccountBatchConfiguration:
///     type: azure-native:logic:IntegrationAccountBatchConfiguration
///     properties:
///       batchConfigurationName: testBatchConfiguration
///       integrationAccountName: testIntegrationAccount
///       location: westus
///       properties:
///         batchGroupName: DEFAULT
///         releaseCriteria:
///           batchSize: 234567
///           messageCount: 10
///           recurrence:
///             frequency: Minute
///             interval: 1
///             startTime: 2017-03-24T11:43:00
///             timeZone: India Standard Time
///       resourceGroupName: testResourceGroup
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
/// $ pulumi import azure-native:logic:IntegrationAccountBatchConfiguration testBatchConfiguration /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/batchConfigurations/{batchConfigurationName}
/// ```
class IntegrationAccountBatchConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The resource location.
  late final pulumi.Output<String?> location;

  /// Gets the resource name.
  late final pulumi.Output<String> name;

  /// The batch configuration properties.
  late final pulumi.Output<BatchConfigurationPropertiesResponse> properties;

  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Gets the resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IntegrationAccountBatchConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccountBatchConfiguration]. {@macro pulumi_logic_integration_account_batch_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccountBatchConfiguration(
    String name, {
    IntegrationAccountBatchConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:logic:IntegrationAccountBatchConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BatchConfigurationPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BatchConfigurationPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
