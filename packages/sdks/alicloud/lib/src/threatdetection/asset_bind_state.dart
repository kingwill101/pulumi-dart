// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AssetBind resources.
class AssetBindState {
  /// Bind version.
  final pulumi.Input<int>? authVersion;
  /// The first ID of the resource
  final pulumi.Input<String>? uuid;

  /// Creates a new [AssetBindState].
  /// [authVersion] Bind version.
  /// [uuid] The first ID of the resource
  AssetBindState({
    pulumi.Output<int>? authVersion,
    pulumi.Output<String>? uuid,
  }) :
      authVersion = pulumi.Input.asOptionalInput<int>(authVersion),
      uuid = pulumi.Input.asOptionalInput<String>(uuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authVersion': ?authVersion,
      'uuid': ?uuid,
    };
  }

  factory AssetBindState.fromMap(Map<String, dynamic> map) {
    return AssetBindState(
      authVersion: map['authVersion'] == null ? null : pulumi.Output.create<int>(map['authVersion'] as int),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

