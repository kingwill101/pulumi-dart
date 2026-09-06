// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_discovered_management_action.dart';

/// Defines the management group properties.
class NamespaceDiscoveredManagementGroup {
  /// Array of actions that are part of the management group. Each action can have an individual configuration.
  final pulumi.Input<List<NamespaceDiscoveredManagementAction>?>? actions;
  /// Default response timeout for all actions that are part of the management group.
  final pulumi.Input<int?>? defaultTimeoutInSeconds;
  /// Default MQTT topic path on which a client will receive the request for all actions that are part of the management group.
  final pulumi.Input<String?>? defaultTopic;
  /// Timestamp (in UTC) indicating when the management group was added or modified.
  final pulumi.Input<String?>? lastUpdatedOn;
  /// Stringified JSON that contains connector-specific configuration for the management group.
  final pulumi.Input<String?>? managementGroupConfiguration;
  /// Name of the management group.
  final pulumi.Input<String> name;
  /// URI or type definition ID.
  final pulumi.Input<String?>? typeRef;

  /// Creates a new [NamespaceDiscoveredManagementGroup].
  /// [actions] Array of actions that are part of the management group. Each action can have an individual configuration.
  /// [defaultTimeoutInSeconds] Default response timeout for all actions that are part of the management group.
  /// [defaultTopic] Default MQTT topic path on which a client will receive the request for all actions that are part of the management group.
  /// [lastUpdatedOn] Timestamp (in UTC) indicating when the management group was added or modified.
  /// [managementGroupConfiguration] Stringified JSON that contains connector-specific configuration for the management group.
  /// [name] Name of the management group.
  /// [typeRef] URI or type definition ID.
  NamespaceDiscoveredManagementGroup({
    this.actions,
    pulumi.Input<int?>? defaultTimeoutInSeconds,
    this.defaultTopic,
    this.lastUpdatedOn,
    this.managementGroupConfiguration,
    required this.name,
    this.typeRef,
  }) : defaultTimeoutInSeconds = defaultTimeoutInSeconds ?? pulumi.Input.fromValue(100);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<NamespaceDiscoveredManagementAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<NamespaceDiscoveredManagementAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultTimeoutInSeconds': ?defaultTimeoutInSeconds,
      'defaultTopic': ?defaultTopic,
      'lastUpdatedOn': ?lastUpdatedOn,
      'managementGroupConfiguration': ?managementGroupConfiguration,
      'name': name,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceDiscoveredManagementGroup.fromMap(Map<String, dynamic> map) {
    return NamespaceDiscoveredManagementGroup(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceDiscoveredManagementAction>(guardedValue, (value) => NamespaceDiscoveredManagementAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultTimeoutInSeconds: (() { final guardedValue = map['defaultTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      defaultTopic: (() { final guardedValue = map['defaultTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedOn: (() { final guardedValue = map['lastUpdatedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementGroupConfiguration: (() { final guardedValue = map['managementGroupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      typeRef: (() { final guardedValue = map['typeRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
