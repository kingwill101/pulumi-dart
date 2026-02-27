// ignore_for_file: unused_element, unnecessary_cast

class BucketWebsiteConfigurationV2RoutingRuleRedirect {
  /// Host name to use in the redirect request.
  final String? hostName;

  /// HTTP redirect code to use on the response.
  final String? httpRedirectCode;

  /// Protocol to use when redirecting requests. The default is the protocol that is used in the original request. Valid values: `http`, `https`.
  final String? protocol;

  /// Object key prefix to use in the redirect request. For example, to redirect requests for all pages with prefix `docs/` (objects in the `docs/` folder) to `documents/`, you can set a `condition` block with `key_prefix_equals` set to `docs/` and in the `redirect` set `replace_key_prefix_with` to `/documents`.
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
