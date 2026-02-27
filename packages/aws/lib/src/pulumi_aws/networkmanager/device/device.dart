import 'package:pulumi/pulumi.dart';
import '../device_aws_location/device_aws_location.dart';
import '../device_location/device_location.dart';
import 'device_args.dart';

/// Manages a Network Manager Device.
///
/// Use this resource to create a device in a global network. If you specify both a site ID and a location, the location of the site is used for visualization in the Network Manager console.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.Device` using the device ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/device:Device example arn:aws:networkmanager::123456789012:device/global-network-0d47f6t230mz46dy4/device-07f6fd08867abc123
/// ```
class Device extends CustomResource {
  /// ARN of the device.
  late final Output<String> arn;

  /// AWS location of the device. Documented below.
  late final Output<DeviceAwsLocation?> awsLocation;

  /// Description of the device.
  late final Output<String?> description;

  /// ID of the global network.
  ///
  /// The following arguments are optional:
  late final Output<String> globalNetworkId;

  /// Location of the device. Documented below.
  late final Output<DeviceLocation?> location;

  /// Model of device.
  late final Output<String?> model;

  /// Serial number of the device.
  late final Output<String?> serialNumber;

  /// ID of the site.
  late final Output<String?> siteId;

  /// Key-value tags for the device. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Type of device.
  late final Output<String?> type;

  /// Vendor of the device.
  late final Output<String?> vendor;

  Device(
    String name, {
    DeviceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/device:Device',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsLocation = registerOutput<DeviceAwsLocation?>('awsLocation');
    this.description = registerOutput<String?>('description');
    this.globalNetworkId = registerOutput<String>('globalNetworkId');
    this.location = registerOutput<DeviceLocation?>('location');
    this.model = registerOutput<String?>('model');
    this.serialNumber = registerOutput<String?>('serialNumber');
    this.siteId = registerOutput<String?>('siteId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
    this.vendor = registerOutput<String?>('vendor');
  }
}
