// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTrackerAssociations.
class GetTrackerAssociationsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the tracker resource associated with a geofence collection.
  final Input<String> trackerName;

  GetTrackerAssociationsArgs({
    this.region,
    required this.trackerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['trackerName'] = trackerName;
    return map;
  }

  factory GetTrackerAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetTrackerAssociationsArgs(
      region: Input.asOptionalInput<String>(map['region']),
      trackerName: Input.asInput<String>(map['trackerName']),
    );
  }
}
