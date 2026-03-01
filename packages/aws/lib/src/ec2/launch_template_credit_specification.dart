// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateCreditSpecification {
  /// The credit option for CPU usage.
  /// Can be `standard` or `unlimited`.
  /// T3 instances are launched as `unlimited` by default.
  /// T2 instances are launched as `standard` by default.
  final String? cpuCredits;

  /// Creates a new [LaunchTemplateCreditSpecification].
  /// [cpuCredits] The credit option for CPU usage.
  LaunchTemplateCreditSpecification({this.cpuCredits});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpuCredits': ?cpuCredits};
  }

  factory LaunchTemplateCreditSpecification.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateCreditSpecification(
      cpuCredits: map['cpuCredits'] == null
          ? null
          : map['cpuCredits'] as String,
    );
  }
}
