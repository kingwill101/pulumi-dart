// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_types_type_addon.dart';
import 'get_instance_types_type_price.dart';
import 'get_instance_types_type_region_price.dart';

class GetInstanceTypesType {
  /// The number of VPUs this Linode Type offers.
  final int acceleratedDevices;
  /// Information about the optional Backup service offered for Linodes.
  final List<GetInstanceTypesTypeAddon> addons;
  /// The class of the Linode Type. See all classes [here](https://techdocs.akamai.com/linode-api/reference/get-linode-types).
  final String class_;
  /// The Disk size, in MB, of the Linode Type.
  final int disk;
  /// The ID representing the Linode Type.
  final String id;
  /// The Linode Type's label is for display purposes only.
  final String label;
  /// The amount of RAM included in this Linode Type.
  final int memory;
  /// The Mbits outbound bandwidth allocation.
  final int networkOut;
  /// Cost in US dollars, broken down into hourly and monthly charges.
  final List<GetInstanceTypesTypePrice> prices;
  /// A list of region-specific prices for this plan.
  final List<GetInstanceTypesTypeRegionPrice> regionPrices;
  /// The monthly outbound transfer amount, in MB.
  final int transfer;
  /// The number of VCPU cores this Linode Type offers.
  final int vcpus;

  /// Creates a new [GetInstanceTypesType].
  /// [acceleratedDevices] The number of VPUs this Linode Type offers.
  /// [addons] Information about the optional Backup service offered for Linodes.
  /// [class_] The class of the Linode Type. See all classes [here](https://techdocs.akamai.com/linode-api/reference/get-linode-types).
  /// [disk] The Disk size, in MB, of the Linode Type.
  /// [id] The ID representing the Linode Type.
  /// [label] The Linode Type's label is for display purposes only.
  /// [memory] The amount of RAM included in this Linode Type.
  /// [networkOut] The Mbits outbound bandwidth allocation.
  /// [prices] Cost in US dollars, broken down into hourly and monthly charges.
  /// [regionPrices] A list of region-specific prices for this plan.
  /// [transfer] The monthly outbound transfer amount, in MB.
  /// [vcpus] The number of VCPU cores this Linode Type offers.
  GetInstanceTypesType({
    required this.acceleratedDevices,
    required this.addons,
    required this.class_,
    required this.disk,
    required this.id,
    required this.label,
    required this.memory,
    required this.networkOut,
    required this.prices,
    required this.regionPrices,
    required this.transfer,
    required this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratedDevices': acceleratedDevices,
      'addons': pulumi.Input.encodeList<GetInstanceTypesTypeAddon, Map<String, dynamic>>(addons, (value) => value.toMap()),
      'class': class_,
      'disk': disk,
      'id': id,
      'label': label,
      'memory': memory,
      'networkOut': networkOut,
      'prices': pulumi.Input.encodeList<GetInstanceTypesTypePrice, Map<String, dynamic>>(prices, (value) => value.toMap()),
      'regionPrices': pulumi.Input.encodeList<GetInstanceTypesTypeRegionPrice, Map<String, dynamic>>(regionPrices, (value) => value.toMap()),
      'transfer': transfer,
      'vcpus': vcpus,
    };
  }

  factory GetInstanceTypesType.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesType(
      acceleratedDevices: map['acceleratedDevices'] as int,
      addons: pulumi.Input.decodeList<GetInstanceTypesTypeAddon>(map['addons'], (value) => GetInstanceTypesTypeAddon.fromMap((value as Map).cast<String, dynamic>())),
      class_: map['class'] as String,
      disk: map['disk'] as int,
      id: map['id'] as String,
      label: map['label'] as String,
      memory: map['memory'] as int,
      networkOut: map['networkOut'] as int,
      prices: pulumi.Input.decodeList<GetInstanceTypesTypePrice>(map['prices'], (value) => GetInstanceTypesTypePrice.fromMap((value as Map).cast<String, dynamic>())),
      regionPrices: pulumi.Input.decodeList<GetInstanceTypesTypeRegionPrice>(map['regionPrices'], (value) => GetInstanceTypesTypeRegionPrice.fromMap((value as Map).cast<String, dynamic>())),
      transfer: map['transfer'] as int,
      vcpus: map['vcpus'] as int,
    );
  }
}

