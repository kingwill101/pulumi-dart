// ignore_for_file: unused_element, unnecessary_cast

class AiReasoningEngineSpecSourceCodeSpecPythonSpec {
  /// Optional. The Python module to load as the entrypoint,
  /// specified as a fully qualified module name. For example:
  /// path.to.agent. If not specified, defaults to "agent".
  /// The project root will be added to Python sys.path, allowing
  /// imports to be specified relative to the root.
  final String? entrypointModule;

  /// Optional. The name of the callable object within the
  /// entrypointModule to use as the application If not specified,
  /// defaults to <span pulumi-lang-nodejs=""rootAgent"" pulumi-lang-dotnet=""RootAgent"" pulumi-lang-go=""rootAgent"" pulumi-lang-python=""root_agent"" pulumi-lang-yaml=""rootAgent"" pulumi-lang-java=""rootAgent"">"root_agent"</span>.
  final String? entrypointObject;

  /// Optional. The path to the requirements file, relative to the
  /// source root. If not specified, defaults to "requirements.txt".
  final String? requirementsFile;

  /// Optional. The version of Python to use. Support version
  /// includes 3.9, 3.10, 3.11, 3.12, 3.13. If not specified,
  /// default value is 3.10.
  final String? version;

  AiReasoningEngineSpecSourceCodeSpecPythonSpec({
    this.entrypointModule,
    this.entrypointObject,
    this.requirementsFile,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final entrypointModuleValue = entrypointModule;
    if (entrypointModuleValue != null) {
      map['entrypointModule'] = entrypointModuleValue;
    }
    final entrypointObjectValue = entrypointObject;
    if (entrypointObjectValue != null) {
      map['entrypointObject'] = entrypointObjectValue;
    }
    final requirementsFileValue = requirementsFile;
    if (requirementsFileValue != null) {
      map['requirementsFile'] = requirementsFileValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory AiReasoningEngineSpecSourceCodeSpecPythonSpec.fromMap(
      Map<String, dynamic> map) {
    return AiReasoningEngineSpecSourceCodeSpecPythonSpec(
      entrypointModule: map['entrypointModule'] == null
          ? null
          : map['entrypointModule'] as String,
      entrypointObject: map['entrypointObject'] == null
          ? null
          : map['entrypointObject'] as String,
      requirementsFile: map['requirementsFile'] == null
          ? null
          : map['requirementsFile'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
