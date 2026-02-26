// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTrackerAssociation.
class GetTrackerAssociationArgs {
  /// ARN of the geofence collection associated to tracker resource.
  final Input<String> consumerArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the tracker resource associated with a geofence collection.
  final Input<String> trackerName;

  GetTrackerAssociationArgs({
    required this.consumerArn,
    this.region,
    required this.trackerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumerArn'] = consumerArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['trackerName'] = trackerName;
    return map;
  }

  factory GetTrackerAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetTrackerAssociationArgs(
      consumerArn: Input.asInput<String>(map['consumerArn']),
      region: Input.asOptionalInput<String>(map['region']),
      trackerName: Input.asInput<String>(map['trackerName']),
    );
  }
}
