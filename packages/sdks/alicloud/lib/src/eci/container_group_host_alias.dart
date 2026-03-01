// ignore_for_file: unused_element, unnecessary_cast


class ContainerGroupHostAlias {
  /// The information about the host.
  final List<String>? hostnames;
  /// The IP address of the host.
  final String? ip;

  /// Creates a new [ContainerGroupHostAlias].
  /// [hostnames] The information about the host.
  /// [ip] The IP address of the host.
  ContainerGroupHostAlias({
    this.hostnames,
    this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': ?hostnames,
      'ip': ?ip,
    };
  }

  factory ContainerGroupHostAlias.fromMap(Map<String, dynamic> map) {
    return ContainerGroupHostAlias(
      hostnames: map['hostnames'] == null ? null : (map['hostnames'] as List).cast<String>(),
      ip: map['ip'] == null ? null : map['ip'] as String,
    );
  }
}

