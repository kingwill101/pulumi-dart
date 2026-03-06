// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_location_get_tracker_association_get_tracker_association_args_doc}
/// Arguments for getTrackerAssociation.
/// {@endtemplate}
/// {@macro pulumi_location_get_tracker_association_get_tracker_association_args_doc}
class GetTrackerAssociationArgs {
  /// ARN of the geofence collection associated to tracker resource.
  final pulumi.Input<String> consumerArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the tracker resource associated with a geofence collection.
  final pulumi.Input<String> trackerName;

  /// Creates a new [GetTrackerAssociationArgs].
  /// [consumerArn] ARN of the geofence collection associated to tracker resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [trackerName] Name of the tracker resource associated with a geofence collection.
  const GetTrackerAssociationArgs({
    required this.consumerArn,
    this.region,
    required this.trackerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerArn': consumerArn,
      'region': ?region,
      'trackerName': trackerName,
    };
  }

  factory GetTrackerAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetTrackerAssociationArgs(
      consumerArn: pulumi.Input.fromValue(map['consumerArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trackerName: pulumi.Input.fromValue(map['trackerName'] as String),
    );
  }
}

