// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MLTableJobInput {
  /// Description for the input.
  final pulumi.Input<String>? description;
  /// Enum to determine the Job Input Type.
  /// Expected value is 'mltable'.
  final pulumi.Input<String> jobInputType;
  /// Enum to determine the input data delivery mode.
  final pulumi.Input<String>? mode;
  /// [Required] Input Asset URI.
  final pulumi.Input<String> uri;

  /// Creates a new [MLTableJobInput].
  /// [description] Description for the input.
  /// [jobInputType] Enum to determine the Job Input Type.
  /// [mode] Enum to determine the input data delivery mode.
  /// [uri] [Required] Input Asset URI.
  const MLTableJobInput({
    this.description,
    required this.jobInputType,
    this.mode,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'jobInputType': jobInputType,
      'mode': ?mode,
      'uri': uri,
    };
  }

  factory MLTableJobInput.fromMap(Map<String, dynamic> map) {
    return MLTableJobInput(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobInputType: pulumi.Input.fromValue(map['jobInputType'] as String),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
