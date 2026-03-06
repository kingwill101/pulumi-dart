// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketWebsiteConfigurationV2RoutingRuleRedirect {
  /// Host name to use in the redirect request.
  final pulumi.Input<String>? hostName;
  /// HTTP redirect code to use on the response.
  final pulumi.Input<String>? httpRedirectCode;
  /// Protocol to use when redirecting requests. The default is the protocol that is used in the original request. Valid values: `http`, `https`.
  final pulumi.Input<String>? protocol;
  /// Object key prefix to use in the redirect request. For example, to redirect requests for all pages with prefix `docs/` (objects in the `docs/` folder) to `documents/`, you can set a `condition` block with `key_prefix_equals` set to `docs/` and in the `redirect` set `replace_key_prefix_with` to `/documents`.
  final pulumi.Input<String>? replaceKeyPrefixWith;
  /// Specific object key to use in the redirect request. For example, redirect request to `error.html`.
  final pulumi.Input<String>? replaceKeyWith;

  /// Creates a new [BucketWebsiteConfigurationV2RoutingRuleRedirect].
  /// [hostName] Host name to use in the redirect request.
  /// [httpRedirectCode] HTTP redirect code to use on the response.
  /// [protocol] Protocol to use when redirecting requests. The default is the protocol that is used in the original request. Valid values: `http`, `https`.
  /// [replaceKeyPrefixWith] Object key prefix to use in the redirect request. For example, to redirect requests for all pages with prefix `docs/` (objects in the `docs/` folder) to `documents/`, you can set a `condition` block with `key_prefix_equals` set to `docs/` and in the `redirect` set `replace_key_prefix_with` to `/documents`.
  /// [replaceKeyWith] Specific object key to use in the redirect request. For example, redirect request to `error.html`.
  const BucketWebsiteConfigurationV2RoutingRuleRedirect({
    this.hostName,
    this.httpRedirectCode,
    this.protocol,
    this.replaceKeyPrefixWith,
    this.replaceKeyWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': ?hostName,
      'httpRedirectCode': ?httpRedirectCode,
      'protocol': ?protocol,
      'replaceKeyPrefixWith': ?replaceKeyPrefixWith,
      'replaceKeyWith': ?replaceKeyWith,
    };
  }

  factory BucketWebsiteConfigurationV2RoutingRuleRedirect.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteConfigurationV2RoutingRuleRedirect(
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpRedirectCode: (() { final guardedValue = map['httpRedirectCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replaceKeyPrefixWith: (() { final guardedValue = map['replaceKeyPrefixWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replaceKeyWith: (() { final guardedValue = map['replaceKeyWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

