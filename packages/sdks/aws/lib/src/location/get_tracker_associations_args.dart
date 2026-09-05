// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_location_get_tracker_associations_get_tracker_associations_args_doc}
/// Arguments for getTrackerAssociations.
/// {@endtemplate}
/// {@macro pulumi_location_get_tracker_associations_get_tracker_associations_args_doc}
class GetTrackerAssociationsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Name of the tracker resource associated with a geofence collection.
  final pulumi.Input<String> trackerName;

  /// Creates a new [GetTrackerAssociationsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [trackerName] Name of the tracker resource associated with a geofence collection.
  const GetTrackerAssociationsArgs({
    this.region,
    required this.trackerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'trackerName': trackerName,
    };
  }

  factory GetTrackerAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetTrackerAssociationsArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trackerName: pulumi.Input.fromValue(map['trackerName'] as String),
    );
  }
}
