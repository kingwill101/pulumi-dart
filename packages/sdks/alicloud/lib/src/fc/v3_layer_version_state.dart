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
    this.acl,
    this.code,
    this.codeSize,
    this.compatibleRuntimes,
    this.createTime,
    this.description,
    this.layerName,
    this.layerVersionArn,
    this.license,
    this.public,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'code':
          ?pulumi.Input.mapOptionalInputValue<
            V3LayerVersionCode,
            Map<String, dynamic>
          >(code, (value) => value.toMap()),
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
      acl: (() {
        final guardedValue = map['acl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      code: (() {
        final guardedValue = map['code'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V3LayerVersionCode.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      codeSize: (() {
        final guardedValue = map['codeSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      compatibleRuntimes: (() {
        final guardedValue = map['compatibleRuntimes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      layerName: (() {
        final guardedValue = map['layerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      layerVersionArn: (() {
        final guardedValue = map['layerVersionArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      license: (() {
        final guardedValue = map['license'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      public: (() {
        final guardedValue = map['public'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
