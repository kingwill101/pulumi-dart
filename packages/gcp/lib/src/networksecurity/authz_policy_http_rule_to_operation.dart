// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_http_rule_to_operation_header_set.dart';
import 'authz_policy_http_rule_to_operation_host.dart';
import 'authz_policy_http_rule_to_operation_path.dart';

class AuthzPolicyHttpRuleToOperation {
  /// A list of headers to match against in http header.
  /// Structure is documented below.
  final AuthzPolicyHttpRuleToOperationHeaderSet? headerSet;

  /// A list of HTTP Hosts to match against. The match can be one of exact, prefix, suffix, or contains (substring match). Matches are always case sensitive unless the ignoreCase is set.
  /// Limited to 10 matches.
  /// Structure is documented below.
  final List<AuthzPolicyHttpRuleToOperationHost>? hosts;

  /// A list of HTTP methods to match against. Each entry must be a valid HTTP method name (GET, PUT, POST, HEAD, PATCH, DELETE, OPTIONS). It only allows exact match and is always case sensitive.
  final List<String>? methods;

  /// A list of paths to match against. The match can be one of exact, prefix, suffix, or contains (substring match). Matches are always case sensitive unless the ignoreCase is set.
  /// Limited to 10 matches.
  /// Note that this path match includes the query parameters. For gRPC services, this should be a fully-qualified name of the form /package.service/method.
  /// Structure is documented below.
  final List<AuthzPolicyHttpRuleToOperationPath>? paths;

  /// Creates a new [AuthzPolicyHttpRuleToOperation].
  /// [headerSet] A list of headers to match against in http header.
  /// [hosts] A list of HTTP Hosts to match against. The match can be one of exact, prefix, suffix, or contains (substring match). Matches are always case sensitive unless the ignoreCase is set.
  /// [methods] A list of HTTP methods to match against. Each entry must be a valid HTTP method name (GET, PUT, POST, HEAD, PATCH, DELETE, OPTIONS). It only allows exact match and is always case sensitive.
  /// [paths] A list of paths to match against. The match can be one of exact, prefix, suffix, or contains (substring match). Matches are always case sensitive unless the ignoreCase is set.
  AuthzPolicyHttpRuleToOperation({
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
      map['hosts'] = pulumi.Input.encodeList<AuthzPolicyHttpRuleToOperationHost,
          Map<String, dynamic>>(hostsValue, (value) => value.toMap());
    }
    final methodsValue = methods;
    if (methodsValue != null) {
      map['methods'] = methodsValue;
    }
    final pathsValue = paths;
    if (pathsValue != null) {
      map['paths'] = pulumi.Input.encodeList<AuthzPolicyHttpRuleToOperationPath,
          Map<String, dynamic>>(pathsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AuthzPolicyHttpRuleToOperation.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleToOperation(
      headerSet: map['headerSet'] == null
          ? null
          : AuthzPolicyHttpRuleToOperationHeaderSet.fromMap(
              (map['headerSet'] as Map).cast<String, dynamic>()),
      hosts: map['hosts'] == null
          ? null
          : pulumi.Input.decodeList<AuthzPolicyHttpRuleToOperationHost>(
              map['hosts'],
              (value) => AuthzPolicyHttpRuleToOperationHost.fromMap(
                  (value as Map).cast<String, dynamic>())),
      methods: map['methods'] == null
          ? null
          : (map['methods'] as List).cast<String>(),
      paths: map['paths'] == null
          ? null
          : pulumi.Input.decodeList<AuthzPolicyHttpRuleToOperationPath>(
              map['paths'],
              (value) => AuthzPolicyHttpRuleToOperationPath.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
