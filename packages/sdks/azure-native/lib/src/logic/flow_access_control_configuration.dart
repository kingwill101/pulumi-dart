// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_access_control_configuration_policy.dart';

/// The access control configuration.
class FlowAccessControlConfiguration {
  /// The access control configuration for workflow actions.
  final pulumi.Input<FlowAccessControlConfigurationPolicy>? actions;
  /// The access control configuration for accessing workflow run contents.
  final pulumi.Input<FlowAccessControlConfigurationPolicy>? contents;
  /// The access control configuration for invoking workflow triggers.
  final pulumi.Input<FlowAccessControlConfigurationPolicy>? triggers;
  /// The access control configuration for workflow management.
  final pulumi.Input<FlowAccessControlConfigurationPolicy>? workflowManagement;

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
      'actions': ?pulumi.Input.mapOptionalInputValue<FlowAccessControlConfigurationPolicy, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'contents': ?pulumi.Input.mapOptionalInputValue<FlowAccessControlConfigurationPolicy, Map<String, dynamic>>(contents, (value) => value.toMap()),
      'triggers': ?pulumi.Input.mapOptionalInputValue<FlowAccessControlConfigurationPolicy, Map<String, dynamic>>(triggers, (value) => value.toMap()),
      'workflowManagement': ?pulumi.Input.mapOptionalInputValue<FlowAccessControlConfigurationPolicy, Map<String, dynamic>>(workflowManagement, (value) => value.toMap()),
    };
  }

  factory FlowAccessControlConfiguration.fromMap(Map<String, dynamic> map) {
    return FlowAccessControlConfiguration(
      actions: map['actions'] == null ? null : (FlowAccessControlConfigurationPolicy.fromMap((map['actions'] as Map).cast<String, dynamic>())).input(),
      contents: map['contents'] == null ? null : (FlowAccessControlConfigurationPolicy.fromMap((map['contents'] as Map).cast<String, dynamic>())).input(),
      triggers: map['triggers'] == null ? null : (FlowAccessControlConfigurationPolicy.fromMap((map['triggers'] as Map).cast<String, dynamic>())).input(),
      workflowManagement: map['workflowManagement'] == null ? null : (FlowAccessControlConfigurationPolicy.fromMap((map['workflowManagement'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

