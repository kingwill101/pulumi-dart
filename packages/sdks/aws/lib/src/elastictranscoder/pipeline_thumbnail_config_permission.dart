// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineThumbnailConfigPermission {
  /// The permission that you want to give to the AWS user that you specified in `thumbnail_config_permissions.grantee`. Valid values are `Read`, `ReadAcp`, `WriteAcp` or `FullControl`.
  final pulumi.Input<List<String>>? accesses;
  /// The AWS user or group that you want to have access to thumbnail files.
  final pulumi.Input<String>? grantee;
  /// Specify the type of value that appears in the `thumbnail_config_permissions.grantee` object. Valid values are `Canonical`, `Email` or `Group`.
  final pulumi.Input<String>? granteeType;

  /// Creates a new [PipelineThumbnailConfigPermission].
  /// [accesses] The permission that you want to give to the AWS user that you specified in `thumbnail_config_permissions.grantee`. Valid values are `Read`, `ReadAcp`, `WriteAcp` or `FullControl`.
  /// [grantee] The AWS user or group that you want to have access to thumbnail files.
  /// [granteeType] Specify the type of value that appears in the `thumbnail_config_permissions.grantee` object. Valid values are `Canonical`, `Email` or `Group`.
  PipelineThumbnailConfigPermission({
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

  factory PipelineThumbnailConfigPermission.fromMap(Map<String, dynamic> map) {
    return PipelineThumbnailConfigPermission(
      accesses: map['accesses'] == null ? null : (((map['accesses'] as List).cast<String>()).input()).input(),
      grantee: map['grantee'] == null ? null : ((map['grantee'] as String).input()).input(),
      granteeType: map['granteeType'] == null ? null : ((map['granteeType'] as String).input()).input(),
    );
  }
}

