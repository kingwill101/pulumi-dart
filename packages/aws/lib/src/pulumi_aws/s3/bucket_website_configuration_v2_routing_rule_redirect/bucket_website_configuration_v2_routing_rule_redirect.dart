// ignore_for_file: unused_element, unnecessary_cast

class BucketWebsiteConfigurationV2RoutingRuleRedirect {
  /// Host name to use in the redirect request.
  final String? hostName;

  /// HTTP redirect code to use on the response.
  final String? httpRedirectCode;

  /// Protocol to use when redirecting requests. The default is the protocol that is used in the original request. Valid values: <span pulumi-lang-nodejs="`http`" pulumi-lang-dotnet="`Http`" pulumi-lang-go="`http`" pulumi-lang-python="`http`" pulumi-lang-yaml="`http`" pulumi-lang-java="`http`">`http`</span>, <span pulumi-lang-nodejs="`https`" pulumi-lang-dotnet="`Https`" pulumi-lang-go="`https`" pulumi-lang-python="`https`" pulumi-lang-yaml="`https`" pulumi-lang-java="`https`">`https`</span>.
  final String? protocol;

  /// Object key prefix to use in the redirect request. For example, to redirect requests for all pages with prefix `docs/` (objects in the `docs/` folder) to `documents/`, you can set a <span pulumi-lang-nodejs="`condition`" pulumi-lang-dotnet="`Condition`" pulumi-lang-go="`condition`" pulumi-lang-python="`condition`" pulumi-lang-yaml="`condition`" pulumi-lang-java="`condition`">`condition`</span> block with <span pulumi-lang-nodejs="`keyPrefixEquals`" pulumi-lang-dotnet="`KeyPrefixEquals`" pulumi-lang-go="`keyPrefixEquals`" pulumi-lang-python="`key_prefix_equals`" pulumi-lang-yaml="`keyPrefixEquals`" pulumi-lang-java="`keyPrefixEquals`">`key_prefix_equals`</span> set to `docs/` and in the <span pulumi-lang-nodejs="`redirect`" pulumi-lang-dotnet="`Redirect`" pulumi-lang-go="`redirect`" pulumi-lang-python="`redirect`" pulumi-lang-yaml="`redirect`" pulumi-lang-java="`redirect`">`redirect`</span> set <span pulumi-lang-nodejs="`replaceKeyPrefixWith`" pulumi-lang-dotnet="`ReplaceKeyPrefixWith`" pulumi-lang-go="`replaceKeyPrefixWith`" pulumi-lang-python="`replace_key_prefix_with`" pulumi-lang-yaml="`replaceKeyPrefixWith`" pulumi-lang-java="`replaceKeyPrefixWith`">`replace_key_prefix_with`</span> to `/documents`.
  final String? replaceKeyPrefixWith;

  /// Specific object key to use in the redirect request. For example, redirect request to `error.html`.
  final String? replaceKeyWith;

  BucketWebsiteConfigurationV2RoutingRuleRedirect({
    this.hostName,
    this.httpRedirectCode,
    this.protocol,
    this.replaceKeyPrefixWith,
    this.replaceKeyWith,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostNameValue = hostName;
    if (hostNameValue != null) {
      map['hostName'] = hostNameValue;
    }
    final httpRedirectCodeValue = httpRedirectCode;
    if (httpRedirectCodeValue != null) {
      map['httpRedirectCode'] = httpRedirectCodeValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final replaceKeyPrefixWithValue = replaceKeyPrefixWith;
    if (replaceKeyPrefixWithValue != null) {
      map['replaceKeyPrefixWith'] = replaceKeyPrefixWithValue;
    }
    final replaceKeyWithValue = replaceKeyWith;
    if (replaceKeyWithValue != null) {
      map['replaceKeyWith'] = replaceKeyWithValue;
    }
    return map;
  }

  factory BucketWebsiteConfigurationV2RoutingRuleRedirect.fromMap(
      Map<String, dynamic> map) {
    return BucketWebsiteConfigurationV2RoutingRuleRedirect(
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      httpRedirectCode: map['httpRedirectCode'] == null
          ? null
          : map['httpRedirectCode'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      replaceKeyPrefixWith: map['replaceKeyPrefixWith'] == null
          ? null
          : map['replaceKeyPrefixWith'] as String,
      replaceKeyWith: map['replaceKeyWith'] == null
          ? null
          : map['replaceKeyWith'] as String,
    );
  }
}
