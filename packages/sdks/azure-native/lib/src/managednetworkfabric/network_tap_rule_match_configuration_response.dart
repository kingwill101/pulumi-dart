// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_tap_rule_action_response.dart';
import 'network_tap_rule_match_condition_response.dart';

/// Defines the match configuration that are supported to filter the traffic.
class NetworkTapRuleMatchConfigurationResponse {
  /// List of actions that need to be performed for the matched conditions.
  final List<NetworkTapRuleActionResponse>? actions;
  /// Type of IP Address. IPv4 or IPv6
  final String? ipAddressType;
  /// List of the match conditions.
  final List<NetworkTapRuleMatchConditionResponse>? matchConditions;
  /// The name of the match configuration.
  final String? matchConfigurationName;
  /// Sequence Number of the match configuration..
  final double? sequenceNumber;

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
      'actions': ?actions == null ? null : pulumi.Input.encodeList<NetworkTapRuleActionResponse, Map<String, dynamic>>(actions!, (value) => value.toMap()),
      'ipAddressType': ?ipAddressType,
      'matchConditions': ?matchConditions == null ? null : pulumi.Input.encodeList<NetworkTapRuleMatchConditionResponse, Map<String, dynamic>>(matchConditions!, (value) => value.toMap()),
      'matchConfigurationName': ?matchConfigurationName,
      'sequenceNumber': ?sequenceNumber,
    };
  }

  factory NetworkTapRuleMatchConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkTapRuleMatchConfigurationResponse(
      actions: map['actions'] == null ? null : pulumi.Input.decodeList<NetworkTapRuleActionResponse>(map['actions'], (value) => NetworkTapRuleActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipAddressType: map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      matchConditions: map['matchConditions'] == null ? null : pulumi.Input.decodeList<NetworkTapRuleMatchConditionResponse>(map['matchConditions'], (value) => NetworkTapRuleMatchConditionResponse.fromMap((value as Map).cast<String, dynamic>())),
      matchConfigurationName: map['matchConfigurationName'] == null ? null : map['matchConfigurationName'] as String,
      sequenceNumber: map['sequenceNumber'] == null ? null : map['sequenceNumber'] as double,
    );
  }
}

