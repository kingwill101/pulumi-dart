// ignore_for_file: unused_element, unnecessary_cast


/// A class that contains the optimized auto scale definition.
class OptimizedAutoscale {
  /// A boolean value that indicate if the optimized autoscale feature is enabled or not.
  final bool isEnabled;
  /// Maximum allowed instances count.
  final int maximum;
  /// Minimum allowed instances count.
  final int minimum;
  /// The version of the template defined, for instance 1.
  final int version;

  /// Creates a new [OptimizedAutoscale].
  /// [isEnabled] A boolean value that indicate if the optimized autoscale feature is enabled or not.
  /// [maximum] Maximum allowed instances count.
  /// [minimum] Minimum allowed instances count.
  /// [version] The version of the template defined, for instance 1.
  OptimizedAutoscale({
    required this.isEnabled,
    required this.maximum,
    required this.minimum,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': isEnabled,
      'maximum': maximum,
      'minimum': minimum,
      'version': version,
    };
  }

  factory OptimizedAutoscale.fromMap(Map<String, dynamic> map) {
    return OptimizedAutoscale(
      isEnabled: map['isEnabled'] as bool,
      maximum: map['maximum'] as int,
      minimum: map['minimum'] as int,
      version: map['version'] as int,
    );
  }
}

