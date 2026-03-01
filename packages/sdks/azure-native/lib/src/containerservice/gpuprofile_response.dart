// ignore_for_file: unused_element, unnecessary_cast


/// GPU settings for the Agent Pool.
class GPUProfileResponse {
  /// Whether to install GPU drivers. When it's not specified, default is Install.
  final String? driver;

  /// Creates a new [GPUProfileResponse].
  /// [driver] Whether to install GPU drivers. When it's not specified, default is Install.
  GPUProfileResponse({
    this.driver,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': ?driver,
    };
  }

  factory GPUProfileResponse.fromMap(Map<String, dynamic> map) {
    return GPUProfileResponse(
      driver: map['driver'] == null ? null : map['driver'] as String,
    );
  }
}

