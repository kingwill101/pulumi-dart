// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_layer_version_code.dart';

/// Input properties used for looking up and filtering V3LayerVersion resources.
class V3LayerVersionState {
  /// The access permission of the layer, 1: public, 0: private, default is private
  final pulumi.Input<String>? acl;
  /// Layer code configuration See `code` below.
  final pulumi.Input<V3LayerVersionCode>? code;
  /// (Available since v1.234.0) The code package size of the layer, in bytes.
  final pulumi.Input<String>? codeSize;
  /// List of runtime environments supported by the layer
  final pulumi.Input<List<String>>? compatibleRuntimes;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Description of the version
  final pulumi.Input<String>? description;
  /// Name of the layer
  final pulumi.Input<String>? layerName;
  /// (Available since v1.234.0) Layer version ARN. The format is acs:fc:{region }:{ accountID}:layers/{layerName}/versions/{layerVersion}.
  final pulumi.Input<String>? layerVersionArn;
  /// Layer License Agreement
  final pulumi.Input<String>? license;
  /// Whether to expose the layer. Enumeration values: true, false. (Deprecated, please use acl instead)
  final pulumi.Input<String>? public;
  /// The version of the layer
  final pulumi.Input<String>? version;

  /// Creates a new [V3LayerVersionState].
  /// [acl] The access permission of the layer, 1: public, 0: private, default is private
  /// [code] Layer code configuration See `code` below.
  /// [codeSize] (Available since v1.234.0) The code package size of the layer, in bytes.
  /// [compatibleRuntimes] List of runtime environments supported by the layer
  /// [createTime] The creation time of the resource
  /// [description] Description of the version
  /// [layerName] Name of the layer
  /// [layerVersionArn] (Available since v1.234.0) Layer version ARN. The format is acs:fc:{region }:{ accountID}:layers/{layerName}/versions/{layerVersion}.
  /// [license] Layer License Agreement
  /// [public] Whether to expose the layer. Enumeration values: true, false. (Deprecated, please use acl instead)
  /// [version] The version of the layer
  V3LayerVersionState({
    pulumi.Output<String>? acl,
    pulumi.Output<V3LayerVersionCode>? code,
    pulumi.Output<String>? codeSize,
    pulumi.Output<List<String>>? compatibleRuntimes,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? layerName,
    pulumi.Output<String>? layerVersionArn,
    pulumi.Output<String>? license,
    pulumi.Output<String>? public,
    pulumi.Output<String>? version,
  }) :
      acl = pulumi.Input.asOptionalInput<String>(acl),
      code = pulumi.Input.asOptionalInput<V3LayerVersionCode>(code),
      codeSize = pulumi.Input.asOptionalInput<String>(codeSize),
      compatibleRuntimes = pulumi.Input.asOptionalInput<List<String>>(compatibleRuntimes),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      layerName = pulumi.Input.asOptionalInput<String>(layerName),
      layerVersionArn = pulumi.Input.asOptionalInput<String>(layerVersionArn),
      license = pulumi.Input.asOptionalInput<String>(license),
      public = pulumi.Input.asOptionalInput<String>(public),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'code': ?pulumi.Input.mapOptionalInputValue<V3LayerVersionCode, Map<String, dynamic>>(code, (value) => value.toMap()),
      'codeSize': ?codeSize,
      'compatibleRuntimes': ?compatibleRuntimes,
      'createTime': ?createTime,
      'description': ?description,
      'layerName': ?layerName,
      'layerVersionArn': ?layerVersionArn,
      'license': ?license,
      'public': ?public,
      'version': ?version,
    };
  }

  factory V3LayerVersionState.fromMap(Map<String, dynamic> map) {
    return V3LayerVersionState(
      acl: map['acl'] == null ? null : pulumi.Output.create<String>(map['acl'] as String),
      code: map['code'] == null ? null : pulumi.Output.create<V3LayerVersionCode>(V3LayerVersionCode.fromMap((map['code'] as Map).cast<String, dynamic>())),
      codeSize: map['codeSize'] == null ? null : pulumi.Output.create<String>(map['codeSize'] as String),
      compatibleRuntimes: map['compatibleRuntimes'] == null ? null : pulumi.Output.create<List<String>>((map['compatibleRuntimes'] as List).cast<String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      layerName: map['layerName'] == null ? null : pulumi.Output.create<String>(map['layerName'] as String),
      layerVersionArn: map['layerVersionArn'] == null ? null : pulumi.Output.create<String>(map['layerVersionArn'] as String),
      license: map['license'] == null ? null : pulumi.Output.create<String>(map['license'] as String),
      public: map['public'] == null ? null : pulumi.Output.create<String>(map['public'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

