// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_appliance_instance.dart';

/// A collection of router appliance instances. If you configure multiple router appliance instances to receive data from the same set of sites outside of Google Cloud, we recommend that you associate those instances with the same spoke.
class LinkedRouterApplianceInstances {
  /// The list of router appliance instances.
  final List<RouterApplianceInstance>? instances;

  /// A value that controls whether site-to-site data transfer is enabled for these resources. Data transfer is available only in [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  final bool? siteToSiteDataTransfer;

  /// Creates a new [LinkedRouterApplianceInstances].
  /// [instances] The list of router appliance instances.
  /// [siteToSiteDataTransfer] A value that controls whether site-to-site data transfer is enabled for these resources. Data transfer is available only in [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  LinkedRouterApplianceInstances({
    this.instances,
    this.siteToSiteDataTransfer,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instancesValue = instances;
    if (instancesValue != null) {
      map['instances'] = pulumi.Input.encodeList<RouterApplianceInstance,
          Map<String, dynamic>>(instancesValue, (value) => value.toMap());
    }
    final siteToSiteDataTransferValue = siteToSiteDataTransfer;
    if (siteToSiteDataTransferValue != null) {
      map['siteToSiteDataTransfer'] = siteToSiteDataTransferValue;
    }
    return map;
  }

  factory LinkedRouterApplianceInstances.fromMap(Map<String, dynamic> map) {
    return LinkedRouterApplianceInstances(
      instances: map['instances'] == null
          ? null
          : pulumi.Input.decodeList<RouterApplianceInstance>(
              map['instances'],
              (value) => RouterApplianceInstance.fromMap(
                  (value as Map).cast<String, dynamic>())),
      siteToSiteDataTransfer: map['siteToSiteDataTransfer'] == null
          ? null
          : map['siteToSiteDataTransfer'] as bool,
    );
  }
}
