// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone.dart';

/// Result data returned by getZones.
class GetZonesResult {
  final String? availableDiskCategory;
  final String? availableInstanceType;
  /// Type of resources that can be created.
  final String? availableResourceCreation;
  final String? availableSlbAddressIpVersion;
  final String? availableSlbAddressType;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of zone IDs.
  final List<String> ids;
  final String? instanceChargeType;
  final bool? multi;
  final String? networkType;
  final String? outputFile;
  final String? spotStrategy;
  /// A list of availability zones. Each element contains the following attributes:
  final List<GetZonesZone> zones;

  /// Creates a new [GetZonesResult].
  /// [availableDiskCategory] Optional.
  /// [availableInstanceType] Optional.
  /// [availableResourceCreation] Type of resources that can be created.
  /// [availableSlbAddressIpVersion] Optional.
  /// [availableSlbAddressType] Optional.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of zone IDs.
  /// [instanceChargeType] Optional.
  /// [multi] Optional.
  /// [networkType] Optional.
  /// [outputFile] Optional.
  /// [spotStrategy] Optional.
  /// [zones] A list of availability zones. Each element contains the following attributes:
  GetZonesResult({
    this.availableDiskCategory,
    this.availableInstanceType,
    this.availableResourceCreation,
    this.availableSlbAddressIpVersion,
    this.availableSlbAddressType,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.instanceChargeType,
    this.multi,
    this.networkType,
    this.outputFile,
    this.spotStrategy,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableDiskCategory': ?availableDiskCategory,
      'availableInstanceType': ?availableInstanceType,
      'availableResourceCreation': ?availableResourceCreation,
      'availableSlbAddressIpVersion': ?availableSlbAddressIpVersion,
      'availableSlbAddressType': ?availableSlbAddressType,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instanceChargeType': ?instanceChargeType,
      'multi': ?multi,
      'networkType': ?networkType,
      'outputFile': ?outputFile,
      'spotStrategy': ?spotStrategy,
      'zones': pulumi.Input.encodeList<GetZonesZone, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      availableDiskCategory: map['availableDiskCategory'] == null ? null : map['availableDiskCategory']! as String,
      availableInstanceType: map['availableInstanceType'] == null ? null : map['availableInstanceType']! as String,
      availableResourceCreation: map['availableResourceCreation'] == null ? null : map['availableResourceCreation']! as String,
      availableSlbAddressIpVersion: map['availableSlbAddressIpVersion'] == null ? null : map['availableSlbAddressIpVersion']! as String,
      availableSlbAddressType: map['availableSlbAddressType'] == null ? null : map['availableSlbAddressType']! as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType']! as String,
      multi: map['multi'] == null ? null : map['multi']! as bool,
      networkType: map['networkType'] == null ? null : map['networkType']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      spotStrategy: map['spotStrategy'] == null ? null : map['spotStrategy']! as String,
      zones: pulumi.Input.decodeList<GetZonesZone>(map['zones'], (value) => GetZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

