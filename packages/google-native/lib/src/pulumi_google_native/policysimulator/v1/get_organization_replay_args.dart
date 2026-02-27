// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationReplay.
class GetOrganizationReplayArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> replayId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      replayId: pulumi.Input.asInput<String>(map['replayId']),
    );
  }
}
