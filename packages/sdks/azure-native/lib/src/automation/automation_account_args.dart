// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_properties.dart';
import 'identity.dart';
import 'sku.dart';

/// {@template pulumi_automation_automation_account_args_doc}
/// The set of arguments for AutomationAccount.
/// {@endtemplate}
/// {@macro pulumi_automation_automation_account_args_doc}
class AutomationAccountArgs {
  /// The name of the automation account.
  final pulumi.Input<String>? automationAccountName;
  /// Indicates whether requests using non-AAD authentication are blocked
  final pulumi.Input<bool>? disableLocalAuth;
  /// Set the encryption properties for the automation account
  final pulumi.Input<EncryptionProperties>? encryption;
  /// Sets the identity property for automation account
  final pulumi.Input<Identity>? identity;
  /// Gets or sets the location of the resource.
  final pulumi.Input<String>? location;
  /// Gets or sets name of the resource.
  final pulumi.Input<String>? name;
  /// Indicates whether traffic on the non-ARM endpoint (Webhook/Agent) is allowed from the public internet
  final pulumi.Input<bool>? publicNetworkAccess;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets account SKU.
  final pulumi.Input<Sku>? sku;
  /// Gets or sets the tags attached to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AutomationAccountArgs].
  /// [automationAccountName] The name of the automation account.
  /// [disableLocalAuth] Indicates whether requests using non-AAD authentication are blocked
  /// [encryption] Set the encryption properties for the automation account
  /// [identity] Sets the identity property for automation account
  /// [location] Gets or sets the location of the resource.
  /// [name] Gets or sets name of the resource.
  /// [publicNetworkAccess] Indicates whether traffic on the non-ARM endpoint (Webhook/Agent) is allowed from the public internet
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [sku] Gets or sets account SKU.
  /// [tags] Gets or sets the tags attached to the resource.
  AutomationAccountArgs({
    this.automationAccountName,
    this.disableLocalAuth,
    this.encryption,
    this.identity,
    this.location,
    this.name,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'disableLocalAuth': ?disableLocalAuth,
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionProperties, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AutomationAccountArgs.fromMap(Map<String, dynamic> map) {
    return AutomationAccountArgs(
      automationAccountName: map['automationAccountName'] == null ? null : (map['automationAccountName']! as String).input(),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : (map['disableLocalAuth']! as bool).input(),
      encryption: map['encryption'] == null ? null : (EncryptionProperties.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (Identity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

