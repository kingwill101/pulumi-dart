// ignore_for_file: unused_element, unnecessary_cast


class GetAppTemplateAzureQueueScaleRuleAuthentication {
  /// The name of the secret that contains the value for this environment variable.
  final String secretName;
  final String triggerParameter;

  /// Creates a new [GetAppTemplateAzureQueueScaleRuleAuthentication].
  /// [secretName] The name of the secret that contains the value for this environment variable.
  /// [triggerParameter] Required.
  GetAppTemplateAzureQueueScaleRuleAuthentication({
    required this.secretName,
    required this.triggerParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
      'triggerParameter': triggerParameter,
    };
  }

  factory GetAppTemplateAzureQueueScaleRuleAuthentication.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateAzureQueueScaleRuleAuthentication(
      secretName: map['secretName'] as String,
      triggerParameter: map['triggerParameter'] as String,
    );
  }
}

