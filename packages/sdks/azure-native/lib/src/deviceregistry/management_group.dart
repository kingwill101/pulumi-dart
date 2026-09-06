// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_action.dart';

/// Defines the management group properties.
class ManagementGroup {
  /// Array of actions that are part of the management group. Each action can have an individual configuration.
  final pulumi.Input<List<ManagementAction>?>? actions;
  /// Default response timeout for all actions that are part of the management group.
  final pulumi.Input<int?>? defaultTimeoutInSeconds;
  /// Default MQTT topic path on which a client will receive the request for all actions that are part of the management group.
  final pulumi.Input<String?>? defaultTopic;
  /// Stringified JSON that contains connector-specific configuration for the management group.
  final pulumi.Input<String?>? managementGroupConfiguration;
  /// Name of the management group.
  final pulumi.Input<String> name;
  /// URI or type definition ID.
  final pulumi.Input<String?>? typeRef;

  /// Creates a new [ManagementGroup].
  /// [actions] Array of actions that are part of the management group. Each action can have an individual configuration.
  /// [defaultTimeoutInSeconds] Default response timeout for all actions that are part of the management group.
  /// [defaultTopic] Default MQTT topic path on which a client will receive the request for all actions that are part of the management group.
  /// [managementGroupConfiguration] Stringified JSON that contains connector-specific configuration for the management group.
  /// [name] Name of the management group.
  /// [typeRef] URI or type definition ID.
  ManagementGroup({
    this.actions,
    pulumi.Input<int?>? defaultTimeoutInSeconds,
    this.defaultTopic,
    this.managementGroupConfiguration,
    required this.name,
    this.typeRef,
  }) : defaultTimeoutInSeconds = defaultTimeoutInSeconds ?? pulumi.Input.fromValue(100);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<ManagementAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<ManagementAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultTimeoutInSeconds': ?defaultTimeoutInSeconds,
      'defaultTopic': ?defaultTopic,
      'managementGroupConfiguration': ?managementGroupConfiguration,
      'name': name,
      'typeRef': ?typeRef,
    };
  }

  factory ManagementGroup.fromMap(Map<String, dynamic> map) {
    return ManagementGroup(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagementAction>(guardedValue, (value) => ManagementAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultTimeoutInSeconds: (() { final guardedValue = map['defaultTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      defaultTopic: (() { final guardedValue = map['defaultTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementGroupConfiguration: (() { final guardedValue = map['managementGroupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      typeRef: (() { final guardedValue = map['typeRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
