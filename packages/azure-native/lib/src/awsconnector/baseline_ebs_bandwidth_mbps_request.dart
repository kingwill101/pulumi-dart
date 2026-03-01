// ignore_for_file: unused_element, unnecessary_cast


/// Definition of BaselineEbsBandwidthMbpsRequest
class BaselineEbsBandwidthMbpsRequest {
  /// The maximum value in Mbps.
  final int? max;
  /// The minimum value in Mbps.
  final int? min;

  /// Creates a new [BaselineEbsBandwidthMbpsRequest].
  /// [max] The maximum value in Mbps.
  /// [min] The minimum value in Mbps.
  BaselineEbsBandwidthMbpsRequest({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory BaselineEbsBandwidthMbpsRequest.fromMap(Map<String, dynamic> map) {
    return BaselineEbsBandwidthMbpsRequest(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}

