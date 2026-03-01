// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_addons_get_support_plan_type_args_doc}
/// Arguments for getSupportPlanType.
/// {@endtemplate}
/// {@macro pulumi_addons_get_support_plan_type_args_doc}
class GetSupportPlanTypeArgs {
  /// The Canonical support plan type.
  final pulumi.Input<String> planTypeName;
  /// The support plan type. For now the only valid type is "canonical".
  final pulumi.Input<String> providerName;

  /// Creates a new [GetSupportPlanTypeArgs].
  /// [planTypeName] The Canonical support plan type.
  /// [providerName] The support plan type. For now the only valid type is "canonical".
  GetSupportPlanTypeArgs({
    required String planTypeName,
    required String providerName,
  }) :
      planTypeName = pulumi.Input.asInput<String>(planTypeName),
      providerName = pulumi.Input.asInput<String>(providerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'planTypeName': planTypeName,
      'providerName': providerName,
    };
  }

  factory GetSupportPlanTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetSupportPlanTypeArgs(
      planTypeName: map['planTypeName'] as String,
      providerName: map['providerName'] as String,
    );
  }
}

