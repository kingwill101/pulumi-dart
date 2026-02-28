// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policysimulator_v1_get_organization_replay_args_doc}
/// Arguments for getOrganizationReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1_get_organization_replay_args_doc}
class GetOrganizationReplayArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> replayId;

  /// Creates a new [GetOrganizationReplayArgs].
  /// [location] Required.
  /// [organizationId] Required.
  /// [replayId] Required.
  GetOrganizationReplayArgs({
    required String location,
    required String organizationId,
    required String replayId,
  })  : location = pulumi.Input.asInput<String>(location),
        organizationId = pulumi.Input.asInput<String>(organizationId),
        replayId = pulumi.Input.asInput<String>(replayId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['organizationId'] = organizationId;
    map['replayId'] = replayId;
    return map;
  }

  factory GetOrganizationReplayArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationReplayArgs(
      location: map['location'] as String,
      organizationId: map['organizationId'] as String,
      replayId: map['replayId'] as String,
    );
  }
}
