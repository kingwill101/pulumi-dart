// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_shares_data_share.dart';

/// Result data returned by getDataShares.
class GetDataSharesResult {
  /// An array of all data shares in the current region. See `dataShares` below.
  final List<GetDataSharesDataShare>? dataShares;
  /// AWS region.
  final String? id;
  final String? region;

  /// Creates a new [GetDataSharesResult].
  /// [dataShares] An array of all data shares in the current region. See `dataShares` below.
  /// [id] AWS region.
  /// [region] Optional.
  const GetDataSharesResult({
    this.dataShares,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataShares': ?(() { final guardedValue = dataShares; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataSharesDataShare, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetDataSharesResult.fromMap(Map<String, dynamic> map) {
    return GetDataSharesResult(
      dataShares: (() { final guardedValue = map['dataShares']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataSharesDataShare>(guardedValue, (value) => GetDataSharesDataShare.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
