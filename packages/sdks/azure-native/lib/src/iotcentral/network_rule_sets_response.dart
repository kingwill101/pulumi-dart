// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_rule_set_ip_rule_response.dart';

/// Network Rule Set Properties of this IoT Central application.
class NetworkRuleSetsResponse {
  /// Whether these rules apply for device connectivity to IoT Hub and Device Provisioning service associated with this application.
  final pulumi.Input<bool>? applyToDevices;
  /// Whether these rules apply for connectivity via IoT Central web portal and APIs.
  final pulumi.Input<bool>? applyToIoTCentral;
  /// The default network action to apply.
  final pulumi.Input<String>? defaultAction;
  /// List of IP rules.
  final pulumi.Input<List<NetworkRuleSetIpRuleResponse>>? ipRules;

  /// Creates a new [NetworkRuleSetsResponse].
  /// [applyToDevices] Whether these rules apply for device connectivity to IoT Hub and Device Provisioning service associated with this application.
  /// [applyToIoTCentral] Whether these rules apply for connectivity via IoT Central web portal and APIs.
  /// [defaultAction] The default network action to apply.
  /// [ipRules] List of IP rules.
  NetworkRuleSetsResponse({
    this.applyToDevices,
    this.applyToIoTCentral,
    this.defaultAction,
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyToDevices': ?applyToDevices,
      'applyToIoTCentral': ?applyToIoTCentral,
      'defaultAction': ?defaultAction,
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<NetworkRuleSetIpRuleResponse>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<NetworkRuleSetIpRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkRuleSetsResponse.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetsResponse(
      applyToDevices: (() { final guardedValue = map['applyToDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      applyToIoTCentral: (() { final guardedValue = map['applyToIoTCentral']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkRuleSetIpRuleResponse>(guardedValue, (value) => NetworkRuleSetIpRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

