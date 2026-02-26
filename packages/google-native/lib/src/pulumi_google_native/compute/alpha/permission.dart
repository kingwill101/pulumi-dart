// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
    final map = <String, dynamic>{};
    final constraintsValue = constraints;
    if (constraintsValue != null) {
      map['constraints'] =
          Input.encodeList<PermissionConstraint, Map<String, dynamic>>(
              constraintsValue, (value) => value.toMap());
    }
    final hostsValue = hosts;
    if (hostsValue != null) {
      map['hosts'] = hostsValue;
    }
    final methodsValue = methods;
    if (methodsValue != null) {
      map['methods'] = methodsValue;
    }
    final notHostsValue = notHosts;
    if (notHostsValue != null) {
      map['notHosts'] = notHostsValue;
    }
    final notMethodsValue = notMethods;
    if (notMethodsValue != null) {
      map['notMethods'] = notMethodsValue;
    }
    final notPathsValue = notPaths;
    if (notPathsValue != null) {
      map['notPaths'] = notPathsValue;
    }
    final notPortsValue = notPorts;
    if (notPortsValue != null) {
      map['notPorts'] = notPortsValue;
    }
    final pathsValue = paths;
    if (pathsValue != null) {
      map['paths'] = pathsValue;
    }
    final portsValue = ports;
    if (portsValue != null) {
      map['ports'] = portsValue;
    }
    return map;
  }

  factory Permission.fromMap(Map<String, dynamic> map) {
    return Permission(
      constraints: map['constraints'] == null
          ? null
          : Input.decodeList<PermissionConstraint>(
              map['constraints'],
              (value) => PermissionConstraint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      hosts:
          map['hosts'] == null ? null : (map['hosts'] as List).cast<String>(),
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
      paths:
          map['paths'] == null ? null : (map['paths'] as List).cast<String>(),
      ports:
          map['ports'] == null ? null : (map['ports'] as List).cast<String>(),
    );
  }
}
