// ignore_for_file: unused_element, unnecessary_cast


class GetContainerGroupsGroupInitContainerPort {
  /// The port number. Valid values: 1 to 65535.
  final int port;
  /// Valid values: `TCP` and `UDP`.
  final String protocol;

  /// Creates a new [GetContainerGroupsGroupInitContainerPort].
  /// [port] The port number. Valid values: 1 to 65535.
  /// [protocol] Valid values: `TCP` and `UDP`.
  GetContainerGroupsGroupInitContainerPort({
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'protocol': protocol,
    };
  }

  factory GetContainerGroupsGroupInitContainerPort.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupInitContainerPort(
      port: map['port'] as int,
      protocol: map['protocol'] as String,
    );
  }
}

