// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatadogInstallMethodResponse {
  /// The installer version.
  final pulumi.Input<String>? installerVersion;
  /// The tool.
  final pulumi.Input<String>? tool;
  /// The tool version.
  final pulumi.Input<String>? toolVersion;

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
      installerVersion: (() { final guardedValue = map['installerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tool: (() { final guardedValue = map['tool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolVersion: (() { final guardedValue = map['toolVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

