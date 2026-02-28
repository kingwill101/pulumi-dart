// ignore_for_file: unused_element, unnecessary_cast

import 'edge_cache_origin_origin_override_action_header_action.dart';
import 'edge_cache_origin_origin_override_action_url_rewrite.dart';

class EdgeCacheOriginOriginOverrideAction {
  /// The header actions, including adding and removing
  /// headers, for request handled by this origin.
  /// Structure is documented below.
  final EdgeCacheOriginOriginOverrideActionHeaderAction? headerAction;

  /// The URL rewrite configuration for request that are
  /// handled by this origin.
  /// Structure is documented below.
  final EdgeCacheOriginOriginOverrideActionUrlRewrite? urlRewrite;

  /// Creates a new [EdgeCacheOriginOriginOverrideAction].
  /// [headerAction] The header actions, including adding and removing
  /// [urlRewrite] The URL rewrite configuration for request that are
  EdgeCacheOriginOriginOverrideAction({
    this.headerAction,
    this.urlRewrite,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headerActionValue = headerAction;
    if (headerActionValue != null) {
      map['headerAction'] = headerActionValue.toMap();
    }
    final urlRewriteValue = urlRewrite;
    if (urlRewriteValue != null) {
      map['urlRewrite'] = urlRewriteValue.toMap();
    }
    return map;
  }

  factory EdgeCacheOriginOriginOverrideAction.fromMap(
      Map<String, dynamic> map) {
    return EdgeCacheOriginOriginOverrideAction(
      headerAction: map['headerAction'] == null
          ? null
          : EdgeCacheOriginOriginOverrideActionHeaderAction.fromMap(
              (map['headerAction'] as Map).cast<String, dynamic>()),
      urlRewrite: map['urlRewrite'] == null
          ? null
          : EdgeCacheOriginOriginOverrideActionUrlRewrite.fromMap(
              (map['urlRewrite'] as Map).cast<String, dynamic>()),
    );
  }
}
