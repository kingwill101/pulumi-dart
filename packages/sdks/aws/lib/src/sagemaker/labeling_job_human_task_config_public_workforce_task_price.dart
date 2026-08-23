// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'labeling_job_human_task_config_public_workforce_task_price_amount_in_usd.dart';

class LabelingJobHumanTaskConfigPublicWorkforceTaskPrice {
  /// Amount of money paid to an Amazon Mechanical Turk worker in United States dollars. Fields are documented below.
  final pulumi.Input<LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd>? amountInUsd;

  /// Creates a new [LabelingJobHumanTaskConfigPublicWorkforceTaskPrice].
  /// [amountInUsd] Amount of money paid to an Amazon Mechanical Turk worker in United States dollars. Fields are documented below.
  const LabelingJobHumanTaskConfigPublicWorkforceTaskPrice({
    this.amountInUsd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amountInUsd': ?pulumi.Input.mapOptionalInputValue<LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd, Map<String, dynamic>>(amountInUsd, (value) => value.toMap()),
    };
  }

  factory LabelingJobHumanTaskConfigPublicWorkforceTaskPrice.fromMap(Map<String, dynamic> map) {
    return LabelingJobHumanTaskConfigPublicWorkforceTaskPrice(
      amountInUsd: (() { final guardedValue = map['amountInUsd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
