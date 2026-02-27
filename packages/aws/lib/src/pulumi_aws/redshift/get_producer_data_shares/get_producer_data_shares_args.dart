// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProducerDataShares.
class GetProducerDataSharesArgs {
  /// Amazon Resource Name (ARN) of the producer namespace that returns in the list of datashares.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> producerArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Status of a datashare in the producer. Valid values are `ACTIVE`, `AUTHORIZED`, `PENDING_AUTHORIZATION`, `DEAUTHORIZED`, and `REJECTED`. Omit this argument to return all statuses.
  final pulumi.Input<String>? status;

  GetProducerDataSharesArgs({
    required this.producerArn,
    this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['producerArn'] = producerArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory GetProducerDataSharesArgs.fromMap(Map<String, dynamic> map) {
    return GetProducerDataSharesArgs(
      producerArn: pulumi.Input.asInput<String>(map['producerArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
    );
  }
}
