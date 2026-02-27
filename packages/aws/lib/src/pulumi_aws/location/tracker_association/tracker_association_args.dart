// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TrackerAssociation.
class TrackerAssociationArgs {
  /// The Amazon Resource Name (ARN) for the geofence collection to be associated to tracker resource. Used when you need to specify a resource across all AWS.
  final pulumi.Input<String> consumerArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the tracker resource to be associated with a geofence collection.
  final pulumi.Input<String> trackerName;

  TrackerAssociationArgs({
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

  factory TrackerAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TrackerAssociationArgs(
      consumerArn: pulumi.Input.asInput<String>(map['consumerArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      trackerName: pulumi.Input.asInput<String>(map['trackerName']),
    );
  }
}
