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
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      vpdId: map['vpdId'] == null ? null : map['vpdId'] as String,
      vpdName: map['vpdName'] == null ? null : map['vpdName'] as String,
      vpds: pulumi.Input.decodeList<GetVpdsVpd>(map['vpds'], (value) => GetVpdsVpd.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

