// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_rule_set_ip_rule.dart';

/// Network Rule Set Properties of this IoT Central application.
class NetworkRuleSets {
  /// Whether these rules apply for device connectivity to IoT Hub and Device Provisioning service associated with this application.
  final pulumi.Input<bool?>? applyToDevices;
  /// Whether these rules apply for connectivity via IoT Central web portal and APIs.
  final pulumi.Input<bool?>? applyToIoTCentral;
  /// The default network action to apply.
  final pulumi.Input<dynamic>? defaultAction;
  /// List of IP rules.
  final pulumi.Input<List<NetworkRuleSetIpRule>?>? ipRules;

  /// Creates a new [NetworkRuleSets].
  /// [applyToDevices] Whether these rules apply for device connectivity to IoT Hub and Device Provisioning service associated with this application.
  /// [applyToIoTCentral] Whether these rules apply for connectivity via IoT Central web portal and APIs.
  /// [defaultAction] The default network action to apply.
  /// [ipRules] List of IP rules.
  NetworkRuleSets({
    pulumi.Input<bool?>? applyToDevices,
    pulumi.Input<bool?>? applyToIoTCentral,
    this.defaultAction,
    this.ipRules,
  }) : applyToDevices = applyToDevices ?? pulumi.Input.fromValue(false), applyToIoTCentral = applyToIoTCentral ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyToDevices': ?applyToDevices,
      'applyToIoTCentral': ?applyToIoTCentral,
      'defaultAction': ?defaultAction,
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<NetworkRuleSetIpRule>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<NetworkRuleSetIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkRuleSets.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSets(
      applyToDevices: (() { final guardedValue = map['applyToDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      applyToIoTCentral: (() { final guardedValue = map['applyToIoTCentral']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkRuleSetIpRule>(guardedValue, (value) => NetworkRuleSetIpRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
