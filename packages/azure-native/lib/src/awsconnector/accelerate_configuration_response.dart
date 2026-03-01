// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AccelerateConfiguration
class AccelerateConfigurationResponse {
  /// Specifies the transfer acceleration status of the bucket.
  final String? accelerationStatus;

  /// Creates a new [AccelerateConfigurationResponse].
  /// [accelerationStatus] Specifies the transfer acceleration status of the bucket.
  AccelerateConfigurationResponse({
    this.accelerationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerationStatus': ?accelerationStatus,
    };
  }

  factory AccelerateConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AccelerateConfigurationResponse(
      accelerationStatus: map['accelerationStatus'] == null ? null : map['accelerationStatus'] as String,
    );
  }
}

