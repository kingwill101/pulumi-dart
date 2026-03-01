// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_filters.dart';
import 'remediation_properties_failure_threshold.dart';

/// {@template pulumi_policyinsights_remediation_at_management_group_args_doc}
/// The set of arguments for RemediationAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_remediation_at_management_group_args_doc}
class RemediationAtManagementGroupArgs {
  /// The remediation failure threshold settings
  final pulumi.Input<RemediationPropertiesFailureThreshold>? failureThreshold;
  /// The filters that will be applied to determine which resources to remediate.
  final pulumi.Input<RemediationFilters>? filters;
  /// Management group ID.
  final pulumi.Input<String> managementGroupId;
  /// The namespace for Microsoft Management RP; only "Microsoft.Management" is allowed.
  final pulumi.Input<String> managementGroupsNamespace;
  /// Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  final pulumi.Input<int>? parallelDeployments;
  /// The resource ID of the policy assignment that should be remediated.
  final pulumi.Input<String>? policyAssignmentId;
  /// The policy definition reference ID of the individual definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  final pulumi.Input<String>? policyDefinitionReferenceId;
  /// The name of the remediation.
  final pulumi.Input<String>? remediationName;
  /// Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  final pulumi.Input<int>? resourceCount;
  /// The way resources to remediate are discovered. Defaults to ExistingNonCompliant if not specified.
  final pulumi.Input<String>? resourceDiscoveryMode;

  /// Creates a new [RemediationAtManagementGroupArgs].
  /// [failureThreshold] The remediation failure threshold settings
  /// [filters] The filters that will be applied to determine which resources to remediate.
  /// [managementGroupId] Management group ID.
  /// [managementGroupsNamespace] The namespace for Microsoft Management RP; only "Microsoft.Management" is allowed.
  /// [parallelDeployments] Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  /// [policyAssignmentId] The resource ID of the policy assignment that should be remediated.
  /// [policyDefinitionReferenceId] The policy definition reference ID of the individual definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  /// [remediationName] The name of the remediation.
  /// [resourceCount] Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  /// [resourceDiscoveryMode] The way resources to remediate are discovered. Defaults to ExistingNonCompliant if not specified.
  RemediationAtManagementGroupArgs({
    RemediationPropertiesFailureThreshold? failureThreshold,
    RemediationFilters? filters,
    required String managementGroupId,
    required String managementGroupsNamespace,
    int? parallelDeployments,
    String? policyAssignmentId,
    String? policyDefinitionReferenceId,
    String? remediationName,
    int? resourceCount,
    String? resourceDiscoveryMode,
  }) :
      failureThreshold = pulumi.Input.asOptionalInput<RemediationPropertiesFailureThreshold>(failureThreshold),
      filters = pulumi.Input.asOptionalInput<RemediationFilters>(filters),
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      managementGroupsNamespace = pulumi.Input.asInput<String>(managementGroupsNamespace),
      parallelDeployments = pulumi.Input.asOptionalInput<int>(parallelDeployments),
      policyAssignmentId = pulumi.Input.asOptionalInput<String>(policyAssignmentId),
      policyDefinitionReferenceId = pulumi.Input.asOptionalInput<String>(policyDefinitionReferenceId),
      remediationName = pulumi.Input.asOptionalInput<String>(remediationName),
      resourceCount = pulumi.Input.asOptionalInput<int>(resourceCount),
      resourceDiscoveryMode = pulumi.Input.asOptionalInput<String>(resourceDiscoveryMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?pulumi.Input.mapOptionalInputValue<RemediationPropertiesFailureThreshold, Map<String, dynamic>>(failureThreshold, (value) => value.toMap()),
      'filters': ?pulumi.Input.mapOptionalInputValue<RemediationFilters, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'managementGroupId': managementGroupId,
      'managementGroupsNamespace': managementGroupsNamespace,
      'parallelDeployments': ?parallelDeployments,
      'policyAssignmentId': ?policyAssignmentId,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
      'remediationName': ?remediationName,
      'resourceCount': ?resourceCount,
      'resourceDiscoveryMode': ?resourceDiscoveryMode,
    };
  }

  factory RemediationAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return RemediationAtManagementGroupArgs(
      failureThreshold: map['failureThreshold'] == null ? null : RemediationPropertiesFailureThreshold.fromMap((map['failureThreshold'] as Map).cast<String, dynamic>()),
      filters: map['filters'] == null ? null : RemediationFilters.fromMap((map['filters'] as Map).cast<String, dynamic>()),
      managementGroupId: map['managementGroupId'] as String,
      managementGroupsNamespace: map['managementGroupsNamespace'] as String,
      parallelDeployments: map['parallelDeployments'] == null ? null : map['parallelDeployments'] as int,
      policyAssignmentId: map['policyAssignmentId'] == null ? null : map['policyAssignmentId'] as String,
      policyDefinitionReferenceId: map['policyDefinitionReferenceId'] == null ? null : map['policyDefinitionReferenceId'] as String,
      remediationName: map['remediationName'] == null ? null : map['remediationName'] as String,
      resourceCount: map['resourceCount'] == null ? null : map['resourceCount'] as int,
      resourceDiscoveryMode: map['resourceDiscoveryMode'] == null ? null : map['resourceDiscoveryMode'] as String,
    );
  }
}

