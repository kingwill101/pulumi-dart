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
    return <String, dynamic>{
      'dataShares': pulumi.Input.encodeList<GetProducerDataSharesDataShare, Map<String, dynamic>>(dataShares, (value) => value.toMap()),
      'id': id,
      'producerArn': producerArn,
      'region': region,
      'status': ?status,
    };
  }

  factory GetProducerDataSharesResult.fromMap(Map<String, dynamic> map) {
    return GetProducerDataSharesResult(
      dataShares: pulumi.Input.decodeList<GetProducerDataSharesDataShare>(map['dataShares']!, (value) => GetProducerDataSharesDataShare.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      producerArn: map['producerArn'] as String,
      region: map['region'] as String,
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

