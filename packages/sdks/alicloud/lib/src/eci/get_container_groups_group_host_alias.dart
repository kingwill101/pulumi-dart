// ignore_for_file: unused_element, unnecessary_cast


class GetContainerGroupsGroupHostAlias {
  /// The name of the host.
  final List<String> hostnames;
  /// The IP address of the container.
  final String ip;

  /// Creates a new [GetContainerGroupsGroupHostAlias].
  /// [hostnames] The name of the host.
  /// [ip] The IP address of the container.
  GetContainerGroupsGroupHostAlias({
    required this.hostnames,
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': hostnames,
      'ip': ip,
    };
  }

  factory GetContainerGroupsGroupHostAlias.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupHostAlias(
      hostnames: (map['hostnames'] as List).cast<String>(),
      ip: map['ip'] as String,
    );
  }
}

