import 'package:pulumi/pulumi.dart';
import 'availability_zone_group_args.dart';

/// Manages an EC2 Availability Zone Group, such as updating its opt-in status.
///
/// > **NOTE:** This is an advanced resource. The provider will automatically assume management of the EC2 Availability Zone Group without import and perform no actions on removal from configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EC2 Availability Zone Groups using the group name. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/availabilityZoneGroup:AvailabilityZoneGroup example us-west-2-lax-1
/// ```
class AvailabilityZoneGroup extends CustomResource {
  /// Name of the Availability Zone Group.
  late final Output<String> groupName;

  /// Indicates whether to enable or disable Availability Zone Group. Valid values: `opted-in` or `not-opted-in`.
  late final Output<String> optInStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  AvailabilityZoneGroup(
    String name, {
    AvailabilityZoneGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/availabilityZoneGroup:AvailabilityZoneGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.groupName = registerOutput<String>('groupName');
    this.optInStatus = registerOutput<String>('optInStatus');
    this.region = registerOutput<String>('region');
  }
}
