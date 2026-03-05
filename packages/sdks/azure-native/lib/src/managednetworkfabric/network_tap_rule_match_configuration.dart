// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_tap_rule_action.dart';
import 'network_tap_rule_match_condition.dart';

/// Defines the match configuration that are supported to filter the traffic.
class NetworkTapRuleMatchConfiguration {
  /// List of actions that need to be performed for the matched conditions.
  final pulumi.Input<List<NetworkTapRuleAction>>? actions;
  /// Type of IP Address. IPv4 or IPv6
  final pulumi.Input<String>? ipAddressType;
  /// List of the match conditions.
  final pulumi.Input<List<NetworkTapRuleMatchCondition>>? matchConditions;
  /// The name of the match configuration.
  final pulumi.Input<String>? matchConfigurationName;
  /// Sequence Number of the match configuration..
  final pulumi.Input<double>? sequenceNumber;

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
      'actions': ?pulumi.Input.mapOptionalInputValue<List<NetworkTapRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<NetworkTapRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipAddressType': ?ipAddressType,
      'matchConditions': ?pulumi.Input.mapOptionalInputValue<List<NetworkTapRuleMatchCondition>, List<Map<String, dynamic>>>(matchConditions, (value) => pulumi.Input.encodeList<NetworkTapRuleMatchCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchConfigurationName': ?matchConfigurationName,
      'sequenceNumber': ?sequenceNumber,
    };
  }

  factory NetworkTapRuleMatchConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkTapRuleMatchConfiguration(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkTapRuleAction>(guardedValue, (value) => NetworkTapRuleAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchConditions: (() { final guardedValue = map['matchConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkTapRuleMatchCondition>(guardedValue, (value) => NetworkTapRuleMatchCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchConfigurationName: (() { final guardedValue = map['matchConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sequenceNumber: (() { final guardedValue = map['sequenceNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

