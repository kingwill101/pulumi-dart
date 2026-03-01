// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrative_credentials.dart';
import 'extended_location.dart';

/// {@template pulumi_networkcloud_storage_appliance_args_doc}
/// The set of arguments for StorageAppliance.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_storage_appliance_args_doc}
class StorageApplianceArgs {
  /// The credentials of the administrative interface on this storage appliance.
  final pulumi.Input<AdministrativeCredentials> administratorCredentials;
  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource ID of the rack where this storage appliance resides.
  final pulumi.Input<String> rackId;
  /// The slot the storage appliance is in the rack based on the BOM configuration.
  final pulumi.Input<double> rackSlot;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The serial number for the storage appliance.
  final pulumi.Input<String> serialNumber;
  /// The name of the storage appliance.
  final pulumi.Input<String>? storageApplianceName;
  /// The SKU for the storage appliance.
  final pulumi.Input<String> storageApplianceSkuId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StorageApplianceArgs].
  /// [administratorCredentials] The credentials of the administrative interface on this storage appliance.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [location] The geo-location where the resource lives
  /// [rackId] The resource ID of the rack where this storage appliance resides.
  /// [rackSlot] The slot the storage appliance is in the rack based on the BOM configuration.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serialNumber] The serial number for the storage appliance.
  /// [storageApplianceName] The name of the storage appliance.
  /// [storageApplianceSkuId] The SKU for the storage appliance.
  /// [tags] Resource tags.
  StorageApplianceArgs({
    required AdministrativeCredentials administratorCredentials,
    required ExtendedLocation extendedLocation,
    String? location,
    required String rackId,
    required double rackSlot,
    required String resourceGroupName,
    required String serialNumber,
    String? storageApplianceName,
    required String storageApplianceSkuId,
    Map<String, String>? tags,
  }) :
      administratorCredentials = pulumi.Input.asInput<AdministrativeCredentials>(administratorCredentials),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      rackId = pulumi.Input.asInput<String>(rackId),
      rackSlot = pulumi.Input.asInput<double>(rackSlot),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serialNumber = pulumi.Input.asInput<String>(serialNumber),
      storageApplianceName = pulumi.Input.asOptionalInput<String>(storageApplianceName),
      storageApplianceSkuId = pulumi.Input.asInput<String>(storageApplianceSkuId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorCredentials': pulumi.Input.mapInputValue<AdministrativeCredentials, Map<String, dynamic>>(administratorCredentials, (value) => value.toMap()),
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'rackId': rackId,
      'rackSlot': rackSlot,
      'resourceGroupName': resourceGroupName,
      'serialNumber': serialNumber,
      'storageApplianceName': ?storageApplianceName,
      'storageApplianceSkuId': storageApplianceSkuId,
      'tags': ?tags,
    };
  }

  factory StorageApplianceArgs.fromMap(Map<String, dynamic> map) {
    return StorageApplianceArgs(
      administratorCredentials: AdministrativeCredentials.fromMap((map['administratorCredentials'] as Map).cast<String, dynamic>()),
      extendedLocation: ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      rackId: map['rackId'] as String,
      rackSlot: map['rackSlot'] as double,
      resourceGroupName: map['resourceGroupName'] as String,
      serialNumber: map['serialNumber'] as String,
      storageApplianceName: map['storageApplianceName'] == null ? null : map['storageApplianceName'] as String,
      storageApplianceSkuId: map['storageApplianceSkuId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

