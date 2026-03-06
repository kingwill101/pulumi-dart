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
  const GetSupportPlanTypeArgs({
    required this.planTypeName,
    required this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'planTypeName': planTypeName,
      'providerName': providerName,
    };
  }

  factory GetSupportPlanTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetSupportPlanTypeArgs(
      planTypeName: pulumi.Input.fromValue(map['planTypeName'] as String),
      providerName: pulumi.Input.fromValue(map['providerName'] as String),
    );
  }
}

