// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_action.dart';

/// Defines the management group properties.
class ManagementGroup {
  /// Array of actions that are part of the management group. Each action can have an individual configuration.
  final List<ManagementAction>? actions;
  /// Default response timeout for all actions that are part of the management group.
  final int? defaultTimeoutInSeconds;
  /// Default MQTT topic path on which a client will receive the request for all actions that are part of the management group.
  final String? defaultTopic;
  /// Stringified JSON that contains connector-specific configuration for the management group.
  final String? managementGroupConfiguration;
  /// Name of the management group.
  final String name;
  /// URI or type definition ID.
  final String? typeRef;

  /// Creates a new [ManagementGroup].
  /// [actions] Array of actions that are part of the management group. Each action can have an individual configuration.
  /// [defaultTimeoutInSeconds] Default response timeout for all actions that are part of the management group.
  /// [defaultTopic] Default MQTT topic path on which a client will receive the request for all actions that are part of the management group.
  /// [managementGroupConfiguration] Stringified JSON that contains connector-specific configuration for the management group.
  /// [name] Name of the management group.
  /// [typeRef] URI or type definition ID.
  ManagementGroup({
    this.actions,
    this.defaultTimeoutInSeconds,
    this.defaultTopic,
    this.managementGroupConfiguration,
    required this.name,
    this.typeRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null ? null : pulumi.Input.encodeList<ManagementAction, Map<String, dynamic>>(actions!, (value) => value.toMap()),
      'defaultTimeoutInSeconds': ?defaultTimeoutInSeconds,
      'defaultTopic': ?defaultTopic,
      'managementGroupConfiguration': ?managementGroupConfiguration,
      'name': name,
      'typeRef': ?typeRef,
    };
  }

  factory ManagementGroup.fromMap(Map<String, dynamic> map) {
    return ManagementGroup(
      actions: map['actions'] == null ? null : pulumi.Input.decodeList<ManagementAction>(map['actions'], (value) => ManagementAction.fromMap((value as Map).cast<String, dynamic>())),
      defaultTimeoutInSeconds: map['defaultTimeoutInSeconds'] == null ? null : map['defaultTimeoutInSeconds'] as int,
      defaultTopic: map['defaultTopic'] == null ? null : map['defaultTopic'] as String,
      managementGroupConfiguration: map['managementGroupConfiguration'] == null ? null : map['managementGroupConfiguration'] as String,
      name: map['name'] as String,
      typeRef: map['typeRef'] == null ? null : map['typeRef'] as String,
    );
  }
}

