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
  const FlowAccessControlConfiguration({
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
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowAccessControlConfigurationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contents: (() { final guardedValue = map['contents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowAccessControlConfigurationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowAccessControlConfigurationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workflowManagement: (() { final guardedValue = map['workflowManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowAccessControlConfigurationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
