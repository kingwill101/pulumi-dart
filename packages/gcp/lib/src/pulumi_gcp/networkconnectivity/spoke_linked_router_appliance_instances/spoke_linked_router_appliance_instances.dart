// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../spoke_linked_router_appliance_instances_instance/spoke_linked_router_appliance_instances_instance.dart';

class SpokeLinkedRouterApplianceInstances {
  /// IP ranges allowed to be included during import from hub (does not control transit connectivity).
  /// The only allowed value for now is "ALL_IPV4_RANGES".
  final List<String>? includeImportRanges;

  /// The list of router appliance instances
  /// Structure is documented below.
  final List<SpokeLinkedRouterApplianceInstancesInstance> instances;

  /// A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.
  final bool siteToSiteDataTransfer;

  SpokeLinkedRouterApplianceInstances({
    this.includeImportRanges,
    required this.instances,
    required this.siteToSiteDataTransfer,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final includeImportRangesValue = includeImportRanges;
    if (includeImportRangesValue != null) {
      map['includeImportRanges'] = includeImportRangesValue;
    }
    map['instances'] = pulumi.Input.encodeList<
        SpokeLinkedRouterApplianceInstancesInstance,
        Map<String, dynamic>>(instances, (value) => value.toMap());
    map['siteToSiteDataTransfer'] = siteToSiteDataTransfer;
    return map;
  }

  factory SpokeLinkedRouterApplianceInstances.fromMap(
      Map<String, dynamic> map) {
    return SpokeLinkedRouterApplianceInstances(
      includeImportRanges: map['includeImportRanges'] == null
          ? null
          : (map['includeImportRanges'] as List).cast<String>(),
      instances:
          pulumi.Input.decodeList<SpokeLinkedRouterApplianceInstancesInstance>(
              map['instances'],
              (value) => SpokeLinkedRouterApplianceInstancesInstance.fromMap(
                  (value as Map).cast<String, dynamic>())),
      siteToSiteDataTransfer: map['siteToSiteDataTransfer'] as bool,
    );
  }
}
