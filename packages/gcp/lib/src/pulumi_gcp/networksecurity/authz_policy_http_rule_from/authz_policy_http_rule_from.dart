// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../authz_policy_http_rule_from_not_source/authz_policy_http_rule_from_not_source.dart';
import '../authz_policy_http_rule_from_source/authz_policy_http_rule_from_source.dart';

class AuthzPolicyHttpRuleFrom {
  /// Describes the negated properties of request sources. Matches requests from sources that do not match the criteria specified in this field. At least one of sources or notSources must be specified. Limited to 1 not_source.
  /// Structure is documented below.
  final List<AuthzPolicyHttpRuleFromNotSource>? notSources;

  /// Describes the properties of a request's sources. At least one of sources or notSources must be specified. Limited to 1 source. A match occurs when ANY source (in sources or notSources) matches the request. Within a single source, the match follows AND semantics across fields and OR semantics within a single field, i.e. a match occurs when ANY principal matches AND ANY ipBlocks match.
  /// Structure is documented below.
  final List<AuthzPolicyHttpRuleFromSource>? sources;

  AuthzPolicyHttpRuleFrom({
    this.notSources,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final notSourcesValue = notSources;
    if (notSourcesValue != null) {
      map['notSources'] = Input.encodeList<AuthzPolicyHttpRuleFromNotSource,
          Map<String, dynamic>>(notSourcesValue, (value) => value.toMap());
    }
    final sourcesValue = sources;
    if (sourcesValue != null) {
      map['sources'] =
          Input.encodeList<AuthzPolicyHttpRuleFromSource, Map<String, dynamic>>(
              sourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AuthzPolicyHttpRuleFrom.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFrom(
      notSources: map['notSources'] == null
          ? null
          : Input.decodeList<AuthzPolicyHttpRuleFromNotSource>(
              map['notSources'],
              (value) => AuthzPolicyHttpRuleFromNotSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sources: map['sources'] == null
          ? null
          : Input.decodeList<AuthzPolicyHttpRuleFromSource>(
              map['sources'],
              (value) => AuthzPolicyHttpRuleFromSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
