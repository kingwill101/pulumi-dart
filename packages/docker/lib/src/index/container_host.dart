// ignore_for_file: unused_element, unnecessary_cast


class ContainerHost {
  /// Hostname to add
  final String host;
  /// IP address this hostname should resolve to.
  final String ip;

  /// Creates a new [ContainerHost].
  /// [host] Hostname to add
  /// [ip] IP address this hostname should resolve to.
  ContainerHost({
    required this.host,
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'ip': ip,
    };
  }

  factory ContainerHost.fromMap(Map<String, dynamic> map) {
    return ContainerHost(
      host: map['host'] as String,
      ip: map['ip'] as String,
    );
  }
}

