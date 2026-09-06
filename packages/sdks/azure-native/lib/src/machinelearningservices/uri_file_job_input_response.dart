// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UriFileJobInputResponse {
  /// Description for the input.
  final pulumi.Input<String?>? description;
  /// Enum to determine the Job Input Type.
  /// Expected value is 'uri_file'.
  final pulumi.Input<String> jobInputType;
  /// Enum to determine the input data delivery mode.
  final pulumi.Input<String?>? mode;
  /// [Required] Input Asset URI.
  final pulumi.Input<String> uri;

  /// Creates a new [UriFileJobInputResponse].
  /// [description] Description for the input.
  /// [jobInputType] Enum to determine the Job Input Type.
  /// [mode] Enum to determine the input data delivery mode.
  /// [uri] [Required] Input Asset URI.
  UriFileJobInputResponse({
    this.description,
    required this.jobInputType,
    pulumi.Input<String?>? mode,
    required this.uri,
  }) : mode = mode ?? pulumi.Input.fromValue('ReadOnlyMount');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'jobInputType': jobInputType,
      'mode': ?mode,
      'uri': uri,
    };
  }

  factory UriFileJobInputResponse.fromMap(Map<String, dynamic> map) {
    return UriFileJobInputResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobInputType: pulumi.Input.fromValue(map['jobInputType'] as String),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
