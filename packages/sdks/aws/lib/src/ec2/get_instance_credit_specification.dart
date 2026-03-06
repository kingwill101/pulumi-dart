// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceCreditSpecification {
  final pulumi.Input<String> cpuCredits;

  /// Creates a new [GetInstanceCreditSpecification].
  /// [cpuCredits] Required.
  const GetInstanceCreditSpecification({
    required this.cpuCredits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCredits': cpuCredits,
    };
  }

  factory GetInstanceCreditSpecification.fromMap(Map<String, dynamic> map) {
    return GetInstanceCreditSpecification(
      cpuCredits: pulumi.Input.fromValue(map['cpuCredits'] as String),
    );
  }
}

