// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationReplay.
class GetOrganizationReplayArgs {
  final Input<String> location;
  final Input<String> organizationId;
  final Input<String> replayId;

  GetOrganizationReplayArgs({
    required this.location,
    required this.organizationId,
    required this.replayId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['organizationId'] = organizationId;
    map['replayId'] = replayId;
    return map;
  }

  factory GetOrganizationReplayArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationReplayArgs(
      location: Input.asInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
      replayId: Input.asInput<String>(map['replayId']),
    );
  }
}
