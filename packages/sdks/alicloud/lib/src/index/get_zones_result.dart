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
      availableDiskCategory: (() { final guardedValue = map['availableDiskCategory']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availableInstanceType: (() { final guardedValue = map['availableInstanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availableResourceCreation: (() { final guardedValue = map['availableResourceCreation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availableSlbAddressIpVersion: (() { final guardedValue = map['availableSlbAddressIpVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availableSlbAddressType: (() { final guardedValue = map['availableSlbAddressType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      multi: (() { final guardedValue = map['multi']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      spotStrategy: (() { final guardedValue = map['spotStrategy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: pulumi.Input.decodeList<GetZonesZone>(map['zones']!, (value) => GetZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

