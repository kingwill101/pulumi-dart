// ignore_for_file: unused_element, unnecessary_cast


/// HostAlias holds the mapping between IP and hostnames that will be injected as an entry in the pod's hosts file.
class HostAlias {
  /// Hostnames for the above IP address.
  final List<String>? hostnames;
  /// IP address of the host file entry.
  final String ip;

  /// Creates a new [HostAlias].
  /// [hostnames] Hostnames for the above IP address.
  /// [ip] IP address of the host file entry.
  HostAlias({
    this.hostnames,
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': ?hostnames,
      'ip': ip,
    };
  }

  factory HostAlias.fromMap(Map<String, dynamic> map) {
    return HostAlias(
      hostnames: map['hostnames'] == null ? null : (map['hostnames'] as List).cast<String>(),
      ip: map['ip'] as String,
    );
  }
}

