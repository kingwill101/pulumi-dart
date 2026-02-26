// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'header5.dart';
import 'i18n_config.dart';
import 'redirect.dart';
import 'rewrite.dart';
import 'serving_config_app_association.dart';
import 'serving_config_trailing_slash_behavior.dart';

/// The configuration for how incoming requests to a site should be routed and processed before serving content. The URL request paths are matched against the specified URL patterns in the configuration, then Hosting applies the applicable configuration according to a specific [priority order](https://firebase.google.com/docs/hosting/full-config#hosting_priority_order).
class ServingConfig {
  /// How to handle well known App Association files.
  final ServingConfigAppAssociation? appAssociation;

  /// Defines whether to drop the file extension from uploaded files.
  final bool? cleanUrls;

  /// An array of objects, where each object specifies a URL pattern that, if matched to the request URL path, triggers Hosting to apply the specified custom response headers.
  final List<Header5>? headers;

  /// Optional. Defines i18n rewrite behavior.
  final I18nConfig? i18n;

  /// An array of objects (called redirect rules), where each rule specifies a URL pattern that, if matched to the request URL path, triggers Hosting to respond with a redirect to the specified destination path.
  final List<Redirect>? redirects;

  /// An array of objects (called rewrite rules), where each rule specifies a URL pattern that, if matched to the request URL path, triggers Hosting to respond as if the service were given the specified destination URL.
  final List<Rewrite>? rewrites;

  /// Defines how to handle a trailing slash in the URL path.
  final ServingConfigTrailingSlashBehavior? trailingSlashBehavior;

  ServingConfig({
    this.appAssociation,
    this.cleanUrls,
    this.headers,
    this.i18n,
    this.redirects,
    this.rewrites,
    this.trailingSlashBehavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appAssociationValue = appAssociation;
    if (appAssociationValue != null) {
      map['appAssociation'] = appAssociationValue.value;
    }
    final cleanUrlsValue = cleanUrls;
    if (cleanUrlsValue != null) {
      map['cleanUrls'] = cleanUrlsValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = Input.encodeList<Header5, Map<String, dynamic>>(
          headersValue, (value) => value.toMap());
    }
    final i18nValue = i18n;
    if (i18nValue != null) {
      map['i18n'] = i18nValue.toMap();
    }
    final redirectsValue = redirects;
    if (redirectsValue != null) {
      map['redirects'] = Input.encodeList<Redirect, Map<String, dynamic>>(
          redirectsValue, (value) => value.toMap());
    }
    final rewritesValue = rewrites;
    if (rewritesValue != null) {
      map['rewrites'] = Input.encodeList<Rewrite, Map<String, dynamic>>(
          rewritesValue, (value) => value.toMap());
    }
    final trailingSlashBehaviorValue = trailingSlashBehavior;
    if (trailingSlashBehaviorValue != null) {
      map['trailingSlashBehavior'] = trailingSlashBehaviorValue.value;
    }
    return map;
  }

  factory ServingConfig.fromMap(Map<String, dynamic> map) {
    return ServingConfig(
      appAssociation: map['appAssociation'] == null
          ? null
          : ServingConfigAppAssociation.fromValue(
              map['appAssociation'] as String),
      cleanUrls: map['cleanUrls'] == null ? null : map['cleanUrls'] as bool,
      headers: map['headers'] == null
          ? null
          : Input.decodeList<Header5>(
              map['headers'],
              (value) =>
                  Header5.fromMap((value as Map).cast<String, dynamic>())),
      i18n: map['i18n'] == null
          ? null
          : I18nConfig.fromMap((map['i18n'] as Map).cast<String, dynamic>()),
      redirects: map['redirects'] == null
          ? null
          : Input.decodeList<Redirect>(
              map['redirects'],
              (value) =>
                  Redirect.fromMap((value as Map).cast<String, dynamic>())),
      rewrites: map['rewrites'] == null
          ? null
          : Input.decodeList<Rewrite>(
              map['rewrites'],
              (value) =>
                  Rewrite.fromMap((value as Map).cast<String, dynamic>())),
      trailingSlashBehavior: map['trailingSlashBehavior'] == null
          ? null
          : ServingConfigTrailingSlashBehavior.fromValue(
              map['trailingSlashBehavior'] as String),
    );
  }
}
