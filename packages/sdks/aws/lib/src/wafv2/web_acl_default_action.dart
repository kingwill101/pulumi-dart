// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_default_action_allow.dart';
import 'web_acl_default_action_block.dart';

class WebAclDefaultAction {
  /// Specifies that AWS WAF should allow requests by default. See `allow` below for details.
  final pulumi.Input<WebAclDefaultActionAllow?>? allow;
  /// Specifies that AWS WAF should block requests by default. See `block` below for details.
  final pulumi.Input<WebAclDefaultActionBlock?>? block;

  /// Creates a new [WebAclDefaultAction].
  /// [allow] Specifies that AWS WAF should allow requests by default. See `allow` below for details.
  /// [block] Specifies that AWS WAF should block requests by default. See `block` below for details.
  const WebAclDefaultAction({
    this.allow,
    this.block,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?pulumi.Input.mapOptionalInputValue<WebAclDefaultActionAllow, Map<String, dynamic>>(allow, (value) => value.toMap()),
      'block': ?pulumi.Input.mapOptionalInputValue<WebAclDefaultActionBlock, Map<String, dynamic>>(block, (value) => value.toMap()),
    };
  }

  factory WebAclDefaultAction.fromMap(Map<String, dynamic> map) {
    return WebAclDefaultAction(
      allow: (() { final guardedValue = map['allow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclDefaultActionAllow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      block: (() { final guardedValue = map['block']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclDefaultActionBlock.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
