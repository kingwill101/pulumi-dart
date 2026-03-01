// ignore_for_file: unused_element, unnecessary_cast


class AppTemplateAzureQueueScaleRuleAuthentication {
  /// The name of the Container App Secret to use for this Scale Rule Authentication.
  final String secretName;
  /// The Trigger Parameter name to use the supply the value retrieved from the `secret_name`.
  final String triggerParameter;

  /// Creates a new [AppTemplateAzureQueueScaleRuleAuthentication].
  /// [secretName] The name of the Container App Secret to use for this Scale Rule Authentication.
  /// [triggerParameter] The Trigger Parameter name to use the supply the value retrieved from the `secret_name`.
  AppTemplateAzureQueueScaleRuleAuthentication({
    required this.secretName,
    required this.triggerParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
      'triggerParameter': triggerParameter,
    };
  }

  factory AppTemplateAzureQueueScaleRuleAuthentication.fromMap(Map<String, dynamic> map) {
    return AppTemplateAzureQueueScaleRuleAuthentication(
      secretName: map['secretName'] as String,
      triggerParameter: map['triggerParameter'] as String,
    );
  }
}

