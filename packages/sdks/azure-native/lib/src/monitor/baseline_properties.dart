// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'baseline.dart';

/// Defines the properties of a baseline.
class BaselineProperties {
  /// Defines the baseline target, which is compared against the SLI value to determine compliance.
  final pulumi.Input<Baseline> baseline;

  /// Creates a new [BaselineProperties].
  /// [baseline] Defines the baseline target, which is compared against the SLI value to determine compliance.
  const BaselineProperties({
    required this.baseline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseline': pulumi.Input.mapInputValue<Baseline, Map<String, dynamic>>(baseline, (value) => value.toMap()),
    };
  }

  factory BaselineProperties.fromMap(Map<String, dynamic> map) {
    return BaselineProperties(
      baseline: pulumi.Input.fromValue(Baseline.fromMap((map['baseline']! as Map).cast<String, dynamic>())),
    );
  }
}
