// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_get_producer_data_shares_get_producer_data_shares_args_doc}
/// Arguments for getProducerDataShares.
/// {@endtemplate}
/// {@macro pulumi_redshift_get_producer_data_shares_get_producer_data_shares_args_doc}
class GetProducerDataSharesArgs {
  /// Amazon Resource Name (ARN) of the producer namespace that returns in the list of datashares.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> producerArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Status of a datashare in the producer. Valid values are `ACTIVE`, `AUTHORIZED`, `PENDING_AUTHORIZATION`, `DEAUTHORIZED`, and `REJECTED`. Omit this argument to return all statuses.
  final pulumi.Input<String>? status;

  /// Creates a new [GetProducerDataSharesArgs].
  /// [producerArn] Amazon Resource Name (ARN) of the producer namespace that returns in the list of datashares.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of a datashare in the producer. Valid values are `ACTIVE`, `AUTHORIZED`, `PENDING_AUTHORIZATION`, `DEAUTHORIZED`, and `REJECTED`. Omit this argument to return all statuses.
  GetProducerDataSharesArgs({
    required String producerArn,
    String? region,
    String? status,
  }) : producerArn = pulumi.Input.asInput<String>(producerArn),
       region = pulumi.Input.asOptionalInput<String>(region),
       status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'producerArn': producerArn,
      'region': ?region,
      'status': ?status,
    };
  }

  factory GetProducerDataSharesArgs.fromMap(Map<String, dynamic> map) {
    return GetProducerDataSharesArgs(
      producerArn: map['producerArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
