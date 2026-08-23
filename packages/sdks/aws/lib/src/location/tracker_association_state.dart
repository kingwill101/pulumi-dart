// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrackerAssociation resources.
class TrackerAssociationState {
  /// The Amazon Resource Name (ARN) for the geofence collection to be associated to tracker resource. Used when you need to specify a resource across all AWS.
  final pulumi.Input<String>? consumerArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the tracker resource to be associated with a geofence collection.
  final pulumi.Input<String>? trackerName;

  /// Creates a new [TrackerAssociationState].
  /// [consumerArn] The Amazon Resource Name (ARN) for the geofence collection to be associated to tracker resource. Used when you need to specify a resource across all AWS.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [trackerName] The name of the tracker resource to be associated with a geofence collection.
  const TrackerAssociationState({
    this.consumerArn,
    this.region,
    this.trackerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerArn': ?consumerArn,
      'region': ?region,
      'trackerName': ?trackerName,
    };
  }

  factory TrackerAssociationState.fromMap(Map<String, dynamic> map) {
    return TrackerAssociationState(
      consumerArn: (() { final guardedValue = map['consumerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trackerName: (() { final guardedValue = map['trackerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
