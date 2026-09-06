// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TritonModelJobOutput {
  /// Output Asset Name.
  final pulumi.Input<String?>? assetName;
  /// Description for the output.
  final pulumi.Input<String?>? description;
  /// Enum to determine the Job Output Type.
  /// Expected value is 'triton_model'.
  final pulumi.Input<String> jobOutputType;
  /// Output data delivery mode enums.
  final pulumi.Input<dynamic>? mode;
  /// Output Asset URI.
  final pulumi.Input<String?>? uri;

  /// Creates a new [TritonModelJobOutput].
  /// [assetName] Output Asset Name.
  /// [description] Description for the output.
  /// [jobOutputType] Enum to determine the Job Output Type.
  /// [mode] Output data delivery mode enums.
  /// [uri] Output Asset URI.
  TritonModelJobOutput({
    this.assetName,
    this.description,
    required this.jobOutputType,
    pulumi.Input<dynamic>? mode,
    this.uri,
  }) : mode = mode ?? pulumi.Input.fromValue('ReadWriteMount');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetName': ?assetName,
      'description': ?description,
      'jobOutputType': jobOutputType,
      'mode': ?mode,
      'uri': ?uri,
    };
  }

  factory TritonModelJobOutput.fromMap(Map<String, dynamic> map) {
    return TritonModelJobOutput(
      assetName: (() { final guardedValue = map['assetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobOutputType: pulumi.Input.fromValue(map['jobOutputType'] as String),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
