// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineContentConfigPermission {
  /// The permission that you want to give to the AWS user that you specified in `content_config_permissions.grantee`. Valid values are `Read`, `ReadAcp`, `WriteAcp` or `FullControl`.
  final pulumi.Input<List<String>>? accesses;
  /// The AWS user or group that you want to have access to transcoded files and playlists.
  final pulumi.Input<String>? grantee;
  /// Specify the type of value that appears in the `content_config_permissions.grantee` object. Valid values are `Canonical`, `Email` or `Group`.
  final pulumi.Input<String>? granteeType;

  /// Creates a new [PipelineContentConfigPermission].
  /// [accesses] The permission that you want to give to the AWS user that you specified in `content_config_permissions.grantee`. Valid values are `Read`, `ReadAcp`, `WriteAcp` or `FullControl`.
  /// [grantee] The AWS user or group that you want to have access to transcoded files and playlists.
  /// [granteeType] Specify the type of value that appears in the `content_config_permissions.grantee` object. Valid values are `Canonical`, `Email` or `Group`.
  PipelineContentConfigPermission({
    this.accesses,
    this.grantee,
    this.granteeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accesses': ?accesses,
      'grantee': ?grantee,
      'granteeType': ?granteeType,
    };
  }

  factory PipelineContentConfigPermission.fromMap(Map<String, dynamic> map) {
    return PipelineContentConfigPermission(
      accesses: (() { final guardedValue = map['accesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      grantee: (() { final guardedValue = map['grantee']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      granteeType: (() { final guardedValue = map['granteeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

