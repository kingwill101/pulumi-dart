// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_constraint_response.dart';

/// [Deprecated] All fields defined in a permission are ANDed.
class PermissionResponse {
  /// Extra custom constraints. The constraints are ANDed together.
  final List<PermissionConstraintResponse> constraints;

  /// Used in Ingress or Egress Gateway cases to specify hosts that the policy applies to. Exact match, prefix match, and suffix match are supported.
  final List<String> hosts;

  /// HTTP method.
  final List<String> methods;

  /// Negate of hosts. Specifies exclusions.
  final List<String> notHosts;

  /// Negate of methods. Specifies exclusions.
  final List<String> notMethods;

  /// Negate of paths. Specifies exclusions.
  final List<String> notPaths;

  /// Negate of ports. Specifies exclusions.
  final List<String> notPorts;

  /// HTTP request paths or gRPC methods. Exact match, prefix match, and suffix match are supported.
  final List<String> paths;

  /// Port names or numbers.
  final List<String> ports;

  /// Creates a new [PermissionResponse].
  /// [constraints] Extra custom constraints. The constraints are ANDed together.
  /// [hosts] Used in Ingress or Egress Gateway cases to specify hosts that the policy applies to. Exact match, prefix match, and suffix match are supported.
  /// [methods] HTTP method.
  /// [notHosts] Negate of hosts. Specifies exclusions.
  /// [notMethods] Negate of methods. Specifies exclusions.
  /// [notPaths] Negate of paths. Specifies exclusions.
  /// [notPorts] Negate of ports. Specifies exclusions.
  /// [paths] HTTP request paths or gRPC methods. Exact match, prefix match, and suffix match are supported.
  /// [ports] Port names or numbers.
  PermissionResponse({
    required this.constraints,
    required this.hosts,
    required this.methods,
    required this.notHosts,
    required this.notMethods,
    required this.notPaths,
    required this.notPorts,
    required this.paths,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['constraints'] = pulumi.Input.encodeList<PermissionConstraintResponse,
        Map<String, dynamic>>(constraints, (value) => value.toMap());
    map['hosts'] = hosts;
    map['methods'] = methods;
    map['notHosts'] = notHosts;
    map['notMethods'] = notMethods;
    map['notPaths'] = notPaths;
    map['notPorts'] = notPorts;
    map['paths'] = paths;
    map['ports'] = ports;
    return map;
  }

  factory PermissionResponse.fromMap(Map<String, dynamic> map) {
    return PermissionResponse(
      constraints: pulumi.Input.decodeList<PermissionConstraintResponse>(
          map['constraints'],
          (value) => PermissionConstraintResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      hosts: (map['hosts'] as List).cast<String>(),
      methods: (map['methods'] as List).cast<String>(),
      notHosts: (map['notHosts'] as List).cast<String>(),
      notMethods: (map['notMethods'] as List).cast<String>(),
      notPaths: (map['notPaths'] as List).cast<String>(),
      notPorts: (map['notPorts'] as List).cast<String>(),
      paths: (map['paths'] as List).cast<String>(),
      ports: (map['ports'] as List).cast<String>(),
    );
  }
}
