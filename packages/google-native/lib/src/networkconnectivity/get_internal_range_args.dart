// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_internal_range_args_doc}
/// Arguments for getInternalRange.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_internal_range_args_doc}
class GetInternalRangeArgs {
  final pulumi.Input<String> internalRangeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInternalRangeArgs].
  /// [internalRangeId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetInternalRangeArgs({
    required String internalRangeId,
    required String location,
    String? project,
  })  : internalRangeId = pulumi.Input.asInput<String>(internalRangeId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['internalRangeId'] = internalRangeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInternalRangeArgs.fromMap(Map<String, dynamic> map) {
    return GetInternalRangeArgs(
      internalRangeId: map['internalRangeId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
