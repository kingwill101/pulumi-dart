// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_tap_rule_action_response.dart';
import 'network_tap_rule_match_condition_response.dart';

/// Defines the match configuration that are supported to filter the traffic.
class NetworkTapRuleMatchConfigurationResponse {
  /// List of actions that need to be performed for the matched conditions.
  final pulumi.Input<List<NetworkTapRuleActionResponse>>? actions;
  /// Type of IP Address. IPv4 or IPv6
  final pulumi.Input<String>? ipAddressType;
  /// List of the match conditions.
  final pulumi.Input<List<NetworkTapRuleMatchConditionResponse>>? matchConditions;
  /// The name of the match configuration.
  final pulumi.Input<String>? matchConfigurationName;
  /// Sequence Number of the match configuration..
  final pulumi.Input<double>? sequenceNumber;

  /// Creates a new [NetworkTapRuleMatchConfigurationResponse].
  /// [actions] List of actions that need to be performed for the matched conditions.
  /// [ipAddressType] Type of IP Address. IPv4 or IPv6
  /// [matchConditions] List of the match conditions.
  /// [matchConfigurationName] The name of the match configuration.
  /// [sequenceNumber] Sequence Number of the match configuration..
  NetworkTapRuleMatchConfigurationResponse({
    this.actions,
    this.ipAddressType,
    this.matchConditions,
    this.matchConfigurationName,
    this.sequenceNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<NetworkTapRuleActionResponse>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<NetworkTapRuleActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipAddressType': ?ipAddressType,
      'matchConditions': ?pulumi.Input.mapOptionalInputValue<List<NetworkTapRuleMatchConditionResponse>, List<Map<String, dynamic>>>(matchConditions, (value) => pulumi.Input.encodeList<NetworkTapRuleMatchConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchConfigurationName': ?matchConfigurationName,
      'sequenceNumber': ?sequenceNumber,
    };
  }

  factory NetworkTapRuleMatchConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkTapRuleMatchConfigurationResponse(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkTapRuleActionResponse>(guardedValue, (value) => NetworkTapRuleActionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchConditions: (() { final guardedValue = map['matchConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkTapRuleMatchConditionResponse>(guardedValue, (value) => NetworkTapRuleMatchConditionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchConfigurationName: (() { final guardedValue = map['matchConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sequenceNumber: (() { final guardedValue = map['sequenceNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

