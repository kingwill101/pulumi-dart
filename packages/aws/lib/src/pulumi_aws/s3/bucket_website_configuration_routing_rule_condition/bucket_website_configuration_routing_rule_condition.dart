// ignore_for_file: unused_element, unnecessary_cast

class BucketWebsiteConfigurationRoutingRuleCondition {
  /// HTTP error code when the redirect is applied. If specified with <span pulumi-lang-nodejs="`keyPrefixEquals`" pulumi-lang-dotnet="`KeyPrefixEquals`" pulumi-lang-go="`keyPrefixEquals`" pulumi-lang-python="`key_prefix_equals`" pulumi-lang-yaml="`keyPrefixEquals`" pulumi-lang-java="`keyPrefixEquals`">`key_prefix_equals`</span>, then both must be true for the redirect to be applied.
  final String? httpErrorCodeReturnedEquals;

  /// Object key name prefix when the redirect is applied. If specified with <span pulumi-lang-nodejs="`httpErrorCodeReturnedEquals`" pulumi-lang-dotnet="`HttpErrorCodeReturnedEquals`" pulumi-lang-go="`httpErrorCodeReturnedEquals`" pulumi-lang-python="`http_error_code_returned_equals`" pulumi-lang-yaml="`httpErrorCodeReturnedEquals`" pulumi-lang-java="`httpErrorCodeReturnedEquals`">`http_error_code_returned_equals`</span>, then both must be true for the redirect to be applied.
  final String? keyPrefixEquals;

  BucketWebsiteConfigurationRoutingRuleCondition({
    this.httpErrorCodeReturnedEquals,
    this.keyPrefixEquals,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final httpErrorCodeReturnedEqualsValue = httpErrorCodeReturnedEquals;
    if (httpErrorCodeReturnedEqualsValue != null) {
      map['httpErrorCodeReturnedEquals'] = httpErrorCodeReturnedEqualsValue;
    }
    final keyPrefixEqualsValue = keyPrefixEquals;
    if (keyPrefixEqualsValue != null) {
      map['keyPrefixEquals'] = keyPrefixEqualsValue;
    }
    return map;
  }

  factory BucketWebsiteConfigurationRoutingRuleCondition.fromMap(
      Map<String, dynamic> map) {
    return BucketWebsiteConfigurationRoutingRuleCondition(
      httpErrorCodeReturnedEquals: map['httpErrorCodeReturnedEquals'] == null
          ? null
          : map['httpErrorCodeReturnedEquals'] as String,
      keyPrefixEquals: map['keyPrefixEquals'] == null
          ? null
          : map['keyPrefixEquals'] as String,
    );
  }
}
