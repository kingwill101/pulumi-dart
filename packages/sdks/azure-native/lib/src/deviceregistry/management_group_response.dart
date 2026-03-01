// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_action_response.dart';

/// Defines the management group properties.
class ManagementGroupResponse {
  /// Array of actions that are part of the management group. Each action can have an individual configuration.
  final List<ManagementActionResponse>? actions;
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

  /// Creates a new [ManagementGroupResponse].
  /// [actions] Array of actions that are part of the management group. Each action can have an individual configuration.
  /// [defaultTimeoutInSeconds] Default response timeout for all actions that are part of the management group.
  /// [defaultTopic] Default MQTT topic path on which a client will receive the request for all actions that are part of the management group.
  /// [managementGroupConfiguration] Stringified JSON that contains connector-specific configuration for the management group.
  /// [name] Name of the management group.
  /// [typeRef] URI or type definition ID.
  ManagementGroupResponse({
    this.actions,
    this.defaultTimeoutInSeconds,
    this.defaultTopic,
    this.managementGroupConfiguration,
    required this.name,
    this.typeRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null ? null : pulumi.Input.encodeList<ManagementActionResponse, Map<String, dynamic>>(actions!, (value) => value.toMap()),
      'defaultTimeoutInSeconds': ?defaultTimeoutInSeconds,
      'defaultTopic': ?defaultTopic,
      'managementGroupConfiguration': ?managementGroupConfiguration,
      'name': name,
      'typeRef': ?typeRef,
    };
  }

  factory ManagementGroupResponse.fromMap(Map<String, dynamic> map) {
    return ManagementGroupResponse(
      actions: map['actions'] == null ? null : pulumi.Input.decodeList<ManagementActionResponse>(map['actions'], (value) => ManagementActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultTimeoutInSeconds: map['defaultTimeoutInSeconds'] == null ? null : map['defaultTimeoutInSeconds'] as int,
      defaultTopic: map['defaultTopic'] == null ? null : map['defaultTopic'] as String,
      managementGroupConfiguration: map['managementGroupConfiguration'] == null ? null : map['managementGroupConfiguration'] as String,
      name: map['name'] as String,
      typeRef: map['typeRef'] == null ? null : map['typeRef'] as String,
    );
  }
}

