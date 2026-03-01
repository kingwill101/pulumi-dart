// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_appliance_instance_response.dart';

/// A collection of router appliance instances. If you configure multiple router appliance instances to receive data from the same set of sites outside of Google Cloud, we recommend that you associate those instances with the same spoke.
class LinkedRouterApplianceInstancesResponse {
  /// The list of router appliance instances.
  final List<RouterApplianceInstanceResponse> instances;

  /// A value that controls whether site-to-site data transfer is enabled for these resources. Data transfer is available only in [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  final bool siteToSiteDataTransfer;

  /// The VPC network where these router appliance instances are located.
  final String vpcNetwork;

  /// Creates a new [LinkedRouterApplianceInstancesResponse].
  /// [instances] The list of router appliance instances.
  /// [siteToSiteDataTransfer] A value that controls whether site-to-site data transfer is enabled for these resources. Data transfer is available only in [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  /// [vpcNetwork] The VPC network where these router appliance instances are located.
  LinkedRouterApplianceInstancesResponse({
    required this.instances,
    required this.siteToSiteDataTransfer,
    required this.vpcNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances':
          pulumi.Input.encodeList<
            RouterApplianceInstanceResponse,
            Map<String, dynamic>
          >(instances, (value) => value.toMap()),
      'siteToSiteDataTransfer': siteToSiteDataTransfer,
      'vpcNetwork': vpcNetwork,
    };
  }

  factory LinkedRouterApplianceInstancesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return LinkedRouterApplianceInstancesResponse(
      instances: pulumi.Input.decodeList<RouterApplianceInstanceResponse>(
        map['instances'],
        (value) => RouterApplianceInstanceResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      siteToSiteDataTransfer: map['siteToSiteDataTransfer'] as bool,
      vpcNetwork: map['vpcNetwork'] as String,
    );
  }
}
