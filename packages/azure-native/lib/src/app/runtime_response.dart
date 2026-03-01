// ignore_for_file: unused_element, unnecessary_cast

import 'runtime_response_dotnet.dart';
import 'runtime_response_java.dart';

/// Container App Runtime configuration.
class RuntimeResponse {
  /// .NET app configuration
  final RuntimeResponseDotnet? dotnet;
  /// Java app configuration
  final RuntimeResponseJava? java;

  /// Creates a new [RuntimeResponse].
  /// [dotnet] .NET app configuration
  /// [java] Java app configuration
  RuntimeResponse({
    this.dotnet,
    this.java,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dotnet': ?dotnet == null ? null : dotnet!.toMap(),
      'java': ?java == null ? null : java!.toMap(),
    };
  }

  factory RuntimeResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeResponse(
      dotnet: map['dotnet'] == null ? null : RuntimeResponseDotnet.fromMap((map['dotnet'] as Map).cast<String, dynamic>()),
      java: map['java'] == null ? null : RuntimeResponseJava.fromMap((map['java'] as Map).cast<String, dynamic>()),
    );
  }
}

