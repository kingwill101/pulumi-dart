// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A class that contains the optimized auto scale definition.
class OptimizedAutoscaleResponse {
  /// A boolean value that indicate if the optimized autoscale feature is enabled or not.
  final pulumi.Input<bool> isEnabled;
  /// Maximum allowed instances count.
  final pulumi.Input<int> maximum;
  /// Minimum allowed instances count.
  final pulumi.Input<int> minimum;
  /// The version of the template defined, for instance 1.
  final pulumi.Input<int> version;

  /// Creates a new [OptimizedAutoscaleResponse].
  /// [isEnabled] A boolean value that indicate if the optimized autoscale feature is enabled or not.
  /// [maximum] Maximum allowed instances count.
  /// [minimum] Minimum allowed instances count.
  /// [version] The version of the template defined, for instance 1.
  const OptimizedAutoscaleResponse({
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

  factory OptimizedAutoscaleResponse.fromMap(Map<String, dynamic> map) {
    return OptimizedAutoscaleResponse(
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      maximum: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maximum'])),
      minimum: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minimum'])),
      version: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['version'])),
    );
  }
}
