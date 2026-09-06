// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Environment information
class ComputeInstanceEnvironmentInfoResponse {
  /// name of environment.
  final pulumi.Input<String?>? name;
  /// version of environment.
  final pulumi.Input<String?>? version;

  /// Creates a new [ComputeInstanceEnvironmentInfoResponse].
  /// [name] name of environment.
  /// [version] version of environment.
  const ComputeInstanceEnvironmentInfoResponse({
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'version': ?version,
    };
  }

  factory ComputeInstanceEnvironmentInfoResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceEnvironmentInfoResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
