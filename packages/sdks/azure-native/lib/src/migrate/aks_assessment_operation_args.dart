// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aksassessment_settings.dart';
import 'assessment_scope_parameters.dart';

/// {@template pulumi_migrate_aks_assessment_operation_args_doc}
/// The set of arguments for AksAssessmentOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_aks_assessment_operation_args_doc}
class AksAssessmentOperationArgs {
  /// AKS Assessment Name.
  final pulumi.Input<String>? assessmentName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets scope parameters to identify inventory items for assessment.
  final pulumi.Input<AssessmentScopeParameters>? scope;
  /// Gets or sets AKS Assessment Settings.
  final pulumi.Input<AKSAssessmentSettings> settings;

  /// Creates a new [AksAssessmentOperationArgs].
  /// [assessmentName] AKS Assessment Name.
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scope] Gets or sets scope parameters to identify inventory items for assessment.
  /// [settings] Gets or sets AKS Assessment Settings.
  AksAssessmentOperationArgs({
    this.assessmentName,
    required this.projectName,
    required this.resourceGroupName,
    this.scope,
    required this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': ?assessmentName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'scope': ?pulumi.Input.mapOptionalInputValue<AssessmentScopeParameters, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'settings': pulumi.Input.mapInputValue<AKSAssessmentSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory AksAssessmentOperationArgs.fromMap(Map<String, dynamic> map) {
    return AksAssessmentOperationArgs(
      assessmentName: map['assessmentName'] == null ? null : (map['assessmentName'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scope: map['scope'] == null ? null : (AssessmentScopeParameters.fromMap((map['scope'] as Map).cast<String, dynamic>())).input(),
      settings: (AKSAssessmentSettings.fromMap((map['settings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

