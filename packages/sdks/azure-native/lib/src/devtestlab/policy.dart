import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';

/// A Policy.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Policies_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new AzureNative.DevTestLab.Policy("policy", new()
///     {
///         Description = "{policyDescription}",
///         EvaluatorType = "{policyEvaluatorType}",
///         FactData = "{policyFactData}",
///         FactName = "{policyFactName}",
///         LabName = "{labName}",
///         Location = "{location}",
///         Name = "{policyName}",
///         PolicySetName = "{policySetName}",
///         ResourceGroupName = "resourceGroupName",
///         Status = "{policyStatus}",
///         Tags =
///         {
///             { "tagName1", "tagValue1" },
///         },
///         Threshold = "{policyThreshold}",
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
/// 	devtestlab "github.com/pulumi/pulumi-azure-native-sdk/devtestlab/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devtestlab.NewPolicy(ctx, "policy", &devtestlab.PolicyArgs{
/// 			Description:       pulumi.String("{policyDescription}"),
/// 			EvaluatorType:     pulumi.String("{policyEvaluatorType}"),
/// 			FactData:          pulumi.String("{policyFactData}"),
/// 			FactName:          pulumi.String("{policyFactName}"),
/// 			LabName:           pulumi.String("{labName}"),
/// 			Location:          pulumi.String("{location}"),
/// 			Name:              pulumi.String("{policyName}"),
/// 			PolicySetName:     pulumi.String("{policySetName}"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Status:            pulumi.String("{policyStatus}"),
/// 			Tags: pulumi.StringMap{
/// 				"tagName1": pulumi.String("tagValue1"),
/// 			},
/// 			Threshold: pulumi.String("{policyThreshold}"),
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
/// import com.pulumi.azurenative.devtestlab.Policy;
/// import com.pulumi.azurenative.devtestlab.PolicyArgs;
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
///         var policy = new Policy("policy", PolicyArgs.builder()
///             .description("{policyDescription}")
///             .evaluatorType("{policyEvaluatorType}")
///             .factData("{policyFactData}")
///             .factName("{policyFactName}")
///             .labName("{labName}")
///             .location("{location}")
///             .name("{policyName}")
///             .policySetName("{policySetName}")
///             .resourceGroupName("resourceGroupName")
///             .status("{policyStatus}")
///             .tags(Map.of("tagName1", "tagValue1"))
///             .threshold("{policyThreshold}")
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
/// const policy = new azure_native.devtestlab.Policy("policy", {
///     description: "{policyDescription}",
///     evaluatorType: "{policyEvaluatorType}",
///     factData: "{policyFactData}",
///     factName: "{policyFactName}",
///     labName: "{labName}",
///     location: "{location}",
///     name: "{policyName}",
///     policySetName: "{policySetName}",
///     resourceGroupName: "resourceGroupName",
///     status: "{policyStatus}",
///     tags: {
///         tagName1: "tagValue1",
///     },
///     threshold: "{policyThreshold}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy = azure_native.devtestlab.Policy("policy",
///     description="{policyDescription}",
///     evaluator_type="{policyEvaluatorType}",
///     fact_data="{policyFactData}",
///     fact_name="{policyFactName}",
///     lab_name="{labName}",
///     location="{location}",
///     name="{policyName}",
///     policy_set_name="{policySetName}",
///     resource_group_name="resourceGroupName",
///     status="{policyStatus}",
///     tags={
///         "tagName1": "tagValue1",
///     },
///     threshold="{policyThreshold}")
///
/// ```
///
/// ```yaml
/// resources:
///   policy:
///     type: azure-native:devtestlab:Policy
///     properties:
///       description: '{policyDescription}'
///       evaluatorType: '{policyEvaluatorType}'
///       factData: '{policyFactData}'
///       factName: '{policyFactName}'
///       labName: '{labName}'
///       location: '{location}'
///       name: '{policyName}'
///       policySetName: '{policySetName}'
///       resourceGroupName: resourceGroupName
///       status: '{policyStatus}'
///       tags:
///         tagName1: tagValue1
///       threshold: '{policyThreshold}'
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
/// $ pulumi import azure-native:devtestlab:Policy {labName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/policysets/{policySetName}/policies/{name}
/// ```
class Policy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The creation date of the policy.
  late final pulumi.Output<String> createdDate;
  /// The description of the policy.
  late final pulumi.Output<String?> description;
  /// The evaluator type of the policy (i.e. AllowedValuesPolicy, MaxValuePolicy).
  late final pulumi.Output<String?> evaluatorType;
  /// The fact data of the policy.
  late final pulumi.Output<String?> factData;
  /// The fact name of the policy (e.g. LabVmCount, LabVmSize, MaxVmsAllowedPerLab, etc.
  late final pulumi.Output<String?> factName;
  /// The location of the resource.
  late final pulumi.Output<String?> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The provisioning status of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The status of the policy.
  late final pulumi.Output<String?> status;
  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The threshold of the policy (i.e. a number for MaxValuePolicy, and a JSON array of values for AllowedValuesPolicy).
  late final pulumi.Output<String?> threshold;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// The unique immutable identifier of a resource (Guid).
  late final pulumi.Output<String> uniqueIdentifier;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_devtestlab_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devtestlab:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.createdDate = registerOutput<String>('createdDate');
    this.description = registerOutput<String?>('description');
    this.evaluatorType = registerOutput<String?>('evaluatorType');
    this.factData = registerOutput<String?>('factData');
    this.factName = registerOutput<String?>('factName');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.status = registerOutput<String?>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.threshold = registerOutput<String?>('threshold');
    this.type = registerOutput<String>('type');
    this.uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
  }
}
