// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maps_get_creator_args_doc}
/// Arguments for getCreator.
/// {@endtemplate}
/// {@macro pulumi_maps_get_creator_args_doc}
class GetCreatorArgs {
  /// The name of the Maps Account.
  final pulumi.Input<String> accountName;
  /// The name of the Maps Creator instance.
  final pulumi.Input<String> creatorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCreatorArgs].
  /// [accountName] The name of the Maps Account.
  /// [creatorName] The name of the Maps Creator instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCreatorArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> creatorName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      creatorName = pulumi.Input.asInput<String>(creatorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'creatorName': creatorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCreatorArgs.fromMap(Map<String, dynamic> map) {
    return GetCreatorArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      creatorName: pulumi.Output.create<String>(map['creatorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

