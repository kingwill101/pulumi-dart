// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketWebsiteRoutingRulesRoutingRuleLuaConfig {
  /// The Lua script name.
  final pulumi.Input<String>? script;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleLuaConfig].
  /// [script] The Lua script name.
  BucketWebsiteRoutingRulesRoutingRuleLuaConfig({this.script});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'script': ?script};
  }

  factory BucketWebsiteRoutingRulesRoutingRuleLuaConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketWebsiteRoutingRulesRoutingRuleLuaConfig(
      script: (() {
        final guardedValue = map['script'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
