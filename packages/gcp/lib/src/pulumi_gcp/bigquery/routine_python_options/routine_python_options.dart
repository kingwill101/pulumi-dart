// ignore_for_file: unused_element, unnecessary_cast

class RoutinePythonOptions {
  /// The name of the function defined in Python code as the entry point when the
  /// Python UDF is invoked.
  final String entryPoint;

  /// A list of Python package names along with versions to be installed.
  /// Example: ["pandas>=2.1", "google-cloud-translate==3.11"]. For more
  /// information, see [Use third-party
  /// packages](https://cloud.google.com/bigquery/docs/user-defined-functions-python#third-party-packages).
  final List<String>? packages;

  RoutinePythonOptions({
    required this.entryPoint,
    this.packages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entryPoint'] = entryPoint;
    final packagesValue = packages;
    if (packagesValue != null) {
      map['packages'] = packagesValue;
    }
    return map;
  }

  factory RoutinePythonOptions.fromMap(Map<String, dynamic> map) {
    return RoutinePythonOptions(
      entryPoint: map['entryPoint'] as String,
      packages: map['packages'] == null
          ? null
          : (map['packages'] as List).cast<String>(),
    );
  }
}
