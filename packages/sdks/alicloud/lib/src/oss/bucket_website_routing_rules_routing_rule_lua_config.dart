// ignore_for_file: unused_element, unnecessary_cast


class BucketWebsiteRoutingRulesRoutingRuleLuaConfig {
  /// The Lua script name.
  final String? script;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleLuaConfig].
  /// [script] The Lua script name.
  BucketWebsiteRoutingRulesRoutingRuleLuaConfig({
    this.script,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'script': ?script,
    };
  }

  factory BucketWebsiteRoutingRulesRoutingRuleLuaConfig.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteRoutingRulesRoutingRuleLuaConfig(
      script: map['script'] == null ? null : map['script'] as String,
    );
  }
}

