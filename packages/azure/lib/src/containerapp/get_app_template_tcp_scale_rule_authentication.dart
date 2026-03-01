// ignore_for_file: unused_element, unnecessary_cast


class GetAppTemplateTcpScaleRuleAuthentication {
  /// The name of the secret that contains the value for this environment variable.
  final String secretName;
  final String triggerParameter;

  /// Creates a new [GetAppTemplateTcpScaleRuleAuthentication].
  /// [secretName] The name of the secret that contains the value for this environment variable.
  /// [triggerParameter] Required.
  GetAppTemplateTcpScaleRuleAuthentication({
    required this.secretName,
    required this.triggerParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
      'triggerParameter': triggerParameter,
    };
  }

  factory GetAppTemplateTcpScaleRuleAuthentication.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateTcpScaleRuleAuthentication(
      secretName: map['secretName'] as String,
      triggerParameter: map['triggerParameter'] as String,
    );
  }
}

