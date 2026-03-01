import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_on_unmanage_response.dart';
import 'deny_settings_response.dart';
import 'deployment_parameter_response.dart';
import 'deployment_stack_at_subscription_args.dart';
import 'deployment_stacks_debug_setting_response.dart';
import 'deployment_stacks_parameters_link_response.dart';
import 'error_detail_response.dart';
import 'managed_resource_reference_response.dart';
import 'resource_reference_extended_response.dart';
import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// Deployment stack object.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01-preview.
///
/// Other available API versions: 2022-08-01-preview, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a subscription Deployment stack
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deploymentStackAtSubscription = new AzureNative.Resources.DeploymentStackAtSubscription("deploymentStackAtSubscription", new()
///     {
///         ActionOnUnmanage = new AzureNative.Resources.Inputs.ActionOnUnmanageArgs
///         {
///             ManagementGroups = AzureNative.Resources.DeploymentStacksDeleteDetachEnum.Detach,
///             ResourceGroups = AzureNative.Resources.DeploymentStacksDeleteDetachEnum.Delete,
///             Resources = AzureNative.Resources.DeploymentStacksDeleteDetachEnum.Delete,
///         },
///         DenySettings = new AzureNative.Resources.Inputs.DenySettingsArgs
///         {
///             ApplyToChildScopes = false,
///             ExcludedActions = new[]
///             {
///                 "action",
///             },
///             ExcludedPrincipals = new[]
///             {
///                 "principal",
///             },
///             Mode = AzureNative.Resources.DenySettingsMode.DenyDelete,
///         },
///         DeploymentStackName = "simpleDeploymentStack",
///         Location = "eastus",
///         Parameters =
///         {
///             { "parameter1", new AzureNative.Resources.Inputs.DeploymentParameterArgs
///             {
///                 Value = "a string",
///             } },
///         },
///         Tags =
///         {
///             { "tagkey", "tagVal" },
///         },
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
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewDeploymentStackAtSubscription(ctx, "deploymentStackAtSubscription", &resources.DeploymentStackAtSubscriptionArgs{
/// 			ActionOnUnmanage: &resources.ActionOnUnmanageArgs{
/// 				ManagementGroups: pulumi.String(resources.DeploymentStacksDeleteDetachEnumDetach),
/// 				ResourceGroups:   pulumi.String(resources.DeploymentStacksDeleteDetachEnumDelete),
/// 				Resources:        pulumi.String(resources.DeploymentStacksDeleteDetachEnumDelete),
/// 			},
/// 			DenySettings: &resources.DenySettingsArgs{
/// 				ApplyToChildScopes: pulumi.Bool(false),
/// 				ExcludedActions: pulumi.StringArray{
/// 					pulumi.String("action"),
/// 				},
/// 				ExcludedPrincipals: pulumi.StringArray{
/// 					pulumi.String("principal"),
/// 				},
/// 				Mode: pulumi.String(resources.DenySettingsModeDenyDelete),
/// 			},
/// 			DeploymentStackName: pulumi.String("simpleDeploymentStack"),
/// 			Location:            pulumi.String("eastus"),
/// 			Parameters: resources.DeploymentParameterMap{
/// 				"parameter1": &resources.DeploymentParameterArgs{
/// 					Value: pulumi.Any("a string"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tagkey": pulumi.String("tagVal"),
/// 			},
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
/// import com.pulumi.azurenative.resources.DeploymentStackAtSubscription;
/// import com.pulumi.azurenative.resources.DeploymentStackAtSubscriptionArgs;
/// import com.pulumi.azurenative.resources.inputs.ActionOnUnmanageArgs;
/// import com.pulumi.azurenative.resources.inputs.DenySettingsArgs;
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
///         var deploymentStackAtSubscription = new DeploymentStackAtSubscription("deploymentStackAtSubscription", DeploymentStackAtSubscriptionArgs.builder()
///             .actionOnUnmanage(ActionOnUnmanageArgs.builder()
///                 .managementGroups("detach")
///                 .resourceGroups("delete")
///                 .resources("delete")
///                 .build())
///             .denySettings(DenySettingsArgs.builder()
///                 .applyToChildScopes(false)
///                 .excludedActions("action")
///                 .excludedPrincipals("principal")
///                 .mode("denyDelete")
///                 .build())
///             .deploymentStackName("simpleDeploymentStack")
///             .location("eastus")
///             .parameters(Map.of("parameter1", DeploymentParameterArgs.builder()
///                 .value("a string")
///                 .build()))
///             .tags(Map.of("tagkey", "tagVal"))
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
/// const deploymentStackAtSubscription = new azure_native.resources.DeploymentStackAtSubscription("deploymentStackAtSubscription", {
///     actionOnUnmanage: {
///         managementGroups: azure_native.resources.DeploymentStacksDeleteDetachEnum.Detach,
///         resourceGroups: azure_native.resources.DeploymentStacksDeleteDetachEnum.Delete,
///         resources: azure_native.resources.DeploymentStacksDeleteDetachEnum.Delete,
///     },
///     denySettings: {
///         applyToChildScopes: false,
///         excludedActions: ["action"],
///         excludedPrincipals: ["principal"],
///         mode: azure_native.resources.DenySettingsMode.DenyDelete,
///     },
///     deploymentStackName: "simpleDeploymentStack",
///     location: "eastus",
///     parameters: {
///         parameter1: {
///             value: "a string",
///         },
///     },
///     tags: {
///         tagkey: "tagVal",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deployment_stack_at_subscription = azure_native.resources.DeploymentStackAtSubscription("deploymentStackAtSubscription",
///     action_on_unmanage={
///         "management_groups": azure_native.resources.DeploymentStacksDeleteDetachEnum.DETACH,
///         "resource_groups": azure_native.resources.DeploymentStacksDeleteDetachEnum.DELETE,
///         "resources": azure_native.resources.DeploymentStacksDeleteDetachEnum.DELETE,
///     },
///     deny_settings={
///         "apply_to_child_scopes": False,
///         "excluded_actions": ["action"],
///         "excluded_principals": ["principal"],
///         "mode": azure_native.resources.DenySettingsMode.DENY_DELETE,
///     },
///     deployment_stack_name="simpleDeploymentStack",
///     location="eastus",
///     parameters={
///         "parameter1": {
///             "value": "a string",
///         },
///     },
///     tags={
///         "tagkey": "tagVal",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   deploymentStackAtSubscription:
///     type: azure-native:resources:DeploymentStackAtSubscription
///     properties:
///       actionOnUnmanage:
///         managementGroups: detach
///         resourceGroups: delete
///         resources: delete
///       denySettings:
///         applyToChildScopes: false
///         excludedActions:
///           - action
///         excludedPrincipals:
///           - principal
///         mode: denyDelete
///       deploymentStackName: simpleDeploymentStack
///       location: eastus
///       parameters:
///         parameter1:
///           value: a string
///       tags:
///         tagkey: tagVal
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
/// $ pulumi import azure-native:resources:DeploymentStackAtSubscription simpleDeploymentStack /subscriptions/{subscriptionId}/providers/Microsoft.Resources/deploymentStacks/{deploymentStackName}
/// ```
class DeploymentStackAtSubscription extends pulumi.CustomResource {
  /// Defines the behavior of resources that are no longer managed after the Deployment stack is updated or deleted.
  late final pulumi.Output<ActionOnUnmanageResponse> actionOnUnmanage;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The correlation id of the last Deployment stack upsert or delete operation. It is in GUID format and is used for tracing.
  late final pulumi.Output<String> correlationId;
  /// The debug setting of the deployment.
  late final pulumi.Output<DeploymentStacksDebugSettingResponse?> debugSetting;
  /// An array of resources that were deleted during the most recent Deployment stack update. Deleted means that the resource was removed from the template and relevant deletion operations were specified.
  late final pulumi.Output<List<ResourceReferenceResponse>> deletedResources;
  /// Defines how resources deployed by the stack are locked.
  late final pulumi.Output<DenySettingsResponse> denySettings;
  /// The resourceId of the deployment resource created by the deployment stack.
  late final pulumi.Output<String> deploymentId;
  /// The scope at which the initial deployment should be created. If a scope is not specified, it will default to the scope of the deployment stack. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroupId}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  late final pulumi.Output<String?> deploymentScope;
  /// Deployment stack description. Max length of 4096 characters.
  late final pulumi.Output<String?> description;
  /// An array of resources that were detached during the most recent Deployment stack update. Detached means that the resource was removed from the template, but no relevant deletion operations were specified. So, the resource still exists while no longer being associated with the stack.
  late final pulumi.Output<List<ResourceReferenceResponse>> detachedResources;
  /// The duration of the last successful Deployment stack update.
  late final pulumi.Output<String> duration;
  /// The error detail.
  late final pulumi.Output<ErrorDetailResponse?> error;
  /// An array of resources that failed to reach goal state during the most recent update. Each resourceId is accompanied by an error message.
  late final pulumi.Output<List<ResourceReferenceExtendedResponse>> failedResources;
  /// The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The outputs of the deployment resource created by the deployment stack.
  late final pulumi.Output<dynamic> outputs;
  /// Name and value pairs that define the deployment parameters for the template. Use this element when providing the parameter values directly in the request, rather than linking to an existing parameter file. Use either the parametersLink property or the parameters property, but not both.
  late final pulumi.Output<Map<String, DeploymentParameterResponse>?> parameters;
  /// The URI of parameters file. Use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  late final pulumi.Output<DeploymentStacksParametersLinkResponse?> parametersLink;
  /// State of the deployment stack.
  late final pulumi.Output<String> provisioningState;
  /// An array of resources currently managed by the deployment stack.
  late final pulumi.Output<List<ManagedResourceReferenceResponse>> resources;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DeploymentStackAtSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentStackAtSubscription]. {@macro pulumi_resources_deployment_stack_at_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentStackAtSubscription(
    String name, {
    DeploymentStackAtSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:resources:DeploymentStackAtSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actionOnUnmanage = registerOutput<ActionOnUnmanageResponse>('actionOnUnmanage');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.correlationId = registerOutput<String>('correlationId');
    this.debugSetting = registerOutput<DeploymentStacksDebugSettingResponse?>('debugSetting');
    this.deletedResources = registerOutput<List<ResourceReferenceResponse>>('deletedResources');
    this.denySettings = registerOutput<DenySettingsResponse>('denySettings');
    this.deploymentId = registerOutput<String>('deploymentId');
    this.deploymentScope = registerOutput<String?>('deploymentScope');
    this.description = registerOutput<String?>('description');
    this.detachedResources = registerOutput<List<ResourceReferenceResponse>>('detachedResources');
    this.duration = registerOutput<String>('duration');
    this.error = registerOutput<ErrorDetailResponse?>('error');
    this.failedResources = registerOutput<List<ResourceReferenceExtendedResponse>>('failedResources');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.outputs = registerOutput<dynamic>('outputs');
    this.parameters = registerOutput<Map<String, DeploymentParameterResponse>?>('parameters');
    this.parametersLink = registerOutput<DeploymentStacksParametersLinkResponse?>('parametersLink');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resources = registerOutput<List<ManagedResourceReferenceResponse>>('resources');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
