// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_location_tracker_association_tracker_association_args_doc}
/// The set of arguments for TrackerAssociation.
/// {@endtemplate}
/// {@macro pulumi_location_tracker_association_tracker_association_args_doc}
class TrackerAssociationArgs {
  /// The Amazon Resource Name (ARN) for the geofence collection to be associated to tracker resource. Used when you need to specify a resource across all AWS.
  final pulumi.Input<String> consumerArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the tracker resource to be associated with a geofence collection.
  final pulumi.Input<String> trackerName;

  /// Creates a new [TrackerAssociationArgs].
  /// [consumerArn] The Amazon Resource Name (ARN) for the geofence collection to be associated to tracker resource. Used when you need to specify a resource across all AWS.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [trackerName] The name of the tracker resource to be associated with a geofence collection.
  TrackerAssociationArgs({
    required pulumi.Output<String> consumerArn,
    pulumi.Output<String>? region,
    required pulumi.Output<String> trackerName,
  }) :
      consumerArn = pulumi.Input.asInput<String>(consumerArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      trackerName = pulumi.Input.asInput<String>(trackerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerArn': consumerArn,
      'region': ?region,
      'trackerName': trackerName,
    };
  }

  factory TrackerAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TrackerAssociationArgs(
      consumerArn: pulumi.Output.create<String>(map['consumerArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      trackerName: pulumi.Output.create<String>(map['trackerName'] as String),
    );
  }
}

