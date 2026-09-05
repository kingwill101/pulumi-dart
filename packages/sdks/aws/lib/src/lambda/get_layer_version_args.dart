// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambda_get_layer_version_get_layer_version_args_doc}
/// Arguments for getLayerVersion.
/// {@endtemplate}
/// {@macro pulumi_lambda_get_layer_version_get_layer_version_args_doc}
class GetLayerVersionArgs {
  /// Specific architecture the layer version must support. Only valid with `layerName`. Conflicts with `version` and `layerVersionArn`. If specified, the latest available layer version supporting the provided architecture will be used.
  final pulumi.Input<String?>? compatibleArchitecture;
  /// Specific runtime the layer version must support. Only valid with `layerName`. Conflicts with `version` and `layerVersionArn`. If specified, the latest available layer version supporting the provided runtime will be used.
  final pulumi.Input<String?>? compatibleRuntime;
  /// Name of the Lambda layer. One of `layerName` or `layerVersionArn` is required.
  final pulumi.Input<String?>? layerName;
  /// ARN of the Lambda layer version. Can be a full ARN with version (e.g., `arn:aws:lambda:region:account:layer:name:1`) or without version (e.g., `arn:aws:lambda:region:account:layer:name`). When the version is omitted, the latest version will be retrieved (requires `lambda:ListLayerVersions` permission). Use the full ARN with version for cross-account layers where you don't have list permissions. One of `layerName` or `layerVersionArn` is required.
  final pulumi.Input<String?>? layerVersionArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Specific layer version. Only valid with `layerName`. Conflicts with `compatibleRuntime`, `compatibleArchitecture`, and `layerVersionArn`. If omitted, the latest available layer version will be used.
  final pulumi.Input<int?>? version;

  /// Creates a new [GetLayerVersionArgs].
  /// [compatibleArchitecture] Specific architecture the layer version must support. Only valid with `layerName`. Conflicts with `version` and `layerVersionArn`. If specified, the latest available layer version supporting the provided architecture will be used.
  /// [compatibleRuntime] Specific runtime the layer version must support. Only valid with `layerName`. Conflicts with `version` and `layerVersionArn`. If specified, the latest available layer version supporting the provided runtime will be used.
  /// [layerName] Name of the Lambda layer. One of `layerName` or `layerVersionArn` is required.
  /// [layerVersionArn] ARN of the Lambda layer version. Can be a full ARN with version (e.g., `arn:aws:lambda:region:account:layer:name:1`) or without version (e.g., `arn:aws:lambda:region:account:layer:name`). When the version is omitted, the latest version will be retrieved (requires `lambda:ListLayerVersions` permission). Use the full ARN with version for cross-account layers where you don't have list permissions. One of `layerName` or `layerVersionArn` is required.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [version] Specific layer version. Only valid with `layerName`. Conflicts with `compatibleRuntime`, `compatibleArchitecture`, and `layerVersionArn`. If omitted, the latest available layer version will be used.
  const GetLayerVersionArgs({
    this.compatibleArchitecture,
    this.compatibleRuntime,
    this.layerName,
    this.layerVersionArn,
    this.region,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibleArchitecture': ?compatibleArchitecture,
      'compatibleRuntime': ?compatibleRuntime,
      'layerName': ?layerName,
      'layerVersionArn': ?layerVersionArn,
      'region': ?region,
      'version': ?version,
    };
  }

  factory GetLayerVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetLayerVersionArgs(
      compatibleArchitecture: (() { final guardedValue = map['compatibleArchitecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compatibleRuntime: (() { final guardedValue = map['compatibleRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      layerName: (() { final guardedValue = map['layerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      layerVersionArn: (() { final guardedValue = map['layerVersionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
