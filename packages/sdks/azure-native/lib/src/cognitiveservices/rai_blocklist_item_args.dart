// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_blocklist_item_properties.dart';

/// {@template pulumi_cognitiveservices_rai_blocklist_item_args_doc}
/// The set of arguments for RaiBlocklistItem.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_rai_blocklist_item_args_doc}
class RaiBlocklistItemArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// Properties of Cognitive Services RaiBlocklist Item.
  final pulumi.Input<RaiBlocklistItemProperties>? properties;
  /// The name of the RaiBlocklist Item associated with the custom blocklist
  final pulumi.Input<String>? raiBlocklistItemName;
  /// The name of the RaiBlocklist associated with the Cognitive Services Account
  final pulumi.Input<String> raiBlocklistName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RaiBlocklistItemArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [properties] Properties of Cognitive Services RaiBlocklist Item.
  /// [raiBlocklistItemName] The name of the RaiBlocklist Item associated with the custom blocklist
  /// [raiBlocklistName] The name of the RaiBlocklist associated with the Cognitive Services Account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  RaiBlocklistItemArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<RaiBlocklistItemProperties>? properties,
    pulumi.Output<String>? raiBlocklistItemName,
    required pulumi.Output<String> raiBlocklistName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      properties = pulumi.Input.asOptionalInput<RaiBlocklistItemProperties>(properties),
      raiBlocklistItemName = pulumi.Input.asOptionalInput<String>(raiBlocklistItemName),
      raiBlocklistName = pulumi.Input.asInput<String>(raiBlocklistName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'properties': ?pulumi.Input.mapOptionalInputValue<RaiBlocklistItemProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'raiBlocklistItemName': ?raiBlocklistItemName,
      'raiBlocklistName': raiBlocklistName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory RaiBlocklistItemArgs.fromMap(Map<String, dynamic> map) {
    return RaiBlocklistItemArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<RaiBlocklistItemProperties>(RaiBlocklistItemProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      raiBlocklistItemName: map['raiBlocklistItemName'] == null ? null : pulumi.Output.create<String>(map['raiBlocklistItemName'] as String),
      raiBlocklistName: pulumi.Output.create<String>(map['raiBlocklistName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

