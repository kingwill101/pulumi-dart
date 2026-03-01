// ignore_for_file: unused_element, unnecessary_cast


class FastUdpAppPoolMember {
  /// List of server address to be used for FAST-Generated Pool.
  final List<String> addresses;
  /// connectionLimit value to be used for FAST-Generated Pool.
  final int? connectionLimit;
  /// port number of serviceport to be used for FAST-Generated Pool.
  final int? port;
  /// priorityGroup value to be used for FAST-Generated Pool.
  final int? priorityGroup;
  /// shareNodes value to be used for FAST-Generated Pool.
  final bool? shareNodes;

  /// Creates a new [FastUdpAppPoolMember].
  /// [addresses] List of server address to be used for FAST-Generated Pool.
  /// [connectionLimit] connectionLimit value to be used for FAST-Generated Pool.
  /// [port] port number of serviceport to be used for FAST-Generated Pool.
  /// [priorityGroup] priorityGroup value to be used for FAST-Generated Pool.
  /// [shareNodes] shareNodes value to be used for FAST-Generated Pool.
  FastUdpAppPoolMember({
    required this.addresses,
    this.connectionLimit,
    this.port,
    this.priorityGroup,
    this.shareNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': addresses,
      'connectionLimit': ?connectionLimit,
      'port': ?port,
      'priorityGroup': ?priorityGroup,
      'shareNodes': ?shareNodes,
    };
  }

  factory FastUdpAppPoolMember.fromMap(Map<String, dynamic> map) {
    return FastUdpAppPoolMember(
      addresses: (map['addresses'] as List).cast<String>(),
      connectionLimit: map['connectionLimit'] == null ? null : map['connectionLimit'] as int,
      port: map['port'] == null ? null : map['port'] as int,
      priorityGroup: map['priorityGroup'] == null ? null : map['priorityGroup'] as int,
      shareNodes: map['shareNodes'] == null ? null : map['shareNodes'] as bool,
    );
  }
}

