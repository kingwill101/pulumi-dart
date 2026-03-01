import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_at_management_group_args.dart';
import 'remediation_deployment_summary_response.dart';
import 'remediation_filters_response.dart';
import 'remediation_properties_response_failure_threshold.dart';
import 'system_data_response.dart';

/// The remediation definition.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2021-10-01.
///
/// Other available API versions: 2021-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native policyinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create remediation at management group scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var remediationAtManagementGroup = new AzureNative.PolicyInsights.RemediationAtManagementGroup("remediationAtManagementGroup", new()
///     {
///         ManagementGroupId = "financeMg",
///         ManagementGroupsNamespace = "Microsoft.Management",
///         PolicyAssignmentId = "/providers/microsoft.management/managementGroups/financeMg/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///         RemediationName = "storageRemediation",
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
/// 	policyinsights "github.com/pulumi/pulumi-azure-native-sdk/policyinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := policyinsights.NewRemediationAtManagementGroup(ctx, "remediationAtManagementGroup", &policyinsights.RemediationAtManagementGroupArgs{
/// 			ManagementGroupId:         pulumi.String("financeMg"),
/// 			ManagementGroupsNamespace: pulumi.String("Microsoft.Management"),
/// 			PolicyAssignmentId:        pulumi.String("/providers/microsoft.management/managementGroups/financeMg/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5"),
/// 			RemediationName:           pulumi.String("storageRemediation"),
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
/// import com.pulumi.azurenative.policyinsights.RemediationAtManagementGroup;
/// import com.pulumi.azurenative.policyinsights.RemediationAtManagementGroupArgs;
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
///         var remediationAtManagementGroup = new RemediationAtManagementGroup("remediationAtManagementGroup", RemediationAtManagementGroupArgs.builder()
///             .managementGroupId("financeMg")
///             .managementGroupsNamespace("Microsoft.Management")
///             .policyAssignmentId("/providers/microsoft.management/managementGroups/financeMg/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5")
///             .remediationName("storageRemediation")
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
/// const remediationAtManagementGroup = new azure_native.policyinsights.RemediationAtManagementGroup("remediationAtManagementGroup", {
///     managementGroupId: "financeMg",
///     managementGroupsNamespace: "Microsoft.Management",
///     policyAssignmentId: "/providers/microsoft.management/managementGroups/financeMg/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///     remediationName: "storageRemediation",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// remediation_at_management_group = azure_native.policyinsights.RemediationAtManagementGroup("remediationAtManagementGroup",
///     management_group_id="financeMg",
///     management_groups_namespace="Microsoft.Management",
///     policy_assignment_id="/providers/microsoft.management/managementGroups/financeMg/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///     remediation_name="storageRemediation")
///
/// ```
///
/// ```yaml
/// resources:
///   remediationAtManagementGroup:
///     type: azure-native:policyinsights:RemediationAtManagementGroup
///     properties:
///       managementGroupId: financeMg
///       managementGroupsNamespace: Microsoft.Management
///       policyAssignmentId: /providers/microsoft.management/managementGroups/financeMg/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5
///       remediationName: storageRemediation
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
/// $ pulumi import azure-native:policyinsights:RemediationAtManagementGroup storageRemediation /providers/{managementGroupsNamespace}/managementGroups/{managementGroupId}/providers/Microsoft.PolicyInsights/remediations/{remediationName}
/// ```
class RemediationAtManagementGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The remediation correlation Id. Can be used to find events related to the remediation in the activity log.
  late final pulumi.Output<String> correlationId;
  /// The time at which the remediation was created.
  late final pulumi.Output<String> createdOn;
  /// The deployment status summary for all deployments created by the remediation.
  late final pulumi.Output<RemediationDeploymentSummaryResponse> deploymentStatus;
  /// The remediation failure threshold settings
  late final pulumi.Output<RemediationPropertiesResponseFailureThreshold?> failureThreshold;
  /// The filters that will be applied to determine which resources to remediate.
  late final pulumi.Output<RemediationFiltersResponse?> filters;
  /// The time at which the remediation was last updated.
  late final pulumi.Output<String> lastUpdatedOn;
  /// The name of the remediation.
  late final pulumi.Output<String> name;
  /// Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  late final pulumi.Output<int?> parallelDeployments;
  /// The resource ID of the policy assignment that should be remediated.
  late final pulumi.Output<String?> policyAssignmentId;
  /// The policy definition reference ID of the individual definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  late final pulumi.Output<String?> policyDefinitionReferenceId;
  /// The status of the remediation. This refers to the entire remediation task, not individual deployments. Allowed values are Evaluating, Canceled, Cancelling, Failed, Complete, or Succeeded.
  late final pulumi.Output<String> provisioningState;
  /// Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  late final pulumi.Output<int?> resourceCount;
  /// The way resources to remediate are discovered. Defaults to ExistingNonCompliant if not specified.
  late final pulumi.Output<String?> resourceDiscoveryMode;
  /// The remediation status message. Provides additional details regarding the state of the remediation.
  late final pulumi.Output<String> statusMessage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the remediation.
  late final pulumi.Output<String> type;

  /// Creates a new [RemediationAtManagementGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RemediationAtManagementGroup]. {@macro pulumi_policyinsights_remediation_at_management_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RemediationAtManagementGroup(
    String name, {
    RemediationAtManagementGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:policyinsights:RemediationAtManagementGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.correlationId = registerOutput<String>('correlationId');
    this.createdOn = registerOutput<String>('createdOn');
    this.deploymentStatus = registerOutput<RemediationDeploymentSummaryResponse>('deploymentStatus');
    this.failureThreshold = registerOutput<RemediationPropertiesResponseFailureThreshold?>('failureThreshold');
    this.filters = registerOutput<RemediationFiltersResponse?>('filters');
    this.lastUpdatedOn = registerOutput<String>('lastUpdatedOn');
    this.name = registerOutput<String>('name');
    this.parallelDeployments = registerOutput<int?>('parallelDeployments');
    this.policyAssignmentId = registerOutput<String?>('policyAssignmentId');
    this.policyDefinitionReferenceId = registerOutput<String?>('policyDefinitionReferenceId');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceCount = registerOutput<int?>('resourceCount');
    this.resourceDiscoveryMode = registerOutput<String?>('resourceDiscoveryMode');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
