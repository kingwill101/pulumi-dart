// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for PyPi repository
class PyPiRepositoryConfig {
  /// Optional. PyPi repository address
  final String? pypiRepository;

  PyPiRepositoryConfig({
    this.pypiRepository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pypiRepositoryValue = pypiRepository;
    if (pypiRepositoryValue != null) {
      map['pypiRepository'] = pypiRepositoryValue;
    }
    return map;
  }

  factory PyPiRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return PyPiRepositoryConfig(
      pypiRepository: map['pypiRepository'] == null
          ? null
          : map['pypiRepository'] as String,
    );
  }
}
