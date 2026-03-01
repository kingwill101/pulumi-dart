// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_get_tag_inheritance_setting_args_doc}
/// Arguments for getTagInheritanceSetting.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_get_tag_inheritance_setting_args_doc}
class GetTagInheritanceSettingArgs {
  /// The scope associated with this setting. This includes 'subscriptions/{subscriptionId}' for subscription scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for billing profile scope.
  final pulumi.Input<String> scope;
  /// Setting type.
  final pulumi.Input<String> type;

  /// Creates a new [GetTagInheritanceSettingArgs].
  /// [scope] The scope associated with this setting. This includes 'subscriptions/{subscriptionId}' for subscription scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for billing profile scope.
  /// [type] Setting type.
  GetTagInheritanceSettingArgs({
    required pulumi.Output<String> scope,
    required pulumi.Output<String> type,
  }) :
      scope = pulumi.Input.asInput<String>(scope),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope,
      'type': type,
    };
  }

  factory GetTagInheritanceSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetTagInheritanceSettingArgs(
      scope: pulumi.Output.create<String>(map['scope'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

