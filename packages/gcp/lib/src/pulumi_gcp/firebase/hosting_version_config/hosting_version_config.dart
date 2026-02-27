// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../hosting_version_config_header/hosting_version_config_header.dart';
import '../hosting_version_config_redirect/hosting_version_config_redirect.dart';
import '../hosting_version_config_rewrite/hosting_version_config_rewrite.dart';

class HostingVersionConfig {
  /// An array of objects, where each object specifies a URL pattern that, if matched to the request URL path,
  /// triggers Hosting to apply the specified custom response headers.
  /// Structure is documented below.
  final List<HostingVersionConfigHeader>? headers;

  /// An array of objects (called redirect rules), where each rule specifies a URL pattern that, if matched to the request URL path,
  /// triggers Hosting to respond with a redirect to the specified destination path.
  /// Structure is documented below.
  final List<HostingVersionConfigRedirect>? redirects;

  /// An array of objects (called rewrite rules), where each rule specifies a URL pattern that, if matched to the
  /// request URL path, triggers Hosting to respond as if the service were given the specified destination URL.
  /// Structure is documented below.
  final List<HostingVersionConfigRewrite>? rewrites;

  HostingVersionConfig({
    this.headers,
    this.redirects,
    this.rewrites,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = pulumi.Input.encodeList<HostingVersionConfigHeader,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
    }
    final redirectsValue = redirects;
    if (redirectsValue != null) {
      map['redirects'] = pulumi.Input.encodeList<HostingVersionConfigRedirect,
          Map<String, dynamic>>(redirectsValue, (value) => value.toMap());
    }
    final rewritesValue = rewrites;
    if (rewritesValue != null) {
      map['rewrites'] = pulumi.Input.encodeList<HostingVersionConfigRewrite,
          Map<String, dynamic>>(rewritesValue, (value) => value.toMap());
    }
    return map;
  }

  factory HostingVersionConfig.fromMap(Map<String, dynamic> map) {
    return HostingVersionConfig(
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<HostingVersionConfigHeader>(
              map['headers'],
              (value) => HostingVersionConfigHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      redirects: map['redirects'] == null
          ? null
          : pulumi.Input.decodeList<HostingVersionConfigRedirect>(
              map['redirects'],
              (value) => HostingVersionConfigRedirect.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rewrites: map['rewrites'] == null
          ? null
          : pulumi.Input.decodeList<HostingVersionConfigRewrite>(
              map['rewrites'],
              (value) => HostingVersionConfigRewrite.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
