// ignore_for_file: unused_element, unnecessary_cast

import 'deploy_policy_selector_delivery_pipeline.dart';
import 'deploy_policy_selector_target.dart';

class DeployPolicySelector {
  /// Contains attributes about a delivery pipeline.
  /// Structure is documented below.
  final DeployPolicySelectorDeliveryPipeline? deliveryPipeline;
  /// Contains attributes about a target.
  /// Structure is documented below.
  final DeployPolicySelectorTarget? target;

  /// Creates a new [DeployPolicySelector].
  /// [deliveryPipeline] Contains attributes about a delivery pipeline.
  /// [target] Contains attributes about a target.
  DeployPolicySelector({
    this.deliveryPipeline,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryPipeline': ?deliveryPipeline == null ? null : deliveryPipeline!.toMap(),
      'target': ?target == null ? null : target!.toMap(),
    };
  }

  factory DeployPolicySelector.fromMap(Map<String, dynamic> map) {
    return DeployPolicySelector(
      deliveryPipeline: map['deliveryPipeline'] == null ? null : DeployPolicySelectorDeliveryPipeline.fromMap((map['deliveryPipeline'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : DeployPolicySelectorTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

