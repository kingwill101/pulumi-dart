// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomModelJobOutput {
  /// Description for the output.
  final pulumi.Input<String>? description;
  /// Enum to determine the Job Output Type.
  /// Expected value is 'custom_model'.
  final pulumi.Input<String> jobOutputType;
  /// Output Asset Delivery Mode.
  final pulumi.Input<String>? mode;
  /// Output Asset URI.
  final pulumi.Input<String>? uri;

  /// Creates a new [CustomModelJobOutput].
  /// [description] Description for the output.
  /// [jobOutputType] Enum to determine the Job Output Type.
  /// [mode] Output Asset Delivery Mode.
  /// [uri] Output Asset URI.
  CustomModelJobOutput({
    this.description,
    required this.jobOutputType,
    this.mode,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'jobOutputType': jobOutputType,
      'mode': ?mode,
      'uri': ?uri,
    };
  }

  factory CustomModelJobOutput.fromMap(Map<String, dynamic> map) {
    return CustomModelJobOutput(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      jobOutputType: (map['jobOutputType'] as String).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

