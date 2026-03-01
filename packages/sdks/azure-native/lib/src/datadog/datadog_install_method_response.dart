// ignore_for_file: unused_element, unnecessary_cast


class DatadogInstallMethodResponse {
  /// The installer version.
  final String? installerVersion;
  /// The tool.
  final String? tool;
  /// The tool version.
  final String? toolVersion;

  /// Creates a new [DatadogInstallMethodResponse].
  /// [installerVersion] The installer version.
  /// [tool] The tool.
  /// [toolVersion] The tool version.
  DatadogInstallMethodResponse({
    this.installerVersion,
    this.tool,
    this.toolVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installerVersion': ?installerVersion,
      'tool': ?tool,
      'toolVersion': ?toolVersion,
    };
  }

  factory DatadogInstallMethodResponse.fromMap(Map<String, dynamic> map) {
    return DatadogInstallMethodResponse(
      installerVersion: map['installerVersion'] == null ? null : map['installerVersion'] as String,
      tool: map['tool'] == null ? null : map['tool'] as String,
      toolVersion: map['toolVersion'] == null ? null : map['toolVersion'] as String,
    );
  }
}

