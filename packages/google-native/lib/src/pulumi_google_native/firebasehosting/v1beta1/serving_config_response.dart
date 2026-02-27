// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_response_firebasehosting_v1beta1.dart';
import 'i18n_config_response.dart';
import 'redirect_response.dart';
import 'rewrite_response.dart';

/// The configuration for how incoming requests to a site should be routed and processed before serving content. The URL request paths are matched against the specified URL patterns in the configuration, then Hosting applies the applicable configuration according to a specific [priority order](https://firebase.google.com/docs/hosting/full-config#hosting_priority_order).
class ServingConfigResponse {
  /// How to handle well known App Association files.
  final String appAssociation;

  /// Defines whether to drop the file extension from uploaded files.
  final bool cleanUrls;

  /// An array of objects, where each object specifies a URL pattern that, if matched to the request URL path, triggers Hosting to apply the specified custom response headers.
  final List<HeaderResponseFirebasehostingV1beta1> headers;

  /// Optional. Defines i18n rewrite behavior.
  final I18nConfigResponse i18n;

  /// An array of objects (called redirect rules), where each rule specifies a URL pattern that, if matched to the request URL path, triggers Hosting to respond with a redirect to the specified destination path.
  final List<RedirectResponse> redirects;

  /// An array of objects (called rewrite rules), where each rule specifies a URL pattern that, if matched to the request URL path, triggers Hosting to respond as if the service were given the specified destination URL.
  final List<RewriteResponse> rewrites;

  /// Defines how to handle a trailing slash in the URL path.
  final String trailingSlashBehavior;

  ServingConfigResponse({
    required this.appAssociation,
    required this.cleanUrls,
    required this.headers,
    required this.i18n,
    required this.redirects,
    required this.rewrites,
    required this.trailingSlashBehavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appAssociation'] = appAssociation;
    map['cleanUrls'] = cleanUrls;
    map['headers'] = pulumi.Input.encodeList<
        HeaderResponseFirebasehostingV1beta1,
        Map<String, dynamic>>(headers, (value) => value.toMap());
    map['i18n'] = i18n.toMap();
    map['redirects'] =
        pulumi.Input.encodeList<RedirectResponse, Map<String, dynamic>>(
            redirects, (value) => value.toMap());
    map['rewrites'] =
        pulumi.Input.encodeList<RewriteResponse, Map<String, dynamic>>(
            rewrites, (value) => value.toMap());
    map['trailingSlashBehavior'] = trailingSlashBehavior;
    return map;
  }

  factory ServingConfigResponse.fromMap(Map<String, dynamic> map) {
    return ServingConfigResponse(
      appAssociation: map['appAssociation'] as String,
      cleanUrls: map['cleanUrls'] as bool,
      headers: pulumi.Input.decodeList<HeaderResponseFirebasehostingV1beta1>(
          map['headers'],
          (value) => HeaderResponseFirebasehostingV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
      i18n: I18nConfigResponse.fromMap(
          (map['i18n'] as Map).cast<String, dynamic>()),
      redirects: pulumi.Input.decodeList<RedirectResponse>(
          map['redirects'],
          (value) =>
              RedirectResponse.fromMap((value as Map).cast<String, dynamic>())),
      rewrites: pulumi.Input.decodeList<RewriteResponse>(
          map['rewrites'],
          (value) =>
              RewriteResponse.fromMap((value as Map).cast<String, dynamic>())),
      trailingSlashBehavior: map['trailingSlashBehavior'] as String,
    );
  }
}
