// ignore_for_file: unused_element, unnecessary_cast


class GetContainerGroupsGroupContainerPort {
  /// The port number. Valid values: 1 to 65535.
  final int port;
  /// Valid values: `TCP` and `UDP`.
  final String protocol;

  /// Creates a new [GetContainerGroupsGroupContainerPort].
  /// [port] The port number. Valid values: 1 to 65535.
  /// [protocol] Valid values: `TCP` and `UDP`.
  GetContainerGroupsGroupContainerPort({
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'protocol': protocol,
    };
  }

  factory GetContainerGroupsGroupContainerPort.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupContainerPort(
      port: map['port'] as int,
      protocol: map['protocol'] as String,
    );
  }
}

