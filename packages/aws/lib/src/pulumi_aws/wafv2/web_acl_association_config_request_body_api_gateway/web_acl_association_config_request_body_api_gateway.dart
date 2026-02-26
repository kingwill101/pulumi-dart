// ignore_for_file: unused_element, unnecessary_cast

class WebAclAssociationConfigRequestBodyApiGateway {
  /// Specifies the maximum size of the web request body component that an associated Amazon API Gateway REST APIs should send to AWS WAF for inspection. This applies to statements in the web ACL that inspect the body or JSON body. Valid values are `KB_16`, `KB_32`, `KB_48` and `KB_64`.
  final String defaultSizeInspectionLimit;

  WebAclAssociationConfigRequestBodyApiGateway({
    required this.defaultSizeInspectionLimit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultSizeInspectionLimit'] = defaultSizeInspectionLimit;
    return map;
  }

  factory WebAclAssociationConfigRequestBodyApiGateway.fromMap(
      Map<String, dynamic> map) {
    return WebAclAssociationConfigRequestBodyApiGateway(
      defaultSizeInspectionLimit: map['defaultSizeInspectionLimit'] as String,
    );
  }
}
