// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_spoke_args_doc}
/// Arguments for getSpoke.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_spoke_args_doc}
class GetSpokeArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> spokeId;

  /// Creates a new [GetSpokeArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [spokeId] Required.
  GetSpokeArgs({
    required String location,
    String? project,
    required String spokeId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        spokeId = pulumi.Input.asInput<String>(spokeId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['spokeId'] = spokeId;
    return map;
  }

  factory GetSpokeArgs.fromMap(Map<String, dynamic> map) {
    return GetSpokeArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      spokeId: map['spokeId'] as String,
    );
  }
}
