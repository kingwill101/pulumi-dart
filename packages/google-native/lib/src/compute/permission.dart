// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_constraint.dart';

/// [Deprecated] All fields defined in a permission are ANDed.
class Permission {
  /// Extra custom constraints. The constraints are ANDed together.
  final List<PermissionConstraint>? constraints;

  /// Used in Ingress or Egress Gateway cases to specify hosts that the policy applies to. Exact match, prefix match, and suffix match are supported.
  final List<String>? hosts;

  /// HTTP method.
  final List<String>? methods;

  /// Negate of hosts. Specifies exclusions.
  final List<String>? notHosts;

  /// Negate of methods. Specifies exclusions.
  final List<String>? notMethods;

  /// Negate of paths. Specifies exclusions.
  final List<String>? notPaths;

  /// Negate of ports. Specifies exclusions.
  final List<String>? notPorts;

  /// HTTP request paths or gRPC methods. Exact match, prefix match, and suffix match are supported.
  final List<String>? paths;

  /// Port names or numbers.
  final List<String>? ports;

  /// Creates a new [Permission].
  /// [constraints] Extra custom constraints. The constraints are ANDed together.
  /// [hosts] Used in Ingress or Egress Gateway cases to specify hosts that the policy applies to. Exact match, prefix match, and suffix match are supported.
  /// [methods] HTTP method.
  /// [notHosts] Negate of hosts. Specifies exclusions.
  /// [notMethods] Negate of methods. Specifies exclusions.
  /// [notPaths] Negate of paths. Specifies exclusions.
  /// [notPorts] Negate of ports. Specifies exclusions.
  /// [paths] HTTP request paths or gRPC methods. Exact match, prefix match, and suffix match are supported.
  /// [ports] Port names or numbers.
  Permission({
    this.constraints,
    this.hosts,
    this.methods,
    this.notHosts,
    this.notMethods,
    this.notPaths,
    this.notPorts,
    this.paths,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': ?constraints == null
          ? null
          : pulumi.Input.encodeList<PermissionConstraint, Map<String, dynamic>>(
              constraints!,
              (value) => value.toMap(),
            ),
      'hosts': ?hosts,
      'methods': ?methods,
      'notHosts': ?notHosts,
      'notMethods': ?notMethods,
      'notPaths': ?notPaths,
      'notPorts': ?notPorts,
      'paths': ?paths,
      'ports': ?ports,
    };
  }

  factory Permission.fromMap(Map<String, dynamic> map) {
    return Permission(
      constraints: map['constraints'] == null
          ? null
          : pulumi.Input.decodeList<PermissionConstraint>(
              map['constraints'],
              (value) => PermissionConstraint.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      hosts: map['hosts'] == null
          ? null
          : (map['hosts'] as List).cast<String>(),
      methods: map['methods'] == null
          ? null
          : (map['methods'] as List).cast<String>(),
      notHosts: map['notHosts'] == null
          ? null
          : (map['notHosts'] as List).cast<String>(),
      notMethods: map['notMethods'] == null
          ? null
          : (map['notMethods'] as List).cast<String>(),
      notPaths: map['notPaths'] == null
          ? null
          : (map['notPaths'] as List).cast<String>(),
      notPorts: map['notPorts'] == null
          ? null
          : (map['notPorts'] as List).cast<String>(),
      paths: map['paths'] == null
          ? null
          : (map['paths'] as List).cast<String>(),
      ports: map['ports'] == null
          ? null
          : (map['ports'] as List).cast<String>(),
    );
  }
}
