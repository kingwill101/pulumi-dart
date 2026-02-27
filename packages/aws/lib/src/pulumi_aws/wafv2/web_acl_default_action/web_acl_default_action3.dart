// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_default_action_allow/web_acl_default_action_allow.dart';
import '../web_acl_default_action_block/web_acl_default_action_block.dart';

class WebAclDefaultAction3 {
  /// Specifies that AWS WAF should allow requests by default. See `allow` below for details.
  final WebAclDefaultActionAllow? allow;

  /// Specifies that AWS WAF should block requests by default. See `block` below for details.
  final WebAclDefaultActionBlock? block;

  WebAclDefaultAction3({
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

  factory WebAclDefaultAction3.fromMap(Map<String, dynamic> map) {
    return WebAclDefaultAction3(
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
