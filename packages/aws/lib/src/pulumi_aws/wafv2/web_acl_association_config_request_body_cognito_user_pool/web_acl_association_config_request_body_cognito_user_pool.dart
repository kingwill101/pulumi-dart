// ignore_for_file: unused_element, unnecessary_cast

class WebAclAssociationConfigRequestBodyCognitoUserPool {
  /// Specifies the maximum size of the web request body component that an associated Amazon Cognito user pools should send to AWS WAF for inspection. This applies to statements in the web ACL that inspect the body or JSON body. Valid values are `KB_16`, `KB_32`, `KB_48` and `KB_64`.
  final String defaultSizeInspectionLimit;

  WebAclAssociationConfigRequestBodyCognitoUserPool({
    required this.defaultSizeInspectionLimit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultSizeInspectionLimit'] = defaultSizeInspectionLimit;
    return map;
  }

  factory WebAclAssociationConfigRequestBodyCognitoUserPool.fromMap(
      Map<String, dynamic> map) {
    return WebAclAssociationConfigRequestBodyCognitoUserPool(
      defaultSizeInspectionLimit: map['defaultSizeInspectionLimit'] as String,
    );
  }
}
