// ignore_for_file: unused_element, unnecessary_cast


class ProvisioningTemplatePreProvisioningHook {
  /// The version of the payload that was sent to the target function. The only valid (and the default) payload version is `"2020-04-01"`.
  final String? payloadVersion;
  /// The ARN of the target function.
  final String targetArn;

  /// Creates a new [ProvisioningTemplatePreProvisioningHook].
  /// [payloadVersion] The version of the payload that was sent to the target function. The only valid (and the default) payload version is `"2020-04-01"`.
  /// [targetArn] The ARN of the target function.
  ProvisioningTemplatePreProvisioningHook({
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
      payloadVersion: map['payloadVersion'] == null ? null : map['payloadVersion'] as String,
      targetArn: map['targetArn'] as String,
    );
  }
}

