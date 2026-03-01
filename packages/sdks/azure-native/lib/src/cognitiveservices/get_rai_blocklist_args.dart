// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_rai_blocklist_args_doc}
/// Arguments for getRaiBlocklist.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_rai_blocklist_args_doc}
class GetRaiBlocklistArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the RaiBlocklist associated with the Cognitive Services Account
  final pulumi.Input<String> raiBlocklistName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRaiBlocklistArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [raiBlocklistName] The name of the RaiBlocklist associated with the Cognitive Services Account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRaiBlocklistArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> raiBlocklistName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      raiBlocklistName = pulumi.Input.asInput<String>(raiBlocklistName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'raiBlocklistName': raiBlocklistName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRaiBlocklistArgs.fromMap(Map<String, dynamic> map) {
    return GetRaiBlocklistArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      raiBlocklistName: pulumi.Output.create<String>(map['raiBlocklistName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

