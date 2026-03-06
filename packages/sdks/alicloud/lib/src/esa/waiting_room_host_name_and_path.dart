// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WaitingRoomHostNameAndPath {
  /// The domain name.
  final pulumi.Input<String> domain;
  /// The path.
  final pulumi.Input<String> path;
  /// The subdomain.
  final pulumi.Input<String> subdomain;

  /// Creates a new [WaitingRoomHostNameAndPath].
  /// [domain] The domain name.
  /// [path] The path.
  /// [subdomain] The subdomain.
  const WaitingRoomHostNameAndPath({
    required this.domain,
    required this.path,
    required this.subdomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'path': path,
      'subdomain': subdomain,
    };
  }

  factory WaitingRoomHostNameAndPath.fromMap(Map<String, dynamic> map) {
    return WaitingRoomHostNameAndPath(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      subdomain: pulumi.Input.fromValue(map['subdomain'] as String),
    );
  }
}

