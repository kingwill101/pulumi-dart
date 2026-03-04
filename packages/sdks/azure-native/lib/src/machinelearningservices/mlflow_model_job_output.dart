// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MLFlowModelJobOutput {
  /// Description for the output.
  final pulumi.Input<String>? description;

  /// Enum to determine the Job Output Type.
  /// Expected value is 'mlflow_model'.
  final pulumi.Input<String> jobOutputType;

  /// Output Asset Delivery Mode.
  final pulumi.Input<String>? mode;

  /// Output Asset URI.
  final pulumi.Input<String>? uri;

  /// Creates a new [MLFlowModelJobOutput].
  /// [description] Description for the output.
  /// [jobOutputType] Enum to determine the Job Output Type.
  /// [mode] Output Asset Delivery Mode.
  /// [uri] Output Asset URI.
  MLFlowModelJobOutput({
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

  factory MLFlowModelJobOutput.fromMap(Map<String, dynamic> map) {
    return MLFlowModelJobOutput(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jobOutputType: pulumi.Input.fromValue(map['jobOutputType'] as String),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
