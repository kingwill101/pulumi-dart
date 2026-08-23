// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyAvailabilitySlo {
  /// Availability target as a percentage (e.g., `99.9`).
  final pulumi.Input<double> target;

  /// Creates a new [V2PolicyAvailabilitySlo].
  /// [target] Availability target as a percentage (e.g., `99.9`).
  const V2PolicyAvailabilitySlo({
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': target,
    };
  }

  factory V2PolicyAvailabilitySlo.fromMap(Map<String, dynamic> map) {
    return V2PolicyAvailabilitySlo(
      target: pulumi.Input.fromValue(map['target'] as double),
    );
  }
}
