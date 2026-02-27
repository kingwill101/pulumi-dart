// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getLayerVersion.
class GetLayerVersionArgs {
  /// Specific architecture the layer version must support. Conflicts with `version`. If specified, the latest available layer version supporting the provided architecture will be used.
  final Input<String>? compatibleArchitecture;

  /// Specific runtime the layer version must support. Conflicts with `version`. If specified, the latest available layer version supporting the provided runtime will be used.
  final Input<String>? compatibleRuntime;

  /// Name of the Lambda layer.
  ///
  /// The following arguments are optional:
  final Input<String> layerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specific layer version. Conflicts with `compatible_runtime` and `compatible_architecture`. If omitted, the latest available layer version will be used.
  final Input<int>? version;

  GetLayerVersionArgs({
    this.compatibleArchitecture,
    this.compatibleRuntime,
    required this.layerName,
    this.region,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final compatibleArchitectureValue = compatibleArchitecture;
    if (compatibleArchitectureValue != null) {
      map['compatibleArchitecture'] = compatibleArchitectureValue;
    }
    final compatibleRuntimeValue = compatibleRuntime;
    if (compatibleRuntimeValue != null) {
      map['compatibleRuntime'] = compatibleRuntimeValue;
    }
    map['layerName'] = layerName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetLayerVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetLayerVersionArgs(
      compatibleArchitecture:
          Input.asOptionalInput<String>(map['compatibleArchitecture']),
      compatibleRuntime:
          Input.asOptionalInput<String>(map['compatibleRuntime']),
      layerName: Input.asInput<String>(map['layerName']),
      region: Input.asOptionalInput<String>(map['region']),
      version: Input.asOptionalInput<int>(map['version']),
    );
  }
}
