// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_rai_blocklist_item_args_doc}
/// Arguments for getRaiBlocklistItem.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_rai_blocklist_item_args_doc}
class GetRaiBlocklistItemArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the RaiBlocklist Item associated with the custom blocklist
  final pulumi.Input<String> raiBlocklistItemName;
  /// The name of the RaiBlocklist associated with the Cognitive Services Account
  final pulumi.Input<String> raiBlocklistName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRaiBlocklistItemArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [raiBlocklistItemName] The name of the RaiBlocklist Item associated with the custom blocklist
  /// [raiBlocklistName] The name of the RaiBlocklist associated with the Cognitive Services Account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRaiBlocklistItemArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> raiBlocklistItemName,
    required pulumi.Output<String> raiBlocklistName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      raiBlocklistItemName = pulumi.Input.asInput<String>(raiBlocklistItemName),
      raiBlocklistName = pulumi.Input.asInput<String>(raiBlocklistName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'raiBlocklistItemName': raiBlocklistItemName,
      'raiBlocklistName': raiBlocklistName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRaiBlocklistItemArgs.fromMap(Map<String, dynamic> map) {
    return GetRaiBlocklistItemArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      raiBlocklistItemName: pulumi.Output.create<String>(map['raiBlocklistItemName'] as String),
      raiBlocklistName: pulumi.Output.create<String>(map['raiBlocklistName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

