// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_inheritance_properties.dart';

/// {@template pulumi_costmanagement_tag_inheritance_setting_args_doc}
/// The set of arguments for TagInheritanceSetting.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_tag_inheritance_setting_args_doc}
class TagInheritanceSettingArgs {
  /// Specifies the kind of settings.
  /// Expected value is 'taginheritance'.
  final pulumi.Input<String> kind;
  /// The properties of the tag inheritance setting.
  final pulumi.Input<TagInheritanceProperties>? properties;
  /// The scope associated with this setting. This includes 'subscriptions/{subscriptionId}' for subscription scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for billing profile scope.
  final pulumi.Input<String> scope;
  /// Setting type.
  final pulumi.Input<String>? type;

  /// Creates a new [TagInheritanceSettingArgs].
  /// [kind] Specifies the kind of settings.
  /// [properties] The properties of the tag inheritance setting.
  /// [scope] The scope associated with this setting. This includes 'subscriptions/{subscriptionId}' for subscription scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for billing profile scope.
  /// [type] Setting type.
  TagInheritanceSettingArgs({
    required this.kind,
    this.properties,
    required this.scope,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'properties': ?pulumi.Input.mapOptionalInputValue<TagInheritanceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'scope': scope,
      'type': ?type,
    };
  }

  factory TagInheritanceSettingArgs.fromMap(Map<String, dynamic> map) {
    return TagInheritanceSettingArgs(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TagInheritanceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

