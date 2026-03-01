// ignore_for_file: unused_element, unnecessary_cast

import 'runtime_dotnet.dart';
import 'runtime_java.dart';

/// Container App Runtime configuration.
class Runtime {
  /// .NET app configuration
  final RuntimeDotnet? dotnet;
  /// Java app configuration
  final RuntimeJava? java;

  /// Creates a new [Runtime].
  /// [dotnet] .NET app configuration
  /// [java] Java app configuration
  Runtime({
    this.dotnet,
    this.java,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dotnet': ?dotnet == null ? null : dotnet!.toMap(),
      'java': ?java == null ? null : java!.toMap(),
    };
  }

  factory Runtime.fromMap(Map<String, dynamic> map) {
    return Runtime(
      dotnet: map['dotnet'] == null ? null : RuntimeDotnet.fromMap((map['dotnet'] as Map).cast<String, dynamic>()),
      java: map['java'] == null ? null : RuntimeJava.fromMap((map['java'] as Map).cast<String, dynamic>()),
    );
  }
}

