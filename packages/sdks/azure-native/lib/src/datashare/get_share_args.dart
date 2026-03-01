// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_get_share_args_doc}
/// Arguments for getShare.
/// {@endtemplate}
/// {@macro pulumi_datashare_get_share_args_doc}
class GetShareArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share to retrieve.
  final pulumi.Input<String> shareName;

  /// Creates a new [GetShareArgs].
  /// [accountName] The name of the share account.
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share to retrieve.
  GetShareArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
    };
  }

  factory GetShareArgs.fromMap(Map<String, dynamic> map) {
    return GetShareArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareName: pulumi.Output.create<String>(map['shareName'] as String),
    );
  }
}

