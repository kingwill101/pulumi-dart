// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_bot_properties.dart';
import 'identity.dart';
import 'sku.dart';

/// {@template pulumi_healthbot_bot_args_doc}
/// The set of arguments for Bot.
/// {@endtemplate}
/// {@macro pulumi_healthbot_bot_args_doc}
class BotArgs {
  /// The name of the Bot resource.
  final pulumi.Input<String>? botName;
  /// The identity of the Azure Health Bot.
  final pulumi.Input<Identity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The set of properties specific to Azure Health Bot resource.
  final pulumi.Input<HealthBotProperties>? properties;
  /// The name of the Bot resource group in the user subscription.
  final pulumi.Input<String> resourceGroupName;
  /// SKU of the Azure Health Bot.
  final pulumi.Input<Sku> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BotArgs].
  /// [botName] The name of the Bot resource.
  /// [identity] The identity of the Azure Health Bot.
  /// [location] The geo-location where the resource lives
  /// [properties] The set of properties specific to Azure Health Bot resource.
  /// [resourceGroupName] The name of the Bot resource group in the user subscription.
  /// [sku] SKU of the Azure Health Bot.
  /// [tags] Resource tags.
  BotArgs({
    this.botName,
    this.identity,
    this.location,
    this.properties,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': ?botName,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<HealthBotProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory BotArgs.fromMap(Map<String, dynamic> map) {
    return BotArgs(
      botName: map['botName'] == null ? null : (map['botName'] as String).input(),
      identity: map['identity'] == null ? null : (Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: map['properties'] == null ? null : (HealthBotProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

