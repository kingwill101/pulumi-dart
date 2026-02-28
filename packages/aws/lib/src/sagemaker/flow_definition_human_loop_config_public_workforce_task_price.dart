// ignore_for_file: unused_element, unnecessary_cast

import 'flow_definition_human_loop_config_public_workforce_task_price_amount_in_usd.dart';

class FlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice {
  /// Defines the amount of money paid to an Amazon Mechanical Turk worker in United States dollars. See Amount In Usd details below.
  final FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd? amountInUsd;

  /// Creates a new [FlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice].
  /// [amountInUsd] Defines the amount of money paid to an Amazon Mechanical Turk worker in United States dollars. See Amount In Usd details below.
  FlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice({
    this.amountInUsd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amountInUsd': ?amountInUsd == null ? null : amountInUsd!.toMap(),
    };
  }

  factory FlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice.fromMap(Map<String, dynamic> map) {
    return FlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice(
      amountInUsd: map['amountInUsd'] == null ? null : FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd.fromMap((map['amountInUsd'] as Map).cast<String, dynamic>()),
    );
  }
}

