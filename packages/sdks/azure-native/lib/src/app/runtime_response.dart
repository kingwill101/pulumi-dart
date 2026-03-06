// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_response_dotnet.dart';
import 'runtime_response_java.dart';

/// Container App Runtime configuration.
class RuntimeResponse {
  /// .NET app configuration
  final pulumi.Input<RuntimeResponseDotnet>? dotnet;
  /// Java app configuration
  final pulumi.Input<RuntimeResponseJava>? java;

  /// Creates a new [RuntimeResponse].
  /// [dotnet] .NET app configuration
  /// [java] Java app configuration
  const RuntimeResponse({
    this.dotnet,
    this.java,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dotnet': ?pulumi.Input.mapOptionalInputValue<RuntimeResponseDotnet, Map<String, dynamic>>(dotnet, (value) => value.toMap()),
      'java': ?pulumi.Input.mapOptionalInputValue<RuntimeResponseJava, Map<String, dynamic>>(java, (value) => value.toMap()),
    };
  }

  factory RuntimeResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeResponse(
      dotnet: (() { final guardedValue = map['dotnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeResponseDotnet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      java: (() { final guardedValue = map['java']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeResponseJava.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

