// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_asset_bind_asset_bind_args_doc}
/// The set of arguments for AssetBind.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_asset_bind_asset_bind_args_doc}
class AssetBindArgs {
  /// Bind version.
  final pulumi.Input<int>? authVersion;
  /// The first ID of the resource
  final pulumi.Input<String>? uuid;

  /// Creates a new [AssetBindArgs].
  /// [authVersion] Bind version.
  /// [uuid] The first ID of the resource
  AssetBindArgs({
    this.authVersion,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authVersion': ?authVersion,
      'uuid': ?uuid,
    };
  }

  factory AssetBindArgs.fromMap(Map<String, dynamic> map) {
    return AssetBindArgs(
      authVersion: (() { final guardedValue = map['authVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

