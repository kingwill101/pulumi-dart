// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServer.
class GetServerArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID for an SFTP server.
  final Input<String> serverId;

  /// Map of tags assigned to the resource.
  final Input<Map<String, String>>? tags;

  GetServerArgs({
    this.region,
    required this.serverId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serverId'] = serverId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetServerArgs.fromMap(Map<String, dynamic> map) {
    return GetServerArgs(
      region: Input.asOptionalInput<String>(map['region']),
      serverId: Input.asInput<String>(map['serverId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
