// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption {
  /// Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  final pulumi.Input<bool> override;

  /// Creates a new [GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption].
  /// [override] Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption({
    required this.override,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'override': override};
  }

  factory GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption(
      override: pulumi.Input.fromValue(map['override'] as bool),
    );
  }
}
