// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_dotnet.dart';
import 'runtime_java.dart';

/// Container App Runtime configuration.
class Runtime {
  /// .NET app configuration
  final pulumi.Input<RuntimeDotnet>? dotnet;
  /// Java app configuration
  final pulumi.Input<RuntimeJava>? java;

  /// Creates a new [Runtime].
  /// [dotnet] .NET app configuration
  /// [java] Java app configuration
  Runtime({
    this.dotnet,
    this.java,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dotnet': ?pulumi.Input.mapOptionalInputValue<RuntimeDotnet, Map<String, dynamic>>(dotnet, (value) => value.toMap()),
      'java': ?pulumi.Input.mapOptionalInputValue<RuntimeJava, Map<String, dynamic>>(java, (value) => value.toMap()),
    };
  }

  factory Runtime.fromMap(Map<String, dynamic> map) {
    return Runtime(
      dotnet: map['dotnet'] == null ? null : (RuntimeDotnet.fromMap((map['dotnet']! as Map).cast<String, dynamic>())).input(),
      java: map['java'] == null ? null : (RuntimeJava.fromMap((map['java']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

