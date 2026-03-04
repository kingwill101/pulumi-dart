// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_setting_properties.dart';
import 'sku.dart';

/// {@template pulumi_botservice_bot_connection_args_doc}
/// The set of arguments for BotConnection.
/// {@endtemplate}
/// {@macro pulumi_botservice_bot_connection_args_doc}
class BotConnectionArgs {
  /// The name of the Bot Service Connection Setting resource.
  final pulumi.Input<String>? connectionName;

  /// Required. Gets or sets the Kind of the resource.
  final pulumi.Input<String>? kind;

  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;

  /// The set of properties specific to bot channel resource
  final pulumi.Input<ConnectionSettingProperties>? properties;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the Bot resource.
  final pulumi.Input<String> resourceName;

  /// Gets or sets the SKU of the resource.
  final pulumi.Input<Sku>? sku;

  /// Contains resource tags defined as key/value pairs.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BotConnectionArgs].
  /// [connectionName] The name of the Bot Service Connection Setting resource.
  /// [kind] Required. Gets or sets the Kind of the resource.
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to bot channel resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Bot resource.
  /// [sku] Gets or sets the SKU of the resource.
  /// [tags] Contains resource tags defined as key/value pairs.
  BotConnectionArgs({
    this.connectionName,
    this.kind,
    this.location,
    this.properties,
    required this.resourceGroupName,
    required this.resourceName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'kind': ?kind,
      'location': ?location,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionSettingProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'tags': ?tags,
    };
  }

  factory BotConnectionArgs.fromMap(Map<String, dynamic> map) {
    return BotConnectionArgs(
      connectionName: (() {
        final guardedValue = map['connectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionSettingProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Sku.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
