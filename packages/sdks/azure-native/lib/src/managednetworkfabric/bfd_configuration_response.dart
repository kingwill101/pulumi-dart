// ignore_for_file: unused_element, unnecessary_cast


/// BFD configuration properties
class BfdConfigurationResponse {
  /// Administrative state of the BfdConfiguration. Example: Enabled | Disabled.
  final String administrativeState;
  /// Interval in milliseconds. Example: 300.
  final int? intervalInMilliSeconds;
  /// Multiplier for the Bfd Configuration. Example: 5.
  final int? multiplier;

  /// Creates a new [BfdConfigurationResponse].
  /// [administrativeState] Administrative state of the BfdConfiguration. Example: Enabled | Disabled.
  /// [intervalInMilliSeconds] Interval in milliseconds. Example: 300.
  /// [multiplier] Multiplier for the Bfd Configuration. Example: 5.
  BfdConfigurationResponse({
    required this.administrativeState,
    this.intervalInMilliSeconds,
    this.multiplier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': administrativeState,
      'intervalInMilliSeconds': ?intervalInMilliSeconds,
      'multiplier': ?multiplier,
    };
  }

  factory BfdConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BfdConfigurationResponse(
      administrativeState: map['administrativeState'] as String,
      intervalInMilliSeconds: map['intervalInMilliSeconds'] == null ? null : map['intervalInMilliSeconds'] as int,
      multiplier: map['multiplier'] == null ? null : map['multiplier'] as int,
    );
  }
}

