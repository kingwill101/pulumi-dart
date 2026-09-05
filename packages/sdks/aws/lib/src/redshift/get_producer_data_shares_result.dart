// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_producer_data_shares_data_share.dart';

/// Result data returned by getProducerDataShares.
class GetProducerDataSharesResult {
  /// An array of all data shares in the producer. See `dataShares` below.
  final List<GetProducerDataSharesDataShare>? dataShares;
  /// Producer ARN.
  final String? id;
  /// ARN of the producer.
  final String? producerArn;
  final String? region;
  final String? status;

  /// Creates a new [GetProducerDataSharesResult].
  /// [dataShares] An array of all data shares in the producer. See `dataShares` below.
  /// [id] Producer ARN.
  /// [producerArn] ARN of the producer.
  /// [region] Optional.
  /// [status] Optional.
  const GetProducerDataSharesResult({
    this.dataShares,
    this.id,
    this.producerArn,
    this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataShares': ?(() { final guardedValue = dataShares; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProducerDataSharesDataShare, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'producerArn': ?producerArn,
      'region': ?region,
      'status': ?status,
    };
  }

  factory GetProducerDataSharesResult.fromMap(Map<String, dynamic> map) {
    return GetProducerDataSharesResult(
      dataShares: (() { final guardedValue = map['dataShares']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProducerDataSharesDataShare>(guardedValue, (value) => GetProducerDataSharesDataShare.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      producerArn: (() { final guardedValue = map['producerArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
