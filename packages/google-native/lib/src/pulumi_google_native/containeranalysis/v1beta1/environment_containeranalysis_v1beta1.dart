// ignore_for_file: unused_element, unnecessary_cast

/// Defines an object for the environment field in in-toto links. The suggested fields are "variables", "filesystem", and "workdir".
class EnvironmentContaineranalysisV1beta1 {
  final Map<String, String>? customValues;

  EnvironmentContaineranalysisV1beta1({
    this.customValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customValuesValue = customValues;
    if (customValuesValue != null) {
      map['customValues'] = customValuesValue;
    }
    return map;
  }

  factory EnvironmentContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentContaineranalysisV1beta1(
      customValues: map['customValues'] == null
          ? null
          : (map['customValues'] as Map).cast<String, String>(),
    );
  }
}
