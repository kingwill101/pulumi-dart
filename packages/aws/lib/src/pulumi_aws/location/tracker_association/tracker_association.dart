import 'package:pulumi/pulumi.dart';
import 'tracker_association_args.dart';

/// Resource for managing an AWS Location Tracker Association.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Location Tracker Association using the `tracker_name|consumer_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:location/trackerAssociation:TrackerAssociation example "tracker_name|consumer_arn"
/// ```
class TrackerAssociation extends CustomResource {
  /// The Amazon Resource Name (ARN) for the geofence collection to be associated to tracker resource. Used when you need to specify a resource across all AWS.
  late final Output<String> consumerArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the tracker resource to be associated with a geofence collection.
  late final Output<String> trackerName;

  TrackerAssociation(
    String name, {
    TrackerAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:location/trackerAssociation:TrackerAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.consumerArn = registerOutput<String>('consumerArn');
    this.region = registerOutput<String>('region');
    this.trackerName = registerOutput<String>('trackerName');
  }
}
