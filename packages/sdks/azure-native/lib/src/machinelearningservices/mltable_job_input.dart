// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MLTableJobInput {
  /// Description for the input.
  final pulumi.Input<String>? description;
  /// Enum to determine the Job Input Type.
  /// Expected value is 'mltable'.
  final pulumi.Input<String> jobInputType;
  /// Input Asset Delivery Mode.
  final pulumi.Input<String>? mode;
  /// [Required] Input Asset URI.
  final pulumi.Input<String> uri;

  /// Creates a new [MLTableJobInput].
  /// [description] Description for the input.
  /// [jobInputType] Enum to determine the Job Input Type.
  /// [mode] Input Asset Delivery Mode.
  /// [uri] [Required] Input Asset URI.
  MLTableJobInput({
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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      jobInputType: (map['jobInputType'] as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

