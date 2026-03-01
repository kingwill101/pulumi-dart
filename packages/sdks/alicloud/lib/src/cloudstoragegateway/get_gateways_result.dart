// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateways_gateway.dart';

/// Result data returned by getGateways.
class GetGatewaysResult {
  final List<GetGatewaysGateway> gateways;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? status;
  final String storageBundleId;
  final int totalCount;

  /// Creates a new [GetGatewaysResult].
  /// [gateways] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] Optional.
  /// [storageBundleId] Required.
  /// [totalCount] Required.
  GetGatewaysResult({
    required this.gateways,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
    required this.storageBundleId,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gateways': pulumi.Input.encodeList<GetGatewaysGateway, Map<String, dynamic>>(gateways, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
      'storageBundleId': storageBundleId,
      'totalCount': totalCount,
    };
  }

  factory GetGatewaysResult.fromMap(Map<String, dynamic> map) {
    return GetGatewaysResult(
      gateways: pulumi.Input.decodeList<GetGatewaysGateway>(map['gateways'], (value) => GetGatewaysGateway.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      status: map['status'] == null ? null : map['status'] as String,
      storageBundleId: map['storageBundleId'] as String,
      totalCount: map['totalCount'] as int,
    );
  }
}

