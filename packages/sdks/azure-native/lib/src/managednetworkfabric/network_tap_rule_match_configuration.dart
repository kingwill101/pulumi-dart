// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_tap_rule_action.dart';
import 'network_tap_rule_match_condition.dart';

/// Defines the match configuration that are supported to filter the traffic.
class NetworkTapRuleMatchConfiguration {
  /// List of actions that need to be performed for the matched conditions.
  final List<NetworkTapRuleAction>? actions;
  /// Type of IP Address. IPv4 or IPv6
  final String? ipAddressType;
  /// List of the match conditions.
  final List<NetworkTapRuleMatchCondition>? matchConditions;
  /// The name of the match configuration.
  final String? matchConfigurationName;
  /// Sequence Number of the match configuration..
  final double? sequenceNumber;

  /// Creates a new [NetworkTapRuleMatchConfiguration].
  /// [actions] List of actions that need to be performed for the matched conditions.
  /// [ipAddressType] Type of IP Address. IPv4 or IPv6
  /// [matchConditions] List of the match conditions.
  /// [matchConfigurationName] The name of the match configuration.
  /// [sequenceNumber] Sequence Number of the match configuration..
  NetworkTapRuleMatchConfiguration({
    this.actions,
    this.ipAddressType,
    this.matchConditions,
    this.matchConfigurationName,
    this.sequenceNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null ? null : pulumi.Input.encodeList<NetworkTapRuleAction, Map<String, dynamic>>(actions!, (value) => value.toMap()),
      'ipAddressType': ?ipAddressType,
      'matchConditions': ?matchConditions == null ? null : pulumi.Input.encodeList<NetworkTapRuleMatchCondition, Map<String, dynamic>>(matchConditions!, (value) => value.toMap()),
      'matchConfigurationName': ?matchConfigurationName,
      'sequenceNumber': ?sequenceNumber,
    };
  }

  factory NetworkTapRuleMatchConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkTapRuleMatchConfiguration(
      actions: map['actions'] == null ? null : pulumi.Input.decodeList<NetworkTapRuleAction>(map['actions'], (value) => NetworkTapRuleAction.fromMap((value as Map).cast<String, dynamic>())),
      ipAddressType: map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      matchConditions: map['matchConditions'] == null ? null : pulumi.Input.decodeList<NetworkTapRuleMatchCondition>(map['matchConditions'], (value) => NetworkTapRuleMatchCondition.fromMap((value as Map).cast<String, dynamic>())),
      matchConfigurationName: map['matchConfigurationName'] == null ? null : map['matchConfigurationName'] as String,
      sequenceNumber: map['sequenceNumber'] == null ? null : map['sequenceNumber'] as double,
    );
  }
}

