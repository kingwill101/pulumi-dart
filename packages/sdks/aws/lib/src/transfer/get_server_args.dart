// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transfer_get_server_get_server_args_doc}
/// Arguments for getServer.
/// {@endtemplate}
/// {@macro pulumi_transfer_get_server_get_server_args_doc}
class GetServerArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID for an SFTP server.
  final pulumi.Input<String> serverId;

  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetServerArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverId] ID for an SFTP server.
  /// [tags] Map of tags assigned to the resource.
  GetServerArgs({this.region, required this.serverId, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'serverId': serverId,
      'tags': ?tags,
    };
  }

  factory GetServerArgs.fromMap(Map<String, dynamic> map) {
    return GetServerArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
