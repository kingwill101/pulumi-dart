// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_engagementfabric_list_account_channel_types_args_doc}
/// Arguments for listAccountChannelTypes.
/// {@endtemplate}
/// {@macro pulumi_engagementfabric_list_account_channel_types_args_doc}
class ListAccountChannelTypesArgs {
  /// Account Name
  final pulumi.Input<String> accountName;
  /// Resource Group Name
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListAccountChannelTypesArgs].
  /// [accountName] Account Name
  /// [resourceGroupName] Resource Group Name
  ListAccountChannelTypesArgs({
    required String accountName,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListAccountChannelTypesArgs.fromMap(Map<String, dynamic> map) {
    return ListAccountChannelTypesArgs(
      accountName: map['accountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

