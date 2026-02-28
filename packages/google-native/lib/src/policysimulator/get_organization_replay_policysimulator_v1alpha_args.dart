// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policysimulator_v1alpha_get_organization_replay_policysimulator_v1alpha_args_doc}
/// Arguments for getOrganizationReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1alpha_get_organization_replay_policysimulator_v1alpha_args_doc}
class GetOrganizationReplayPolicysimulatorV1alphaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> replayId;

  /// Creates a new [GetOrganizationReplayPolicysimulatorV1alphaArgs].
  /// [location] Required.
  /// [organizationId] Required.
  /// [replayId] Required.
  GetOrganizationReplayPolicysimulatorV1alphaArgs({
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

  factory GetOrganizationReplayPolicysimulatorV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationReplayPolicysimulatorV1alphaArgs(
      location: map['location'] as String,
      organizationId: map['organizationId'] as String,
      replayId: map['replayId'] as String,
    );
  }
}
