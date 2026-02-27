// ignore_for_file: unused_element, unnecessary_cast

/// Defines an object for the environment field in in-toto links. The suggested fields are "variables", "filesystem", and "workdir".
class EnvironmentResponseContaineranalysisV1beta1 {
  final Map<String, String> customValues;

  EnvironmentResponseContaineranalysisV1beta1({
    required this.customValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customValues'] = customValues;
    return map;
  }

  factory EnvironmentResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentResponseContaineranalysisV1beta1(
      customValues: (map['customValues'] as Map).cast<String, String>(),
    );
  }
}
