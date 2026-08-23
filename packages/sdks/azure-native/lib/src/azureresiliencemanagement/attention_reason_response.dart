// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_details_response.dart';

/// Reason why the Drill is in NeedsAttention state, and not ready to run.
class AttentionReasonResponse {
  /// User MSI associated with chaos experiment object is deleted.
  final pulumi.Input<String>? chaosExperimentUserMsi;
  /// Chaos resource for faulting exists or not.
  final pulumi.Input<String>? chaosResource;
  /// Reason for Chaos Resource Creation failure
  final pulumi.Input<List<String>>? chaosResourceCreationFailureReasons;
  /// User MSI associated with chaos resource object is deleted.
  final pulumi.Input<String>? chaosResourceUserMsi;
  /// Errors related to Drill Monitoring resources.
  final pulumi.Input<List<ErrorDetailsResponse>>? drillMonitoringErrors;
  /// Monitoring Resources created for Drill
  final pulumi.Input<String> drillMonitoringResources;
  /// Drill object does not have the necessary RBAC to read the Azure Health Model.
  final pulumi.Input<String>? drillRbacOnAzureHealthModel;
  /// Drill object does not have the necessary RBAC to read the Azure Monitoring Workspace account.
  final pulumi.Input<String>? drillRbacOnAzureMonitoringWorkspace;
  /// Drill object does not have the necessary RBAC to run the chaos resource.
  final pulumi.Input<String>? drillRbacOnChaosResource;
  /// Drill object does not have the necessary RBAC to run the chaos experiment.
  final pulumi.Input<String>? drillRbacOnExperiment;
  /// Drill MSI does not have the necessary RBAC to read the Drill Monitoring resources.
  final pulumi.Input<String>? drillRbacOnMonitoringResources;
  /// Drill object does not have the necessary RBAC to run the Recovery Plan.
  final pulumi.Input<String>? drillRbacOnRecoveryPlan;
  /// Drill object does not have the necessary RBAC to read the SLO object.
  final pulumi.Input<String>? drillRbacOnSlo;
  /// User MSI associated with Drill object is deleted.
  final pulumi.Input<String>? drillUserMsi;
  /// RBAC required by Experiment MSI not setup on the target resources.
  final pulumi.Input<String>? faultRbacOnTargets;
  /// Included resource in Drill.
  final pulumi.Input<String>? includedResourceInDrill;
  /// List of required required Azure resource providers that are not registered in the subscription specified for chaos resource.
  final pulumi.Input<List<String>>? missingRequiredResourceProviders;
  /// Monitoring RBAC required by Drill MSI not setup on the target resources.
  final pulumi.Input<String>? monitoringRbacOnDrillResources;
  /// Permissions needed by the Drill MSI to read Azure Health Model.
  final pulumi.Input<List<String>>? rbacNeededForDrillOnAzureHealthModel;
  /// Permissions needed by the Drill MSI to read Azure Monitoring Workspace account.
  final pulumi.Input<List<String>>? rbacNeededForDrillOnAzureMonitoringWorkspace;
  /// Permissions needed by the Drill MSI to run the chaos resource.
  final pulumi.Input<List<String>>? rbacNeededForDrillOnChaosResource;
  /// Permissions needed by the Drill MSI to Upload service group health data for monitoring.
  final pulumi.Input<List<String>>? rbacNeededForDrillOnDrillMonitoringResources;
  /// Permissions needed by the Drill MSI to read health metrics data for resources in service group.
  final pulumi.Input<List<String>>? rbacNeededForDrillOnDrillResources;
  /// Permissions needed by the Drill MSI to run the chaos experiment.
  final pulumi.Input<List<String>>? rbacNeededForDrillOnExperiment;
  /// Permissions needed by the Drill MSI to run the Recovery Plan.
  final pulumi.Input<List<String>>? rbacNeededForDrillOnRecoveryPlan;
  /// Permissions needed by the Drill MSI to read SLO object.
  final pulumi.Input<List<String>>? rbacNeededForDrillOnSlo;
  /// RBAC required by Chaos Resource MSI not setup on the target resources.
  final pulumi.Input<String>? rbacOnTargetResources;
  /// Resources associated in Recovery Plan and Drill are out of sync.
  final pulumi.Input<String>? recoveryPlanAndDrillResourcesState;
  /// Associated RO ready or not.
  final pulumi.Input<String>? roReadiness;
  /// RBAC required by AutomationAccount for runbook MSI not setup on the target resources.
  final pulumi.Input<String>? runbookFaultRbacOnTargets;
  /// Resources in Service Group and Drill are out of sync.
  final pulumi.Input<String>? serviceGroupAndDrillResourcesState;
  /// One or more Target or Capability object is deleted.
  final pulumi.Input<String>? targets;

