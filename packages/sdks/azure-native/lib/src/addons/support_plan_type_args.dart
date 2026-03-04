// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_addons_support_plan_type_args_doc}
/// The set of arguments for SupportPlanType.
/// {@endtemplate}
/// {@macro pulumi_addons_support_plan_type_args_doc}
class SupportPlanTypeArgs {
  /// The Canonical support plan type.
  final pulumi.Input<String>? planTypeName;

  /// The support plan type. For now the only valid type is "canonical".
  final pulumi.Input<String> providerName;

  /// Creates a new [SupportPlanTypeArgs].
  /// [planTypeName] The Canonical support plan type.
  /// [providerName] The support plan type. For now the only valid type is "canonical".
  SupportPlanTypeArgs({this.planTypeName, required this.providerName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'planTypeName': ?planTypeName,
      'providerName': providerName,
    };
  }

  factory SupportPlanTypeArgs.fromMap(Map<String, dynamic> map) {
    return SupportPlanTypeArgs(
      planTypeName: (() {
        final guardedValue = map['planTypeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      providerName: pulumi.Input.fromValue(map['providerName'] as String),
    );
  }
}
