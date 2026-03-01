// ignore_for_file: unused_element, unnecessary_cast


/// BFD configuration properties
class BfdConfiguration {
  /// Interval in milliseconds. Example: 300.
  final int? intervalInMilliSeconds;
  /// Multiplier for the Bfd Configuration. Example: 5.
  final int? multiplier;

  /// Creates a new [BfdConfiguration].
  /// [intervalInMilliSeconds] Interval in milliseconds. Example: 300.
  /// [multiplier] Multiplier for the Bfd Configuration. Example: 5.
  BfdConfiguration({
    this.intervalInMilliSeconds,
    this.multiplier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalInMilliSeconds': ?intervalInMilliSeconds,
      'multiplier': ?multiplier,
    };
  }

  factory BfdConfiguration.fromMap(Map<String, dynamic> map) {
    return BfdConfiguration(
      intervalInMilliSeconds: map['intervalInMilliSeconds'] == null ? null : map['intervalInMilliSeconds'] as int,
      multiplier: map['multiplier'] == null ? null : map['multiplier'] as int,
    );
  }
}

