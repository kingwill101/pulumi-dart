// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_account_capability_host_args_doc}
/// Arguments for getAccountCapabilityHost.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_account_capability_host_args_doc}
class GetAccountCapabilityHostArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the capability host associated with the Cognitive Services Resource
  final pulumi.Input<String> capabilityHostName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccountCapabilityHostArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [capabilityHostName] The name of the capability host associated with the Cognitive Services Resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAccountCapabilityHostArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> capabilityHostName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      capabilityHostName = pulumi.Input.asInput<String>(capabilityHostName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'capabilityHostName': capabilityHostName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccountCapabilityHostArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountCapabilityHostArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      capabilityHostName: pulumi.Output.create<String>(map['capabilityHostName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

