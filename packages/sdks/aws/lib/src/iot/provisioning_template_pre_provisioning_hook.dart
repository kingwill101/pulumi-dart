// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProvisioningTemplatePreProvisioningHook {
  /// The version of the payload that was sent to the target function. The only valid (and the default) payload version is `"2020-04-01"`.
  final pulumi.Input<String>? payloadVersion;
  /// The ARN of the target function.
  final pulumi.Input<String> targetArn;

  /// Creates a new [ProvisioningTemplatePreProvisioningHook].
  /// [payloadVersion] The version of the payload that was sent to the target function. The only valid (and the default) payload version is `"2020-04-01"`.
  /// [targetArn] The ARN of the target function.
  const ProvisioningTemplatePreProvisioningHook({
    this.payloadVersion,
    required this.targetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payloadVersion': ?payloadVersion,
      'targetArn': targetArn,
    };
  }

  factory ProvisioningTemplatePreProvisioningHook.fromMap(Map<String, dynamic> map) {
    return ProvisioningTemplatePreProvisioningHook(
      payloadVersion: (() { final guardedValue = map['payloadVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetArn: pulumi.Input.fromValue(map['targetArn'] as String),
    );
  }
}
