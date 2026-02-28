// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateCreditSpecification {
  final String cpuCredits;

  /// Creates a new [GetLaunchTemplateCreditSpecification].
  /// [cpuCredits] Required.
  GetLaunchTemplateCreditSpecification({
    required this.cpuCredits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuCredits'] = cpuCredits;
    return map;
  }

  factory GetLaunchTemplateCreditSpecification.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateCreditSpecification(
      cpuCredits: map['cpuCredits'] as String,
    );
  }
}
