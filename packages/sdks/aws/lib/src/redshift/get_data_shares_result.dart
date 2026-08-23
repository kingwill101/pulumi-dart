// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_shares_data_share.dart';

/// Result data returned by getDataShares.
class GetDataSharesResult {
  /// An array of all data shares in the current region. See `dataShares` below.
  final List<GetDataSharesDataShare> dataShares;
  /// AWS region.
  final String id;
  final String region;

  /// Creates a new [GetDataSharesResult].
  /// [dataShares] An array of all data shares in the current region. See `dataShares` below.
  /// [id] AWS region.
  /// [region] Required.
  const GetDataSharesResult({
    required this.dataShares,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataShares': pulumi.Input.encodeList<GetDataSharesDataShare, Map<String, dynamic>>(dataShares, (value) => value.toMap()),
      'id': id,
      'region': region,
    };
  }

  factory GetDataSharesResult.fromMap(Map<String, dynamic> map) {
    return GetDataSharesResult(
      dataShares: pulumi.Input.decodeList<GetDataSharesDataShare>(map['dataShares']!, (value) => GetDataSharesDataShare.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
