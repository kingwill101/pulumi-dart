// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateCreditSpecification {
  final pulumi.Input<String> cpuCredits;

  /// Creates a new [GetLaunchTemplateCreditSpecification].
  /// [cpuCredits] Required.
  const GetLaunchTemplateCreditSpecification({
    required this.cpuCredits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCredits': cpuCredits,
    };
  }

  factory GetLaunchTemplateCreditSpecification.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateCreditSpecification(
      cpuCredits: pulumi.Input.fromValue(map['cpuCredits'] as String),
    );
  }
}
