// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_waf_protection_module_protection_module_args_doc}
/// The set of arguments for ProtectionModule.
/// {@endtemplate}
/// {@macro pulumi_waf_protection_module_protection_module_args_doc}
class ProtectionModuleArgs {
  /// The Protection Module. Valid values: `ac_cc`, `antifraud`, `dld`, `normalized`, `waf`.
  final pulumi.Input<String> defenseType;

  /// The domain name that is added to WAF.
  final pulumi.Input<String> domain;

  /// The ID of the WAF instance.
  final pulumi.Input<String> instanceId;

  /// The protection mode of the specified protection module. **NOTE:** The value of the Mode parameter varies based on the value of the `defense_type` parameter.
  /// * The `defense_type` is `waf`. `0`: block mode. `1`: warn mode.
  /// * The `defense_type` is `dld`. `0`: warn mode. `1`: block mode.
  /// * The `defense_type` is `ac_cc`. `0`: prevention mode. `1`: protection-emergency mode.
  /// * The `defense_type` is `antifraud`. `0`: warn mode. `1`: block mode. `2`: strict interception mode.
  /// * The `defense_type` is `normalized`. `0`: warn mode. `1`: block mode.
  final pulumi.Input<int> mode;

  /// The status of the resource. Valid values: `0`, `1`.
  final pulumi.Input<int>? status;

  /// Creates a new [ProtectionModuleArgs].
  /// [defenseType] The Protection Module. Valid values: `ac_cc`, `antifraud`, `dld`, `normalized`, `waf`.
  /// [domain] The domain name that is added to WAF.
  /// [instanceId] The ID of the WAF instance.
  /// [mode] The protection mode of the specified protection module. **NOTE:** The value of the Mode parameter varies based on the value of the `defense_type` parameter.
  /// [status] The status of the resource. Valid values: `0`, `1`.
  ProtectionModuleArgs({
    required this.defenseType,
    required this.domain,
    required this.instanceId,
    required this.mode,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defenseType': defenseType,
      'domain': domain,
      'instanceId': instanceId,
      'mode': mode,
      'status': ?status,
    };
  }

  factory ProtectionModuleArgs.fromMap(Map<String, dynamic> map) {
    return ProtectionModuleArgs(
      defenseType: pulumi.Input.fromValue(map['defenseType'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as int),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
