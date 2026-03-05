// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_eips_address.dart';
import 'get_eips_eip.dart';

/// Result data returned by getEips.
class GetEipsResult {
  final String? addressName;
  final List<GetEipsAddress> addresses;
  final String? associatedInstanceId;
  final String? associatedInstanceType;
  final bool? dryRun;
  /// A list of EIPs. Each element contains the following attributes:
  final List<GetEipsEip> eips;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (Optional) A list of EIP IDs.
  final List<String> ids;
  final bool? includeReservationData;
  /// Public IP Address of the the EIP.
  final String? ipAddress;
  final List<String>? ipAddresses;
  final String? isp;
  final String? lockReason;
  final String? nameRegex;
  /// (Optional) A list of EIP names.
  final List<String> names;
  final String? outputFile;
  final String? paymentType;
  /// The Id of resource group which the eips belongs.
  final String? resourceGroupId;
  final String? segmentInstanceId;
  /// EIP status. Possible values are: `Associating`, `Unassociating`, `InUse` and `Available`.
  final String? status;
  final Map<String, String>? tags;

  /// Creates a new [GetEipsResult].
  /// [addressName] Optional.
  /// [addresses] Required.
  /// [associatedInstanceId] Optional.
  /// [associatedInstanceType] Optional.
  /// [dryRun] Optional.
  /// [eips] A list of EIPs. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] (Optional) A list of EIP IDs.
  /// [includeReservationData] Optional.
  /// [ipAddress] Public IP Address of the the EIP.
  /// [ipAddresses] Optional.
  /// [isp] Optional.
  /// [lockReason] Optional.
  /// [nameRegex] Optional.
  /// [names] (Optional) A list of EIP names.
  /// [outputFile] Optional.
  /// [paymentType] Optional.
  /// [resourceGroupId] The Id of resource group which the eips belongs.
  /// [segmentInstanceId] Optional.
  /// [status] EIP status. Possible values are: `Associating`, `Unassociating`, `InUse` and `Available`.
  /// [tags] Optional.
  GetEipsResult({
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
      'addresses': pulumi.Input.encodeList<GetEipsAddress, Map<String, dynamic>>(addresses, (value) => value.toMap()),
      'associatedInstanceId': ?associatedInstanceId,
      'associatedInstanceType': ?associatedInstanceType,
      'dryRun': ?dryRun,
      'eips': pulumi.Input.encodeList<GetEipsEip, Map<String, dynamic>>(eips, (value) => value.toMap()),
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

  factory GetEipsResult.fromMap(Map<String, dynamic> map) {
    return GetEipsResult(
      addressName: (() { final guardedValue = map['addressName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      addresses: pulumi.Input.decodeList<GetEipsAddress>(map['addresses']!, (value) => GetEipsAddress.fromMap((value as Map).cast<String, dynamic>())),
      associatedInstanceId: (() { final guardedValue = map['associatedInstanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associatedInstanceType: (() { final guardedValue = map['associatedInstanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      eips: pulumi.Input.decodeList<GetEipsEip>(map['eips']!, (value) => GetEipsEip.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeReservationData: (() { final guardedValue = map['includeReservationData']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      isp: (() { final guardedValue = map['isp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lockReason: (() { final guardedValue = map['lockReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      segmentInstanceId: (() { final guardedValue = map['segmentInstanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

