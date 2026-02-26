// ignore_for_file: unused_element, unnecessary_cast

import '../labeling_job_human_task_config_public_workforce_task_price_amount_in_usd/labeling_job_human_task_config_public_workforce_task_price_amount_in_usd.dart';

class LabelingJobHumanTaskConfigPublicWorkforceTaskPrice {
  /// Amount of money paid to an Amazon Mechanical Turk worker in United States dollars. Fields are documented below.
  final LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd?
      amountInUsd;

  LabelingJobHumanTaskConfigPublicWorkforceTaskPrice({
    this.amountInUsd,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amountInUsdValue = amountInUsd;
    if (amountInUsdValue != null) {
      map['amountInUsd'] = amountInUsdValue.toMap();
    }
    return map;
  }

  factory LabelingJobHumanTaskConfigPublicWorkforceTaskPrice.fromMap(
      Map<String, dynamic> map) {
    return LabelingJobHumanTaskConfigPublicWorkforceTaskPrice(
      amountInUsd: map['amountInUsd'] == null
          ? null
          : LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd
              .fromMap((map['amountInUsd'] as Map).cast<String, dynamic>()),
    );
  }
}
