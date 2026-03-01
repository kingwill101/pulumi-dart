// ignore_for_file: unused_element, unnecessary_cast


/// PodIP represents a single IP address allocated to the pod.
class PodIP {
  /// IP is the IP address assigned to the pod
  final String ip;

  /// Creates a new [PodIP].
  /// [ip] IP is the IP address assigned to the pod
  PodIP({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory PodIP.fromMap(Map<String, dynamic> map) {
    return PodIP(
      ip: map['ip'] as String,
    );
  }
}

