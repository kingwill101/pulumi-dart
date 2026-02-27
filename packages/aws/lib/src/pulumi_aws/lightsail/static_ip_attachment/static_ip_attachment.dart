import 'package:pulumi/pulumi.dart';
import 'static_ip_attachment_args.dart';

/// Manages a static IP address attachment - relationship between a Lightsail static IP and Lightsail instance.
///
/// Use this resource to attach a static IP address to a Lightsail instance to provide a consistent public IP address that persists across instance restarts.
///
/// > **Note:** Lightsail is currently only supported in a limited number of AWS Regions, please see ["Regions and Availability Zones in Amazon Lightsail"](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail) for more details.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.StaticIpAttachment` using the static IP name. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/staticIpAttachment:StaticIpAttachment example example-static-ip
/// ```
class StaticIpAttachment extends CustomResource {
  /// Name of the Lightsail instance to attach the IP to.
  late final Output<String> instanceName;

  /// Allocated static IP address.
  late final Output<String> ipAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the allocated static IP.
  ///
  /// The following arguments are optional:
  late final Output<String> staticIpName;

  StaticIpAttachment(
    String name, {
    StaticIpAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/staticIpAttachment:StaticIpAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.instanceName = registerOutput<String>('instanceName');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.region = registerOutput<String>('region');
    this.staticIpName = registerOutput<String>('staticIpName');
  }
}
