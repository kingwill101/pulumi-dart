// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypesInstanceTypeBurstableInstance {
  /// The compute performance benchmark CPU credit of a burstable instance.
  final pulumi.Input<String> baselineCredit;
  /// The initial CPU credit of a burstable instance.
  final pulumi.Input<String> initialCredit;

  /// Creates a new [GetInstanceTypesInstanceTypeBurstableInstance].
  /// [baselineCredit] The compute performance benchmark CPU credit of a burstable instance.
  /// [initialCredit] The initial CPU credit of a burstable instance.
  const GetInstanceTypesInstanceTypeBurstableInstance({
    required this.baselineCredit,
    required this.initialCredit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineCredit': baselineCredit,
      'initialCredit': initialCredit,
    };
  }

  factory GetInstanceTypesInstanceTypeBurstableInstance.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesInstanceTypeBurstableInstance(
      baselineCredit: pulumi.Input.fromValue(map['baselineCredit'] as String),
      initialCredit: pulumi.Input.fromValue(map['initialCredit'] as String),
    );
  }
}

