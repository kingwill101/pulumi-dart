import 'package:pulumi/pulumi.dart';
import 'link_association_args.dart';

/// Manages a Network Manager link association. Associates a link to a device. A device can be associated to multiple links and a link can be associated to multiple devices. The device and link must be in the same global network and the same site.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.LinkAssociation` using the global network ID, link ID and device ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/linkAssociation:LinkAssociation example global-network-0d47f6t230mz46dy4,link-444555aaabbb11223,device-07f6fd08867abc123
/// ```
class LinkAssociation extends CustomResource {
  /// ID of the device.
  late final Output<String> deviceId;

  /// ID of the global network.
  late final Output<String> globalNetworkId;

  /// ID of the link.
  late final Output<String> linkId;

  LinkAssociation(
    String name, {
    LinkAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/linkAssociation:LinkAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deviceId = registerOutput<String>('deviceId');
    this.globalNetworkId = registerOutput<String>('globalNetworkId');
    this.linkId = registerOutput<String>('linkId');
  }
}
