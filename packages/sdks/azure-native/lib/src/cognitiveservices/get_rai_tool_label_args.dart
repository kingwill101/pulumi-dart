// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_rai_tool_label_args_doc}
/// Arguments for getRaiToolLabel.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_rai_tool_label_args_doc}
class GetRaiToolLabelArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the Rai Tool Label
  final pulumi.Input<String> raiToolConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRaiToolLabelArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [raiToolConnectionName] The name of the Rai Tool Label
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRaiToolLabelArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> raiToolConnectionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      raiToolConnectionName = pulumi.Input.asInput<String>(raiToolConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'raiToolConnectionName': raiToolConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRaiToolLabelArgs.fromMap(Map<String, dynamic> map) {
    return GetRaiToolLabelArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      raiToolConnectionName: pulumi.Output.create<String>(map['raiToolConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

