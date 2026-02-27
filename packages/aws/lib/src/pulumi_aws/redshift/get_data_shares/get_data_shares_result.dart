// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_data_shares_data_share/get_data_shares_data_share.dart';

/// Result data returned by getDataShares.
class GetDataSharesResult {
  /// An array of all data shares in the current region. See `data_shares` below.
  final List<GetDataSharesDataShare> dataShares;

  /// AWS region.
  final String id;
  final String region;

  GetDataSharesResult({
    required this.dataShares,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataShares'] =
        Input.encodeList<GetDataSharesDataShare, Map<String, dynamic>>(
            dataShares, (value) => value.toMap());
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetDataSharesResult.fromMap(Map<String, dynamic> map) {
    return GetDataSharesResult(
      dataShares: Input.decodeList<GetDataSharesDataShare>(
          map['dataShares'],
          (value) => GetDataSharesDataShare.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
