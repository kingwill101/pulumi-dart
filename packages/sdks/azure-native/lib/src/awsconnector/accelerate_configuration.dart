// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AccelerateConfiguration
class AccelerateConfiguration {
  /// Specifies the transfer acceleration status of the bucket.
  final String? accelerationStatus;

  /// Creates a new [AccelerateConfiguration].
  /// [accelerationStatus] Specifies the transfer acceleration status of the bucket.
  AccelerateConfiguration({
    this.accelerationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerationStatus': ?accelerationStatus,
    };
  }

  factory AccelerateConfiguration.fromMap(Map<String, dynamic> map) {
    return AccelerateConfiguration(
      accelerationStatus: map['accelerationStatus'] == null ? null : map['accelerationStatus'] as String,
    );
  }
}

