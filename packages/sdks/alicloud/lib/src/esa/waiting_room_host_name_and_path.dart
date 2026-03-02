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
  WaitingRoomHostNameAndPath({
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
      domain: (map['domain'] as String).input(),
      path: (map['path'] as String).input(),
      subdomain: (map['subdomain'] as String).input(),
    );
  }
}

