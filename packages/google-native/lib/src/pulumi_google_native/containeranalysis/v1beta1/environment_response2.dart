// ignore_for_file: unused_element, unnecessary_cast

/// Defines an object for the environment field in in-toto links. The suggested fields are "variables", "filesystem", and "workdir".
class EnvironmentResponse2 {
  final Map<String, String> customValues;

  EnvironmentResponse2({
    required this.customValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customValues'] = customValues;
    return map;
  }

  factory EnvironmentResponse2.fromMap(Map<String, dynamic> map) {
    return EnvironmentResponse2(
      customValues: (map['customValues'] as Map).cast<String, String>(),
    );
  }
}
