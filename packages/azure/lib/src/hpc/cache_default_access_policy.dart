// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_default_access_policy_access_rule.dart';

class CacheDefaultAccessPolicy {
  /// One or more `access_rule` blocks (up to three) as defined above.
  final List<CacheDefaultAccessPolicyAccessRule> accessRules;

  /// Creates a new [CacheDefaultAccessPolicy].
  /// [accessRules] One or more `access_rule` blocks (up to three) as defined above.
  CacheDefaultAccessPolicy({
    required this.accessRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRules': pulumi.Input.encodeList<CacheDefaultAccessPolicyAccessRule, Map<String, dynamic>>(accessRules, (value) => value.toMap()),
    };
  }

  factory CacheDefaultAccessPolicy.fromMap(Map<String, dynamic> map) {
    return CacheDefaultAccessPolicy(
      accessRules: pulumi.Input.decodeList<CacheDefaultAccessPolicyAccessRule>(map['accessRules'], (value) => CacheDefaultAccessPolicyAccessRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

