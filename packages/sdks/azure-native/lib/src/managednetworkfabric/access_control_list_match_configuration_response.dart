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
  const AccessControlListMatchConfigurationResponse({
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
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessControlListActionResponse>(guardedValue, (value) => AccessControlListActionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchConditions: (() { final guardedValue = map['matchConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessControlListMatchConditionResponse>(guardedValue, (value) => AccessControlListMatchConditionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchConfigurationName: (() { final guardedValue = map['matchConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sequenceNumber: (() { final guardedValue = map['sequenceNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
