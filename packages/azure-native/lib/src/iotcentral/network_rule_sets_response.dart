// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_rule_set_ip_rule_response.dart';

/// Network Rule Set Properties of this IoT Central application.
class NetworkRuleSetsResponse {
  /// Whether these rules apply for device connectivity to IoT Hub and Device Provisioning service associated with this application.
  final bool? applyToDevices;
  /// Whether these rules apply for connectivity via IoT Central web portal and APIs.
  final bool? applyToIoTCentral;
  /// The default network action to apply.
  final String? defaultAction;
  /// List of IP rules.
  final List<NetworkRuleSetIpRuleResponse>? ipRules;

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
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<NetworkRuleSetIpRuleResponse, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
    };
  }

  factory NetworkRuleSetsResponse.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetsResponse(
      applyToDevices: map['applyToDevices'] == null ? null : map['applyToDevices'] as bool,
      applyToIoTCentral: map['applyToIoTCentral'] == null ? null : map['applyToIoTCentral'] as bool,
      defaultAction: map['defaultAction'] == null ? null : map['defaultAction'] as String,
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<NetworkRuleSetIpRuleResponse>(map['ipRules'], (value) => NetworkRuleSetIpRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

