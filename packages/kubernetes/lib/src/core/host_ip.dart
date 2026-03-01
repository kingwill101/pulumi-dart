// ignore_for_file: unused_element, unnecessary_cast


/// HostIP represents a single IP address allocated to the host.
class HostIP {
  /// IP is the IP address assigned to the host
  final String ip;

  /// Creates a new [HostIP].
  /// [ip] IP is the IP address assigned to the host
  HostIP({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory HostIP.fromMap(Map<String, dynamic> map) {
    return HostIP(
      ip: map['ip'] as String,
    );
  }
}

