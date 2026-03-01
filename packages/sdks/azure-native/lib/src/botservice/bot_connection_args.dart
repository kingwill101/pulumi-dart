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
    pulumi.Output<String>? connectionName,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<ConnectionSettingProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      connectionName = pulumi.Input.asOptionalInput<String>(connectionName),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ConnectionSettingProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'kind': ?kind,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConnectionSettingProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory BotConnectionArgs.fromMap(Map<String, dynamic> map) {
    return BotConnectionArgs(
      connectionName: map['connectionName'] == null ? null : pulumi.Output.create<String>(map['connectionName'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ConnectionSettingProperties>(ConnectionSettingProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

