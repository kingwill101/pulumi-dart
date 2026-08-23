// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclAssociationConfigRequestBodyAppRunnerService {
  /// Specifies the maximum size of the web request body component that an associated Amazon App Runner services should send to AWS WAF for inspection. This applies to statements in the web ACL that inspect the body or JSON body. Valid values are `KB_16`, `KB_32`, `KB_48` and `KB_64`.
  final pulumi.Input<String> defaultSizeInspectionLimit;

  /// Creates a new [WebAclAssociationConfigRequestBodyAppRunnerService].
  /// [defaultSizeInspectionLimit] Specifies the maximum size of the web request body component that an associated Amazon App Runner services should send to AWS WAF for inspection. This applies to statements in the web ACL that inspect the body or JSON body. Valid values are `KB_16`, `KB_32`, `KB_48` and `KB_64`.
  const WebAclAssociationConfigRequestBodyAppRunnerService({
    required this.defaultSizeInspectionLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultSizeInspectionLimit': defaultSizeInspectionLimit,
    };
  }

  factory WebAclAssociationConfigRequestBodyAppRunnerService.fromMap(Map<String, dynamic> map) {
    return WebAclAssociationConfigRequestBodyAppRunnerService(
      defaultSizeInspectionLimit: pulumi.Input.fromValue(map['defaultSizeInspectionLimit'] as String),
    );
  }
}
