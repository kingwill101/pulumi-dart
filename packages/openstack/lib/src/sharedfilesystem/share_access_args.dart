// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sharedfilesystem_share_access_share_access_args_doc}
/// The set of arguments for ShareAccess.
/// {@endtemplate}
/// {@macro pulumi_sharedfilesystem_share_access_share_access_args_doc}
class ShareAccessArgs {
  /// The access level to the share. Can either be `rw` or `ro`.
  final pulumi.Input<String> accessLevel;
  /// The value that defines the access. Can either be an IP
  /// address or a username verified by configured Security Service of the Share Network.
  final pulumi.Input<String> accessTo;
  /// The access rule type. Can either be an ip, user,
  /// cert, or cephx. cephx support requires an OpenStack environment that supports
  /// Shared Filesystem microversion 2.13 (Mitaka) or later.
  final pulumi.Input<String> accessType;
  /// The region in which to obtain the V2 Shared File System
  /// client. A Shared File System client is needed to create a share access.
  /// Changing this creates a new share access.
  final pulumi.Input<String>? region;
  /// The UUID of the share to which you are granted access.
  final pulumi.Input<String> shareId;

  /// Creates a new [ShareAccessArgs].
  /// [accessLevel] The access level to the share. Can either be `rw` or `ro`.
  /// [accessTo] The value that defines the access. Can either be an IP
  /// [accessType] The access rule type. Can either be an ip, user,
  /// [region] The region in which to obtain the V2 Shared File System
  /// [shareId] The UUID of the share to which you are granted access.
  ShareAccessArgs({
    required String accessLevel,
    required String accessTo,
    required String accessType,
    String? region,
    required String shareId,
  }) :
      accessLevel = pulumi.Input.asInput<String>(accessLevel),
      accessTo = pulumi.Input.asInput<String>(accessTo),
      accessType = pulumi.Input.asInput<String>(accessType),
      region = pulumi.Input.asOptionalInput<String>(region),
      shareId = pulumi.Input.asInput<String>(shareId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevel': accessLevel,
      'accessTo': accessTo,
      'accessType': accessType,
      'region': ?region,
      'shareId': shareId,
    };
  }

  factory ShareAccessArgs.fromMap(Map<String, dynamic> map) {
    return ShareAccessArgs(
      accessLevel: map['accessLevel'] as String,
      accessTo: map['accessTo'] as String,
      accessType: map['accessType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      shareId: map['shareId'] as String,
    );
  }
}

