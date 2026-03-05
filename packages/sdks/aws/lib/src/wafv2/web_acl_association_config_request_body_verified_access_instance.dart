// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclAssociationConfigRequestBodyVerifiedAccessInstance {
  /// Specifies the maximum size of the web request body component that an associated AWS Verified Access instances should send to AWS WAF for inspection. This applies to statements in the web ACL that inspect the body or JSON body. Valid values are `KB_16`, `KB_32`, `KB_48` and `KB_64`.
  final pulumi.Input<String> defaultSizeInspectionLimit;

  /// Creates a new [WebAclAssociationConfigRequestBodyVerifiedAccessInstance].
  /// [defaultSizeInspectionLimit] Specifies the maximum size of the web request body component that an associated AWS Verified Access instances should send to AWS WAF for inspection. This applies to statements in the web ACL that inspect the body or JSON body. Valid values are `KB_16`, `KB_32`, `KB_48` and `KB_64`.
  WebAclAssociationConfigRequestBodyVerifiedAccessInstance({
    required this.defaultSizeInspectionLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultSizeInspectionLimit': defaultSizeInspectionLimit,
    };
  }

  factory WebAclAssociationConfigRequestBodyVerifiedAccessInstance.fromMap(Map<String, dynamic> map) {
    return WebAclAssociationConfigRequestBodyVerifiedAccessInstance(
      defaultSizeInspectionLimit: pulumi.Input.fromValue(map['defaultSizeInspectionLimit'] as String),
    );
  }
}

