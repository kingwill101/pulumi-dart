// ignore_for_file: unused_element, unnecessary_cast

class ProvisioningTemplatePreProvisioningHook {
  /// The version of the payload that was sent to the target function. The only valid (and the default) payload version is `"2020-04-01"`.
  final String? payloadVersion;

  /// The ARN of the target function.
  final String targetArn;

  ProvisioningTemplatePreProvisioningHook({
    this.payloadVersion,
    required this.targetArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final payloadVersionValue = payloadVersion;
    if (payloadVersionValue != null) {
      map['payloadVersion'] = payloadVersionValue;
    }
    map['targetArn'] = targetArn;
    return map;
  }

  factory ProvisioningTemplatePreProvisioningHook.fromMap(
      Map<String, dynamic> map) {
    return ProvisioningTemplatePreProvisioningHook(
      payloadVersion: map['payloadVersion'] == null
          ? null
          : map['payloadVersion'] as String,
      targetArn: map['targetArn'] as String,
    );
  }
}
