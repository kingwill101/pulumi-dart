// ignore_for_file: unused_element, unnecessary_cast


/// PodIP represents a single IP address allocated to the pod.
class PodIPPatch {
  /// IP is the IP address assigned to the pod
  final String? ip;

  /// Creates a new [PodIPPatch].
  /// [ip] IP is the IP address assigned to the pod
  PodIPPatch({
    this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ?ip,
    };
  }

  factory PodIPPatch.fromMap(Map<String, dynamic> map) {
    return PodIPPatch(
      ip: map['ip'] == null ? null : map['ip'] as String,
    );
  }
}

