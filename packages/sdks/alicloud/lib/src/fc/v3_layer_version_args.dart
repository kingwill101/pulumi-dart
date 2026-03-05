// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_layer_version_code.dart';

/// {@template pulumi_fc_v3_layer_version_v3_layer_version_args_doc}
/// The set of arguments for V3LayerVersion.
/// {@endtemplate}
/// {@macro pulumi_fc_v3_layer_version_v3_layer_version_args_doc}
class V3LayerVersionArgs {
  /// The access permission of the layer, 1: public, 0: private, default is private
  final pulumi.Input<String>? acl;
  /// Layer code configuration See `code` below.
  final pulumi.Input<V3LayerVersionCode>? code;
  /// List of runtime environments supported by the layer
  final pulumi.Input<List<String>>? compatibleRuntimes;
  /// Description of the version
  final pulumi.Input<String>? description;
  /// Name of the layer
  final pulumi.Input<String> layerName;
  /// Layer License Agreement
  final pulumi.Input<String>? license;
  /// Whether to expose the layer. Enumeration values: true, false. (Deprecated, please use acl instead)
  final pulumi.Input<String>? public;

  /// Creates a new [V3LayerVersionArgs].
  /// [acl] The access permission of the layer, 1: public, 0: private, default is private
  /// [code] Layer code configuration See `code` below.
  /// [compatibleRuntimes] List of runtime environments supported by the layer
  /// [description] Description of the version
  /// [layerName] Name of the layer
  /// [license] Layer License Agreement
  /// [public] Whether to expose the layer. Enumeration values: true, false. (Deprecated, please use acl instead)
  V3LayerVersionArgs({
    this.acl,
    this.code,
    this.compatibleRuntimes,
    this.description,
    required this.layerName,
    this.license,
    this.public,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'code': ?pulumi.Input.mapOptionalInputValue<V3LayerVersionCode, Map<String, dynamic>>(code, (value) => value.toMap()),
      'compatibleRuntimes': ?compatibleRuntimes,
      'description': ?description,
      'layerName': layerName,
      'license': ?license,
      'public': ?public,
    };
  }

  factory V3LayerVersionArgs.fromMap(Map<String, dynamic> map) {
    return V3LayerVersionArgs(
      acl: (() { final guardedValue = map['acl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V3LayerVersionCode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compatibleRuntimes: (() { final guardedValue = map['compatibleRuntimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      layerName: pulumi.Input.fromValue(map['layerName'] as String),
      license: (() { final guardedValue = map['license']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

