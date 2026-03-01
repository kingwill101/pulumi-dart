// ignore_for_file: unused_element, unnecessary_cast


class WaitingRoomHostNameAndPath {
  /// The domain name.
  final String domain;
  /// The path.
  final String path;
  /// The subdomain.
  final String subdomain;

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
      domain: map['domain'] as String,
      path: map['path'] as String,
      subdomain: map['subdomain'] as String,
    );
  }
}

