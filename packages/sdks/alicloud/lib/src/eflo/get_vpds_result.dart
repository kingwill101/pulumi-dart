// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpds_vpd.dart';

/// Result data returned by getVpds.
class GetVpdsResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Vpd IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Vpds.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// Resource group id
  final String? resourceGroupId;
  /// The Vpd status.
  final String? status;
  /// The id of the vpd.
  final String? vpdId;
  /// The Name of the VPD.
  final String? vpdName;
  /// A list of Vpd Entries. Each element contains the following attributes:
  final List<GetVpdsVpd> vpds;

  /// Creates a new [GetVpdsResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Vpd IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Vpds.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] Resource group id
  /// [status] The Vpd status.
  /// [vpdId] The id of the vpd.
  /// [vpdName] The Name of the VPD.
  /// [vpds] A list of Vpd Entries. Each element contains the following attributes:
  GetVpdsResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.resourceGroupId,
    this.status,
    this.vpdId,
    this.vpdName,
    required this.vpds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'vpdId': ?vpdId,
      'vpdName': ?vpdName,
      'vpds': pulumi.Input.encodeList<GetVpdsVpd, Map<String, dynamic>>(vpds, (value) => value.toMap()),
    };
  }

  factory GetVpdsResult.fromMap(Map<String, dynamic> map) {
    return GetVpdsResult(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpdId: (() { final guardedValue = map['vpdId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpdName: (() { final guardedValue = map['vpdName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpds: pulumi.Input.decodeList<GetVpdsVpd>(map['vpds']!, (value) => GetVpdsVpd.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