  /// Creates a new [AttentionReasonResponse].
  /// [chaosExperimentUserMsi] User MSI associated with chaos experiment object is deleted.
  /// [chaosResource] Chaos resource for faulting exists or not.
  /// [chaosResourceCreationFailureReasons] Reason for Chaos Resource Creation failure
  /// [chaosResourceUserMsi] User MSI associated with chaos resource object is deleted.
  /// [drillMonitoringErrors] Errors related to Drill Monitoring resources.
  /// [drillMonitoringResources] Monitoring Resources created for Drill
  /// [drillRbacOnAzureHealthModel] Drill object does not have the necessary RBAC to read the Azure Health Model.
  /// [drillRbacOnAzureMonitoringWorkspace] Drill object does not have the necessary RBAC to read the Azure Monitoring Workspace account.
  /// [drillRbacOnChaosResource] Drill object does not have the necessary RBAC to run the chaos resource.
  /// [drillRbacOnExperiment] Drill object does not have the necessary RBAC to run the chaos experiment.
  /// [drillRbacOnMonitoringResources] Drill MSI does not have the necessary RBAC to read the Drill Monitoring resources.
  /// [drillRbacOnRecoveryPlan] Drill object does not have the necessary RBAC to run the Recovery Plan.
  /// [drillRbacOnSlo] Drill object does not have the necessary RBAC to read the SLO object.
  /// [drillUserMsi] User MSI associated with Drill object is deleted.
  /// [faultRbacOnTargets] RBAC required by Experiment MSI not setup on the target resources.
  /// [includedResourceInDrill] Included resource in Drill.
  /// [missingRequiredResourceProviders] List of required required Azure resource providers that are not registered in the subscription specified for chaos resource.
  /// [monitoringRbacOnDrillResources] Monitoring RBAC required by Drill MSI not setup on the target resources.
  /// [rbacNeededForDrillOnAzureHealthModel] Permissions needed by the Drill MSI to read Azure Health Model.
  /// [rbacNeededForDrillOnAzureMonitoringWorkspace] Permissions needed by the Drill MSI to read Azure Monitoring Workspace account.
  /// [rbacNeededForDrillOnChaosResource] Permissions needed by the Drill MSI to run the chaos resource.
  /// [rbacNeededForDrillOnDrillMonitoringResources] Permissions needed by the Drill MSI to Upload service group health data for monitoring.
  /// [rbacNeededForDrillOnDrillResources] Permissions needed by the Drill MSI to read health metrics data for resources in service group.
  /// [rbacNeededForDrillOnExperiment] Permissions needed by the Drill MSI to run the chaos experiment.
  /// [rbacNeededForDrillOnRecoveryPlan] Permissions needed by the Drill MSI to run the Recovery Plan.
  /// [rbacNeededForDrillOnSlo] Permissions needed by the Drill MSI to read SLO object.
  /// [rbacOnTargetResources] RBAC required by Chaos Resource MSI not setup on the target resources.
  /// [recoveryPlanAndDrillResourcesState] Resources associated in Recovery Plan and Drill are out of sync.
  /// [roReadiness] Associated RO ready or not.
  /// [runbookFaultRbacOnTargets] RBAC required by AutomationAccount for runbook MSI not setup on the target resources.
  /// [serviceGroupAndDrillResourcesState] Resources in Service Group and Drill are out of sync.
  /// [targets] One or more Target or Capability object is deleted.
  const AttentionReasonResponse({
    this.chaosExperimentUserMsi,
    this.chaosResource,
    this.chaosResourceCreationFailureReasons,
    this.chaosResourceUserMsi,
    this.drillMonitoringErrors,
    required this.drillMonitoringResources,
    this.drillRbacOnAzureHealthModel,
    this.drillRbacOnAzureMonitoringWorkspace,
    this.drillRbacOnChaosResource,
    this.drillRbacOnExperiment,
    this.drillRbacOnMonitoringResources,
    this.drillRbacOnRecoveryPlan,
    this.drillRbacOnSlo,
    this.drillUserMsi,
    this.faultRbacOnTargets,
    this.includedResourceInDrill,
    this.missingRequiredResourceProviders,
    this.monitoringRbacOnDrillResources,
    this.rbacNeededForDrillOnAzureHealthModel,
    this.rbacNeededForDrillOnAzureMonitoringWorkspace,
    this.rbacNeededForDrillOnChaosResource,
    this.rbacNeededForDrillOnDrillMonitoringResources,
    this.rbacNeededForDrillOnDrillResources,
    this.rbacNeededForDrillOnExperiment,
    this.rbacNeededForDrillOnRecoveryPlan,
    this.rbacNeededForDrillOnSlo,
    this.rbacOnTargetResources,
    this.recoveryPlanAndDrillResourcesState,
    this.roReadiness,
    this.runbookFaultRbacOnTargets,
    this.serviceGroupAndDrillResourcesState,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chaosExperimentUserMsi': ?chaosExperimentUserMsi,
      'chaosResource': ?chaosResource,
      'chaosResourceCreationFailureReasons': ?chaosResourceCreationFailureReasons,
      'chaosResourceUserMsi': ?chaosResourceUserMsi,
      'drillMonitoringErrors': ?pulumi.Input.mapOptionalInputValue<List<ErrorDetailsResponse>, List<Map<String, dynamic>>>(drillMonitoringErrors, (value) => pulumi.Input.encodeList<ErrorDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'drillMonitoringResources': drillMonitoringResources,
      'drillRbacOnAzureHealthModel': ?drillRbacOnAzureHealthModel,
      'drillRbacOnAzureMonitoringWorkspace': ?drillRbacOnAzureMonitoringWorkspace,
      'drillRbacOnChaosResource': ?drillRbacOnChaosResource,
      'drillRbacOnExperiment': ?drillRbacOnExperiment,
      'drillRbacOnMonitoringResources': ?drillRbacOnMonitoringResources,
      'drillRbacOnRecoveryPlan': ?drillRbacOnRecoveryPlan,
      'drillRbacOnSlo': ?drillRbacOnSlo,
      'drillUserMsi': ?drillUserMsi,
      'faultRbacOnTargets': ?faultRbacOnTargets,
      'includedResourceInDrill': ?includedResourceInDrill,
      'missingRequiredResourceProviders': ?missingRequiredResourceProviders,
      'monitoringRbacOnDrillResources': ?monitoringRbacOnDrillResources,
      'rbacNeededForDrillOnAzureHealthModel': ?rbacNeededForDrillOnAzureHealthModel,
      'rbacNeededForDrillOnAzureMonitoringWorkspace': ?rbacNeededForDrillOnAzureMonitoringWorkspace,
      'rbacNeededForDrillOnChaosResource': ?rbacNeededForDrillOnChaosResource,
      'rbacNeededForDrillOnDrillMonitoringResources': ?rbacNeededForDrillOnDrillMonitoringResources,
      'rbacNeededForDrillOnDrillResources': ?rbacNeededForDrillOnDrillResources,
      'rbacNeededForDrillOnExperiment': ?rbacNeededForDrillOnExperiment,
      'rbacNeededForDrillOnRecoveryPlan': ?rbacNeededForDrillOnRecoveryPlan,
      'rbacNeededForDrillOnSlo': ?rbacNeededForDrillOnSlo,
      'rbacOnTargetResources': ?rbacOnTargetResources,
      'recoveryPlanAndDrillResourcesState': ?recoveryPlanAndDrillResourcesState,
      'roReadiness': ?roReadiness,
      'runbookFaultRbacOnTargets': ?runbookFaultRbacOnTargets,
      'serviceGroupAndDrillResourcesState': ?serviceGroupAndDrillResourcesState,
      'targets': ?targets,
    };
  }

  factory AttentionReasonResponse.fromMap(Map<String, dynamic> map) {
    return AttentionReasonResponse(
      chaosExperimentUserMsi: (() { final guardedValue = map['chaosExperimentUserMsi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chaosResource: (() { final guardedValue = map['chaosResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chaosResourceCreationFailureReasons: (() { final guardedValue = map['chaosResourceCreationFailureReasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      chaosResourceUserMsi: (() { final guardedValue = map['chaosResourceUserMsi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      drillMonitoringErrors: (() { final guardedValue = map['drillMonitoringErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ErrorDetailsResponse>(guardedValue, (value) => ErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      drillMonitoringResources: pulumi.Input.fromValue(map['drillMonitoringResources'] as String),
      drillRbacOnAzureHealthModel: (() { final guardedValue = map['drillRbacOnAzureHealthModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      drillRbacOnAzureMonitoringWorkspace: (() { final guardedValue = map['drillRbacOnAzureMonitoringWorkspace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      drillRbacOnChaosResource: (() { final guardedValue = map['drillRbacOnChaosResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      drillRbacOnExperiment: (() { final guardedValue = map['drillRbacOnExperiment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      drillRbacOnMonitoringResources: (() { final guardedValue = map['drillRbacOnMonitoringResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      drillRbacOnRecoveryPlan: (() { final guardedValue = map['drillRbacOnRecoveryPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      drillRbacOnSlo: (() { final guardedValue = map['drillRbacOnSlo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      drillUserMsi: (() { final guardedValue = map['drillUserMsi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      faultRbacOnTargets: (() { final guardedValue = map['faultRbacOnTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includedResourceInDrill: (() { final guardedValue = map['includedResourceInDrill']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      missingRequiredResourceProviders: (() { final guardedValue = map['missingRequiredResourceProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      monitoringRbacOnDrillResources: (() { final guardedValue = map['monitoringRbacOnDrillResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rbacNeededForDrillOnAzureHealthModel: (() { final guardedValue = map['rbacNeededForDrillOnAzureHealthModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rbacNeededForDrillOnAzureMonitoringWorkspace: (() { final guardedValue = map['rbacNeededForDrillOnAzureMonitoringWorkspace']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rbacNeededForDrillOnChaosResource: (() { final guardedValue = map['rbacNeededForDrillOnChaosResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rbacNeededForDrillOnDrillMonitoringResources: (() { final guardedValue = map['rbacNeededForDrillOnDrillMonitoringResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rbacNeededForDrillOnDrillResources: (() { final guardedValue = map['rbacNeededForDrillOnDrillResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rbacNeededForDrillOnExperiment: (() { final guardedValue = map['rbacNeededForDrillOnExperiment']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rbacNeededForDrillOnRecoveryPlan: (() { final guardedValue = map['rbacNeededForDrillOnRecoveryPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rbacNeededForDrillOnSlo: (() { final guardedValue = map['rbacNeededForDrillOnSlo']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rbacOnTargetResources: (() { final guardedValue = map['rbacOnTargetResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryPlanAndDrillResourcesState: (() { final guardedValue = map['recoveryPlanAndDrillResourcesState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roReadiness: (() { final guardedValue = map['roReadiness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runbookFaultRbacOnTargets: (() { final guardedValue = map['runbookFaultRbacOnTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceGroupAndDrillResourcesState: (() { final guardedValue = map['serviceGroupAndDrillResourcesState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
