// ignore_for_file: unused_element, unnecessary_cast


/// Qos Traffic Profiler IP Range properties.
class QosIpRangeResponse {
  /// End IP Address.
  final String? endIP;
  /// Start IP Address.
  final String? startIP;

  /// Creates a new [QosIpRangeResponse].
  /// [endIP] End IP Address.
  /// [startIP] Start IP Address.
  QosIpRangeResponse({
    this.endIP,
    this.startIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIP': ?endIP,
      'startIP': ?startIP,
    };
  }

  factory QosIpRangeResponse.fromMap(Map<String, dynamic> map) {
    return QosIpRangeResponse(
      endIP: map['endIP'] == null ? null : map['endIP'] as String,
      startIP: map['startIP'] == null ? null : map['startIP'] as String,
    );
  }
}

