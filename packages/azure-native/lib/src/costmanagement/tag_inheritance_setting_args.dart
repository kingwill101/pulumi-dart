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
    required String kind,
    TagInheritanceProperties? properties,
    required String scope,
    String? type,
  }) :
      kind = pulumi.Input.asInput<String>(kind),
      properties = pulumi.Input.asOptionalInput<TagInheritanceProperties>(properties),
      scope = pulumi.Input.asInput<String>(scope),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      kind: map['kind'] as String,
      properties: map['properties'] == null ? null : TagInheritanceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      scope: map['scope'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

