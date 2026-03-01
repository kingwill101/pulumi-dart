// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_eip_addresses_address.dart';
import 'get_eip_addresses_eip.dart';

/// Result data returned by getEipAddresses.
class GetEipAddressesResult {
  final String? addressName;
  final List<GetEipAddressesAddress> addresses;
  final String? associatedInstanceId;
  final String? associatedInstanceType;
  final bool? dryRun;
  final List<GetEipAddressesEip> eips;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final bool? includeReservationData;
  final String? ipAddress;
  final List<String>? ipAddresses;
  final String? isp;
  final String? lockReason;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? paymentType;
  final String? resourceGroupId;
  final String? segmentInstanceId;
  final String? status;
  final Map<String, String>? tags;

  /// Creates a new [GetEipAddressesResult].
  /// [addressName] Optional.
  /// [addresses] Required.
  /// [associatedInstanceId] Optional.
  /// [associatedInstanceType] Optional.
  /// [dryRun] Optional.
  /// [eips] Required.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [includeReservationData] Optional.
  /// [ipAddress] Optional.
  /// [ipAddresses] Optional.
  /// [isp] Optional.
  /// [lockReason] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [paymentType] Optional.
  /// [resourceGroupId] Optional.
  /// [segmentInstanceId] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  GetEipAddressesResult({
    this.addressName,
    required this.addresses,
    this.associatedInstanceId,
    this.associatedInstanceType,
    this.dryRun,
    required this.eips,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.includeReservationData,
    this.ipAddress,
    this.ipAddresses,
    this.isp,
    this.lockReason,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.paymentType,
    this.resourceGroupId,
    this.segmentInstanceId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressName': ?addressName,
      'addresses': pulumi.Input.encodeList<GetEipAddressesAddress, Map<String, dynamic>>(addresses, (value) => value.toMap()),
      'associatedInstanceId': ?associatedInstanceId,
      'associatedInstanceType': ?associatedInstanceType,
      'dryRun': ?dryRun,
      'eips': pulumi.Input.encodeList<GetEipAddressesEip, Map<String, dynamic>>(eips, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'includeReservationData': ?includeReservationData,
      'ipAddress': ?ipAddress,
      'ipAddresses': ?ipAddresses,
      'isp': ?isp,
      'lockReason': ?lockReason,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'paymentType': ?paymentType,
      'resourceGroupId': ?resourceGroupId,
      'segmentInstanceId': ?segmentInstanceId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetEipAddressesResult.fromMap(Map<String, dynamic> map) {
    return GetEipAddressesResult(
      addressName: map['addressName'] == null ? null : map['addressName'] as String,
      addresses: pulumi.Input.decodeList<GetEipAddressesAddress>(map['addresses'], (value) => GetEipAddressesAddress.fromMap((value as Map).cast<String, dynamic>())),
      associatedInstanceId: map['associatedInstanceId'] == null ? null : map['associatedInstanceId'] as String,
      associatedInstanceType: map['associatedInstanceType'] == null ? null : map['associatedInstanceType'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      eips: pulumi.Input.decodeList<GetEipAddressesEip>(map['eips'], (value) => GetEipAddressesEip.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeReservationData: map['includeReservationData'] == null ? null : map['includeReservationData'] as bool,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
      isp: map['isp'] == null ? null : map['isp'] as String,
      lockReason: map['lockReason'] == null ? null : map['lockReason'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      segmentInstanceId: map['segmentInstanceId'] == null ? null : map['segmentInstanceId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

