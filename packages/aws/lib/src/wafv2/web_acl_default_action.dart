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
    return <String, dynamic>{
      'allow': ?allow == null ? null : allow!.toMap(),
      'block': ?block == null ? null : block!.toMap(),
    };
  }

  factory WebAclDefaultAction.fromMap(Map<String, dynamic> map) {
    return WebAclDefaultAction(
      allow: map['allow'] == null ? null : WebAclDefaultActionAllow.fromMap((map['allow'] as Map).cast<String, dynamic>()),
      block: map['block'] == null ? null : WebAclDefaultActionBlock.fromMap((map['block'] as Map).cast<String, dynamic>()),
    );
  }
}

