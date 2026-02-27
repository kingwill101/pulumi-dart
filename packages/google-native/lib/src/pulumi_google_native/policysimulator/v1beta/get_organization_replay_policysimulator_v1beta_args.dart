// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationReplay.
class GetOrganizationReplayPolicysimulatorV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> replayId;

  GetOrganizationReplayPolicysimulatorV1betaArgs({
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

  factory GetOrganizationReplayPolicysimulatorV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationReplayPolicysimulatorV1betaArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      replayId: pulumi.Input.asInput<String>(map['replayId']),
    );
  }
}
