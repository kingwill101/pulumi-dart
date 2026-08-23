// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV2PolicyAvailabilitySlo {
  /// Availability target as a percentage.
  final pulumi.Input<double> target;

  /// Creates a new [GetV2PolicyAvailabilitySlo].
  /// [target] Availability target as a percentage.
  const GetV2PolicyAvailabilitySlo({
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': target,
    };
  }

  factory GetV2PolicyAvailabilitySlo.fromMap(Map<String, dynamic> map) {
    return GetV2PolicyAvailabilitySlo(
      target: pulumi.Input.fromValue(map['target'] as double),
    );
  }
}
