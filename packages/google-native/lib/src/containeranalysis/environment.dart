// ignore_for_file: unused_element, unnecessary_cast

/// Defines an object for the environment field in in-toto links. The suggested fields are "variables", "filesystem", and "workdir".
class Environment {
  final Map<String, String>? customValues;

  /// Creates a new [Environment].
  /// [customValues] Optional.
  Environment({
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

  factory Environment.fromMap(Map<String, dynamic> map) {
    return Environment(
      customValues: map['customValues'] == null
          ? null
          : (map['customValues'] as Map).cast<String, String>(),
    );
  }
}
