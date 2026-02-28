// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_http_rule_to_not_operation_header_set.dart';
import 'authz_policy_http_rule_to_not_operation_host.dart';
import 'authz_policy_http_rule_to_not_operation_path.dart';

class AuthzPolicyHttpRuleToNotOperation {
  /// A list of headers to match against in http header.
  /// Structure is documented below.
  final AuthzPolicyHttpRuleToNotOperationHeaderSet? headerSet;

  /// A list of HTTP Hosts to match against. The match can be one of exact, prefix, suffix, or contains (substring match). Matches are always case sensitive unless the ignoreCase is set.
  /// Limited to 10 matches.
  /// Structure is documented below.
  final List<AuthzPolicyHttpRuleToNotOperationHost>? hosts;

  /// A list of HTTP methods to match against. Each entry must be a valid HTTP method name (GET, PUT, POST, HEAD, PATCH, DELETE, OPTIONS). It only allows exact match and is always case sensitive.
  final List<String>? methods;

  /// A list of paths to match against. The match can be one of exact, prefix, suffix, or contains (substring match). Matches are always case sensitive unless the ignoreCase is set.
  /// Limited to 10 matches.
  /// Note that this path match includes the query parameters. For gRPC services, this should be a fully-qualified name of the form /package.service/method.
  /// Structure is documented below.
  final List<AuthzPolicyHttpRuleToNotOperationPath>? paths;

  /// Creates a new [AuthzPolicyHttpRuleToNotOperation].
  /// [headerSet] A list of headers to match against in http header.
  /// [hosts] A list of HTTP Hosts to match against. The match can be one of exact, prefix, suffix, or contains (substring match). Matches are always case sensitive unless the ignoreCase is set.
  /// [methods] A list of HTTP methods to match against. Each entry must be a valid HTTP method name (GET, PUT, POST, HEAD, PATCH, DELETE, OPTIONS). It only allows exact match and is always case sensitive.
  /// [paths] A list of paths to match against. The match can be one of exact, prefix, suffix, or contains (substring match). Matches are always case sensitive unless the ignoreCase is set.
  AuthzPolicyHttpRuleToNotOperation({
    this.headerSet,
    this.hosts,
    this.methods,
    this.paths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headerSetValue = headerSet;
    if (headerSetValue != null) {
      map['headerSet'] = headerSetValue.toMap();
    }
    final hostsValue = hosts;
    if (hostsValue != null) {
      map['hosts'] = pulumi.Input.encodeList<
          AuthzPolicyHttpRuleToNotOperationHost,
          Map<String, dynamic>>(hostsValue, (value) => value.toMap());
    }
    final methodsValue = methods;
    if (methodsValue != null) {
      map['methods'] = methodsValue;
    }
    final pathsValue = paths;
    if (pathsValue != null) {
      map['paths'] = pulumi.Input.encodeList<
          AuthzPolicyHttpRuleToNotOperationPath,
          Map<String, dynamic>>(pathsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AuthzPolicyHttpRuleToNotOperation.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleToNotOperation(
      headerSet: map['headerSet'] == null
          ? null
          : AuthzPolicyHttpRuleToNotOperationHeaderSet.fromMap(
              (map['headerSet'] as Map).cast<String, dynamic>()),
      hosts: map['hosts'] == null
          ? null
          : pulumi.Input.decodeList<AuthzPolicyHttpRuleToNotOperationHost>(
              map['hosts'],
              (value) => AuthzPolicyHttpRuleToNotOperationHost.fromMap(
                  (value as Map).cast<String, dynamic>())),
      methods: map['methods'] == null
          ? null
          : (map['methods'] as List).cast<String>(),
      paths: map['paths'] == null
          ? null
          : pulumi.Input.decodeList<AuthzPolicyHttpRuleToNotOperationPath>(
              map['paths'],
              (value) => AuthzPolicyHttpRuleToNotOperationPath.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
