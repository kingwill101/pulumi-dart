// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_definition_human_loop_config_public_workforce_task_price_amount_in_usd.dart';

class FlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice {
  /// Defines the amount of money paid to an Amazon Mechanical Turk worker in United States dollars. See Amount In Usd details below.
  final pulumi.Input<FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd?>? amountInUsd;

  /// Creates a new [FlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice].
  /// [amountInUsd] Defines the amount of money paid to an Amazon Mechanical Turk worker in United States dollars. See Amount In Usd details below.
  const FlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice({
    this.amountInUsd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amountInUsd': ?pulumi.Input.mapOptionalInputValue<FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd, Map<String, dynamic>>(amountInUsd, (value) => value.toMap()),
    };
  }

  factory FlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice.fromMap(Map<String, dynamic> map) {
    return FlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice(
      amountInUsd: (() { final guardedValue = map['amountInUsd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
