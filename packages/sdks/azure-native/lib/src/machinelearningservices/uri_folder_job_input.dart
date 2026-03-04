// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UriFolderJobInput {
  /// Description for the input.
  final pulumi.Input<String>? description;

  /// Enum to determine the Job Input Type.
  /// Expected value is 'uri_folder'.
  final pulumi.Input<String> jobInputType;

  /// Input Asset Delivery Mode.
  final pulumi.Input<String>? mode;

  /// [Required] Input Asset URI.
  final pulumi.Input<String> uri;

  /// Creates a new [UriFolderJobInput].
  /// [description] Description for the input.
  /// [jobInputType] Enum to determine the Job Input Type.
  /// [mode] Input Asset Delivery Mode.
  /// [uri] [Required] Input Asset URI.
  UriFolderJobInput({
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

  factory UriFolderJobInput.fromMap(Map<String, dynamic> map) {
    return UriFolderJobInput(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jobInputType: pulumi.Input.fromValue(map['jobInputType'] as String),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
