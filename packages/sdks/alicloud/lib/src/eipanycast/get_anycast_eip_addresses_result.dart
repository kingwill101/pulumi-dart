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
      addresses: pulumi.Input.decodeList<GetAnycastEipAddressesAddress>(map['addresses']!, (value) => GetAnycastEipAddressesAddress.fromMap((value as Map).cast<String, dynamic>())),
      anycastEipAddressName: (() { final guardedValue = map['anycastEipAddressName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bindInstanceIds: (() { final guardedValue = map['bindInstanceIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      businessStatus: (() { final guardedValue = map['businessStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      internetChargeType: (() { final guardedValue = map['internetChargeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceLocation: (() { final guardedValue = map['serviceLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

