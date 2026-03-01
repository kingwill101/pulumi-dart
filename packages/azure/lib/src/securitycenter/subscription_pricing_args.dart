// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_pricing_extension.dart';

/// {@template pulumi_securitycenter_subscription_pricing_subscription_pricing_args_doc}
/// The set of arguments for SubscriptionPricing.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_subscription_pricing_subscription_pricing_args_doc}
class SubscriptionPricingArgs {
  /// One or more `extension` blocks as defined below.
  final pulumi.Input<List<SubscriptionPricingExtension>>? extensions;
  /// The resource type this setting affects. Possible values are `AI`, `Api`, `AppServices`, `ContainerRegistry`, `KeyVaults`, `KubernetesService`, `SqlServers`, `SqlServerVirtualMachines`, `StorageAccounts`, `VirtualMachines`, `Arm`, `Dns`, `OpenSourceRelationalDatabases`, `Containers`, `CosmosDbs` and `CloudPosture`. Defaults to `VirtualMachines`
  final pulumi.Input<String>? resourceType;
  /// Resource type pricing subplan. Contact your MSFT representative for possible values. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subplan;
  /// The pricing tier to use. Possible values are `Free` and `Standard`.
  final pulumi.Input<String> tier;

  /// Creates a new [SubscriptionPricingArgs].
  /// [extensions] One or more `extension` blocks as defined below.
  /// [resourceType] The resource type this setting affects. Possible values are `AI`, `Api`, `AppServices`, `ContainerRegistry`, `KeyVaults`, `KubernetesService`, `SqlServers`, `SqlServerVirtualMachines`, `StorageAccounts`, `VirtualMachines`, `Arm`, `Dns`, `OpenSourceRelationalDatabases`, `Containers`, `CosmosDbs` and `CloudPosture`. Defaults to `VirtualMachines`
  /// [subplan] Resource type pricing subplan. Contact your MSFT representative for possible values. Changing this forces a new resource to be created.
  /// [tier] The pricing tier to use. Possible values are `Free` and `Standard`.
  SubscriptionPricingArgs({
    List<SubscriptionPricingExtension>? extensions,
    String? resourceType,
    String? subplan,
    required String tier,
  }) :
      extensions = pulumi.Input.asOptionalInput<List<SubscriptionPricingExtension>>(extensions),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      subplan = pulumi.Input.asOptionalInput<String>(subplan),
      tier = pulumi.Input.asInput<String>(tier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionPricingExtension>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<SubscriptionPricingExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceType': ?resourceType,
      'subplan': ?subplan,
      'tier': tier,
    };
  }

  factory SubscriptionPricingArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionPricingArgs(
      extensions: map['extensions'] == null ? null : pulumi.Input.decodeList<SubscriptionPricingExtension>(map['extensions'], (value) => SubscriptionPricingExtension.fromMap((value as Map).cast<String, dynamic>())),
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      subplan: map['subplan'] == null ? null : map['subplan'] as String,
      tier: map['tier'] as String,
    );
  }
}

