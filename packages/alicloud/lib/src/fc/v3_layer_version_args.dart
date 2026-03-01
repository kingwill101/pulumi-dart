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
    String? acl,
    V3LayerVersionCode? code,
    List<String>? compatibleRuntimes,
    String? description,
    required String layerName,
    String? license,
    String? public,
  }) :
      acl = pulumi.Input.asOptionalInput<String>(acl),
      code = pulumi.Input.asOptionalInput<V3LayerVersionCode>(code),
      compatibleRuntimes = pulumi.Input.asOptionalInput<List<String>>(compatibleRuntimes),
      description = pulumi.Input.asOptionalInput<String>(description),
      layerName = pulumi.Input.asInput<String>(layerName),
      license = pulumi.Input.asOptionalInput<String>(license),
      public = pulumi.Input.asOptionalInput<String>(public);

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
      acl: map['acl'] == null ? null : map['acl'] as String,
      code: map['code'] == null ? null : V3LayerVersionCode.fromMap((map['code'] as Map).cast<String, dynamic>()),
      compatibleRuntimes: map['compatibleRuntimes'] == null ? null : (map['compatibleRuntimes'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      layerName: map['layerName'] as String,
      license: map['license'] == null ? null : map['license'] as String,
      public: map['public'] == null ? null : map['public'] as String,
    );
  }
}

