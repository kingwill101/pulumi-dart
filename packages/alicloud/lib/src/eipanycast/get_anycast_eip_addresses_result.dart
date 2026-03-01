// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_anycast_eip_addresses_address.dart';

/// Result data returned by getAnycastEipAddresses.
class GetAnycastEipAddressesResult {
  final List<GetAnycastEipAddressesAddress> addresses;
  final String? anycastEipAddressName;
  final List<String>? bindInstanceIds;
  final String? businessStatus;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? internetChargeType;
  final String? ipAddress;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? paymentType;
  final String? serviceLocation;
  final String? status;

  /// Creates a new [GetAnycastEipAddressesResult].
  /// [addresses] Required.
  /// [anycastEipAddressName] Optional.
  /// [bindInstanceIds] Optional.
  /// [businessStatus] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [internetChargeType] Optional.
  /// [ipAddress] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [paymentType] Optional.
  /// [serviceLocation] Optional.
  /// [status] Optional.
  GetAnycastEipAddressesResult({
    required this.addresses,
    this.anycastEipAddressName,
    this.bindInstanceIds,
    this.businessStatus,
    required this.id,
    required this.ids,
    this.internetChargeType,
    this.ipAddress,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.paymentType,
    this.serviceLocation,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': pulumi.Input.encodeList<GetAnycastEipAddressesAddress, Map<String, dynamic>>(addresses, (value) => value.toMap()),
      'anycastEipAddressName': ?anycastEipAddressName,
      'bindInstanceIds': ?bindInstanceIds,
      'businessStatus': ?businessStatus,
      'id': id,
      'ids': ids,
      'internetChargeType': ?internetChargeType,
      'ipAddress': ?ipAddress,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'paymentType': ?paymentType,
      'serviceLocation': ?serviceLocation,
      'status': ?status,
    };
  }

  factory GetAnycastEipAddressesResult.fromMap(Map<String, dynamic> map) {
    return GetAnycastEipAddressesResult(
      addresses: pulumi.Input.decodeList<GetAnycastEipAddressesAddress>(map['addresses'], (value) => GetAnycastEipAddressesAddress.fromMap((value as Map).cast<String, dynamic>())),
      anycastEipAddressName: map['anycastEipAddressName'] == null ? null : map['anycastEipAddressName'] as String,
      bindInstanceIds: map['bindInstanceIds'] == null ? null : (map['bindInstanceIds'] as List).cast<String>(),
      businessStatus: map['businessStatus'] == null ? null : map['businessStatus'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      internetChargeType: map['internetChargeType'] == null ? null : map['internetChargeType'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      serviceLocation: map['serviceLocation'] == null ? null : map['serviceLocation'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

