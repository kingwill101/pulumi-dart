// ignore_for_file: unused_element, unnecessary_cast

import 'flow_access_control_configuration_policy.dart';

/// The access control configuration.
class FlowAccessControlConfiguration {
  /// The access control configuration for workflow actions.
  final FlowAccessControlConfigurationPolicy? actions;
  /// The access control configuration for accessing workflow run contents.
  final FlowAccessControlConfigurationPolicy? contents;
  /// The access control configuration for invoking workflow triggers.
  final FlowAccessControlConfigurationPolicy? triggers;
  /// The access control configuration for workflow management.
  final FlowAccessControlConfigurationPolicy? workflowManagement;

  /// Creates a new [FlowAccessControlConfiguration].
  /// [actions] The access control configuration for workflow actions.
  /// [contents] The access control configuration for accessing workflow run contents.
  /// [triggers] The access control configuration for invoking workflow triggers.
  /// [workflowManagement] The access control configuration for workflow management.
  FlowAccessControlConfiguration({
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

  factory FlowAccessControlConfiguration.fromMap(Map<String, dynamic> map) {
    return FlowAccessControlConfiguration(
      actions: map['actions'] == null ? null : FlowAccessControlConfigurationPolicy.fromMap((map['actions'] as Map).cast<String, dynamic>()),
      contents: map['contents'] == null ? null : FlowAccessControlConfigurationPolicy.fromMap((map['contents'] as Map).cast<String, dynamic>()),
      triggers: map['triggers'] == null ? null : FlowAccessControlConfigurationPolicy.fromMap((map['triggers'] as Map).cast<String, dynamic>()),
      workflowManagement: map['workflowManagement'] == null ? null : FlowAccessControlConfigurationPolicy.fromMap((map['workflowManagement'] as Map).cast<String, dynamic>()),
    );
  }
}

