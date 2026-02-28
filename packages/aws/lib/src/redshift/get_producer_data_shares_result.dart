// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_producer_data_shares_data_share.dart';

/// Result data returned by getProducerDataShares.
class GetProducerDataSharesResult {
  /// An array of all data shares in the producer. See `data_shares` below.
  final List<GetProducerDataSharesDataShare> dataShares;

  /// Producer ARN.
  final String id;

  /// ARN (Amazon Resource Name) of the producer.
  final String producerArn;
  final String region;
  final String? status;

  /// Creates a new [GetProducerDataSharesResult].
  /// [dataShares] An array of all data shares in the producer. See `data_shares` below.
  /// [id] Producer ARN.
  /// [producerArn] ARN (Amazon Resource Name) of the producer.
  /// [region] Required.
  /// [status] Optional.
  GetProducerDataSharesResult({
    required this.dataShares,
    required this.id,
    required this.producerArn,
    required this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataShares'] = pulumi.Input.encodeList<GetProducerDataSharesDataShare,
        Map<String, dynamic>>(dataShares, (value) => value.toMap());
    map['id'] = id;
    map['producerArn'] = producerArn;
    map['region'] = region;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory GetProducerDataSharesResult.fromMap(Map<String, dynamic> map) {
    return GetProducerDataSharesResult(
      dataShares: pulumi.Input.decodeList<GetProducerDataSharesDataShare>(
          map['dataShares'],
          (value) => GetProducerDataSharesDataShare.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      producerArn: map['producerArn'] as String,
      region: map['region'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
