// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambda_get_layer_version_get_layer_version_args_doc}
/// Arguments for getLayerVersion.
/// {@endtemplate}
/// {@macro pulumi_lambda_get_layer_version_get_layer_version_args_doc}
class GetLayerVersionArgs {
  /// Specific architecture the layer version must support. Conflicts with `version`. If specified, the latest available layer version supporting the provided architecture will be used.
  final pulumi.Input<String>? compatibleArchitecture;
  /// Specific runtime the layer version must support. Conflicts with `version`. If specified, the latest available layer version supporting the provided runtime will be used.
  final pulumi.Input<String>? compatibleRuntime;
  /// Name of the Lambda layer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> layerName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specific layer version. Conflicts with `compatible_runtime` and `compatible_architecture`. If omitted, the latest available layer version will be used.
  final pulumi.Input<int>? version;

  /// Creates a new [GetLayerVersionArgs].
  /// [compatibleArchitecture] Specific architecture the layer version must support. Conflicts with `version`. If specified, the latest available layer version supporting the provided architecture will be used.
  /// [compatibleRuntime] Specific runtime the layer version must support. Conflicts with `version`. If specified, the latest available layer version supporting the provided runtime will be used.
  /// [layerName] Name of the Lambda layer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [version] Specific layer version. Conflicts with `compatible_runtime` and `compatible_architecture`. If omitted, the latest available layer version will be used.
  GetLayerVersionArgs({
    pulumi.Output<String>? compatibleArchitecture,
    pulumi.Output<String>? compatibleRuntime,
    required pulumi.Output<String> layerName,
    pulumi.Output<String>? region,
    pulumi.Output<int>? version,
  }) :
      compatibleArchitecture = pulumi.Input.asOptionalInput<String>(compatibleArchitecture),
      compatibleRuntime = pulumi.Input.asOptionalInput<String>(compatibleRuntime),
      layerName = pulumi.Input.asInput<String>(layerName),
      region = pulumi.Input.asOptionalInput<String>(region),
      version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibleArchitecture': ?compatibleArchitecture,
      'compatibleRuntime': ?compatibleRuntime,
      'layerName': layerName,
      'region': ?region,
      'version': ?version,
    };
  }

  factory GetLayerVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetLayerVersionArgs(
      compatibleArchitecture: map['compatibleArchitecture'] == null ? null : pulumi.Output.create<String>(map['compatibleArchitecture'] as String),
      compatibleRuntime: map['compatibleRuntime'] == null ? null : pulumi.Output.create<String>(map['compatibleRuntime'] as String),
      layerName: pulumi.Output.create<String>(map['layerName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

