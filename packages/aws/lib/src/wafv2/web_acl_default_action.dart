// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_default_action_allow.dart';
import 'web_acl_default_action_block.dart';

class WebAclDefaultAction {
  /// Specifies that AWS WAF should allow requests by default. See `allow` below for details.
  final WebAclDefaultActionAllow? allow;

  /// Specifies that AWS WAF should block requests by default. See `block` below for details.
  final WebAclDefaultActionBlock? block;

  /// Creates a new [WebAclDefaultAction].
  /// [allow] Specifies that AWS WAF should allow requests by default. See `allow` below for details.
  /// [block] Specifies that AWS WAF should block requests by default. See `block` below for details.
  WebAclDefaultAction({
    this.allow,
    this.block,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowValue = allow;
    if (allowValue != null) {
      map['allow'] = allowValue.toMap();
    }
    final blockValue = block;
    if (blockValue != null) {
      map['block'] = blockValue.toMap();
    }
    return map;
  }

  factory WebAclDefaultAction.fromMap(Map<String, dynamic> map) {
    return WebAclDefaultAction(
      allow: map['allow'] == null
          ? null
          : WebAclDefaultActionAllow.fromMap(
              (map['allow'] as Map).cast<String, dynamic>()),
      block: map['block'] == null
          ? null
          : WebAclDefaultActionBlock.fromMap(
              (map['block'] as Map).cast<String, dynamic>()),
    );
  }
}
