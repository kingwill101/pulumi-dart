// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_softwareplan_get_hybrid_use_benefit_args_doc}
/// Arguments for getHybridUseBenefit.
/// {@endtemplate}
/// {@macro pulumi_softwareplan_get_hybrid_use_benefit_args_doc}
class GetHybridUseBenefitArgs {
  /// This is a unique identifier for a plan. Should be a guid.
  final pulumi.Input<String> planId;
  /// The scope at which the operation is performed. This is limited to Microsoft.Compute/virtualMachines and Microsoft.Compute/hostGroups/hosts for now
  final pulumi.Input<String> scope;

  /// Creates a new [GetHybridUseBenefitArgs].
  /// [planId] This is a unique identifier for a plan. Should be a guid.
  /// [scope] The scope at which the operation is performed. This is limited to Microsoft.Compute/virtualMachines and Microsoft.Compute/hostGroups/hosts for now
  GetHybridUseBenefitArgs({
    required String planId,
    required String scope,
  }) :
      planId = pulumi.Input.asInput<String>(planId),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'planId': planId,
      'scope': scope,
    };
  }

  factory GetHybridUseBenefitArgs.fromMap(Map<String, dynamic> map) {
    return GetHybridUseBenefitArgs(
      planId: map['planId'] as String,
      scope: map['scope'] as String,
    );
  }
}

