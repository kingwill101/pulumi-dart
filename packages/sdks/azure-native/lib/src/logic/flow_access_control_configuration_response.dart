// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_access_control_configuration_policy_response.dart';

/// The access control configuration.
class FlowAccessControlConfigurationResponse {
  /// The access control configuration for workflow actions.
  final pulumi.Input<FlowAccessControlConfigurationPolicyResponse>? actions;
  /// The access control configuration for accessing workflow run contents.
  final pulumi.Input<FlowAccessControlConfigurationPolicyResponse>? contents;
  /// The access control configuration for invoking workflow triggers.
  final pulumi.Input<FlowAccessControlConfigurationPolicyResponse>? triggers;
  /// The access control configuration for workflow management.
  final pulumi.Input<FlowAccessControlConfigurationPolicyResponse>? workflowManagement;

  /// Creates a new [FlowAccessControlConfigurationResponse].
  /// [actions] The access control configuration for workflow actions.
  /// [contents] The access control configuration for accessing workflow run contents.
  /// [triggers] The access control configuration for invoking workflow triggers.
  /// [workflowManagement] The access control configuration for workflow management.
  FlowAccessControlConfigurationResponse({
    this.actions,
    this.contents,
    this.triggers,
    this.workflowManagement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<FlowAccessControlConfigurationPolicyResponse, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'contents': ?pulumi.Input.mapOptionalInputValue<FlowAccessControlConfigurationPolicyResponse, Map<String, dynamic>>(contents, (value) => value.toMap()),
      'triggers': ?pulumi.Input.mapOptionalInputValue<FlowAccessControlConfigurationPolicyResponse, Map<String, dynamic>>(triggers, (value) => value.toMap()),
      'workflowManagement': ?pulumi.Input.mapOptionalInputValue<FlowAccessControlConfigurationPolicyResponse, Map<String, dynamic>>(workflowManagement, (value) => value.toMap()),
    };
  }

  factory FlowAccessControlConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FlowAccessControlConfigurationResponse(
      actions: map['actions'] == null ? null : (FlowAccessControlConfigurationPolicyResponse.fromMap((map['actions'] as Map).cast<String, dynamic>())).input(),
      contents: map['contents'] == null ? null : (FlowAccessControlConfigurationPolicyResponse.fromMap((map['contents'] as Map).cast<String, dynamic>())).input(),
      triggers: map['triggers'] == null ? null : (FlowAccessControlConfigurationPolicyResponse.fromMap((map['triggers'] as Map).cast<String, dynamic>())).input(),
      workflowManagement: map['workflowManagement'] == null ? null : (FlowAccessControlConfigurationPolicyResponse.fromMap((map['workflowManagement'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

