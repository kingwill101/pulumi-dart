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
    required this.accountName,
    this.properties,
    this.raiBlocklistItemName,
    required this.raiBlocklistName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            RaiBlocklistItemProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'raiBlocklistItemName': ?raiBlocklistItemName,
      'raiBlocklistName': raiBlocklistName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory RaiBlocklistItemArgs.fromMap(Map<String, dynamic> map) {
    return RaiBlocklistItemArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RaiBlocklistItemProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      raiBlocklistItemName: (() {
        final guardedValue = map['raiBlocklistItemName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      raiBlocklistName: pulumi.Input.fromValue(
        map['raiBlocklistName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
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
