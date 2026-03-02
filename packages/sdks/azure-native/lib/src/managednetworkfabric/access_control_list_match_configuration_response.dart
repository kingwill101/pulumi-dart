// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_list_action_response.dart';
import 'access_control_list_match_condition_response.dart';

/// Defines the match configuration that are supported to filter the traffic.
class AccessControlListMatchConfigurationResponse {
  /// List of actions that need to be performed for the matched conditions.
  final pulumi.Input<List<AccessControlListActionResponse>>? actions;
  /// Type of IP Address. IPv4 or IPv6
  final pulumi.Input<String>? ipAddressType;
  /// List of the match conditions.
  final pulumi.Input<List<AccessControlListMatchConditionResponse>>? matchConditions;
  /// The name of the match configuration.
  final pulumi.Input<String>? matchConfigurationName;
  /// Sequence Number of the match configuration.
  final pulumi.Input<double>? sequenceNumber;

  /// Creates a new [AccessControlListMatchConfigurationResponse].
  /// [actions] List of actions that need to be performed for the matched conditions.
  /// [ipAddressType] Type of IP Address. IPv4 or IPv6
  /// [matchConditions] List of the match conditions.
  /// [matchConfigurationName] The name of the match configuration.
  /// [sequenceNumber] Sequence Number of the match configuration.
  AccessControlListMatchConfigurationResponse({
    this.actions,
    this.ipAddressType,
    this.matchConditions,
    this.matchConfigurationName,
    this.sequenceNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<AccessControlListActionResponse>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<AccessControlListActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipAddressType': ?ipAddressType,
      'matchConditions': ?pulumi.Input.mapOptionalInputValue<List<AccessControlListMatchConditionResponse>, List<Map<String, dynamic>>>(matchConditions, (value) => pulumi.Input.encodeList<AccessControlListMatchConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchConfigurationName': ?matchConfigurationName,
      'sequenceNumber': ?sequenceNumber,
    };
  }

  factory AccessControlListMatchConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AccessControlListMatchConfigurationResponse(
      actions: map['actions'] == null ? null : (pulumi.Input.decodeList<AccessControlListActionResponse>(map['actions'], (value) => AccessControlListActionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipAddressType: map['ipAddressType'] == null ? null : (map['ipAddressType'] as String).input(),
      matchConditions: map['matchConditions'] == null ? null : (pulumi.Input.decodeList<AccessControlListMatchConditionResponse>(map['matchConditions'], (value) => AccessControlListMatchConditionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      matchConfigurationName: map['matchConfigurationName'] == null ? null : (map['matchConfigurationName'] as String).input(),
      sequenceNumber: map['sequenceNumber'] == null ? null : (map['sequenceNumber'] as double).input(),
    );
  }
}

