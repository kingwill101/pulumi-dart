// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UriFolderJobOutput {
  /// Output Asset Name.
  final pulumi.Input<String>? assetName;
  /// Description for the output.
  final pulumi.Input<String>? description;
  /// Enum to determine the Job Output Type.
  /// Expected value is 'uri_folder'.
  final pulumi.Input<String> jobOutputType;
  /// Output data delivery mode enums.
  final pulumi.Input<String>? mode;
  /// Output Asset URI.
  final pulumi.Input<String>? uri;

  /// Creates a new [UriFolderJobOutput].
  /// [assetName] Output Asset Name.
  /// [description] Description for the output.
  /// [jobOutputType] Enum to determine the Job Output Type.
  /// [mode] Output data delivery mode enums.
  /// [uri] Output Asset URI.
  const UriFolderJobOutput({
    this.assetName,
    this.description,
    required this.jobOutputType,
    this.mode,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetName': ?assetName,
      'description': ?description,
      'jobOutputType': jobOutputType,
      'mode': ?mode,
      'uri': ?uri,
    };
  }

  factory UriFolderJobOutput.fromMap(Map<String, dynamic> map) {
    return UriFolderJobOutput(
      assetName: (() { final guardedValue = map['assetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobOutputType: pulumi.Input.fromValue(map['jobOutputType'] as String),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
