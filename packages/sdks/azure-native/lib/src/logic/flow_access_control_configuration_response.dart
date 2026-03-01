// ignore_for_file: unused_element, unnecessary_cast

import 'flow_access_control_configuration_policy_response.dart';

/// The access control configuration.
class FlowAccessControlConfigurationResponse {
  /// The access control configuration for workflow actions.
  final FlowAccessControlConfigurationPolicyResponse? actions;
  /// The access control configuration for accessing workflow run contents.
  final FlowAccessControlConfigurationPolicyResponse? contents;
  /// The access control configuration for invoking workflow triggers.
  final FlowAccessControlConfigurationPolicyResponse? triggers;
  /// The access control configuration for workflow management.
  final FlowAccessControlConfigurationPolicyResponse? workflowManagement;

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
      'actions': ?actions == null ? null : actions!.toMap(),
      'contents': ?contents == null ? null : contents!.toMap(),
      'triggers': ?triggers == null ? null : triggers!.toMap(),
      'workflowManagement': ?workflowManagement == null ? null : workflowManagement!.toMap(),
    };
  }

  factory FlowAccessControlConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FlowAccessControlConfigurationResponse(
      actions: map['actions'] == null ? null : FlowAccessControlConfigurationPolicyResponse.fromMap((map['actions'] as Map).cast<String, dynamic>()),
      contents: map['contents'] == null ? null : FlowAccessControlConfigurationPolicyResponse.fromMap((map['contents'] as Map).cast<String, dynamic>()),
      triggers: map['triggers'] == null ? null : FlowAccessControlConfigurationPolicyResponse.fromMap((map['triggers'] as Map).cast<String, dynamic>()),
      workflowManagement: map['workflowManagement'] == null ? null : FlowAccessControlConfigurationPolicyResponse.fromMap((map['workflowManagement'] as Map).cast<String, dynamic>()),
    );
  }
}

