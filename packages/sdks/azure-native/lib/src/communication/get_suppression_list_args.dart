// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_get_suppression_list_args_doc}
/// Arguments for getSuppressionList.
/// {@endtemplate}
/// {@macro pulumi_communication_get_suppression_list_args_doc}
class GetSuppressionListArgs {
  /// The name of the Domains resource.
  final pulumi.Input<String> domainName;
  /// The name of the EmailService resource.
  final pulumi.Input<String> emailServiceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the suppression list.
  final pulumi.Input<String> suppressionListName;

  /// Creates a new [GetSuppressionListArgs].
  /// [domainName] The name of the Domains resource.
  /// [emailServiceName] The name of the EmailService resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [suppressionListName] The name of the suppression list.
  const GetSuppressionListArgs({
    required this.domainName,
    required this.emailServiceName,
    required this.resourceGroupName,
    required this.suppressionListName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'emailServiceName': emailServiceName,
      'resourceGroupName': resourceGroupName,
      'suppressionListName': suppressionListName,
    };
  }

  factory GetSuppressionListArgs.fromMap(Map<String, dynamic> map) {
    return GetSuppressionListArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      emailServiceName: pulumi.Input.fromValue(map['emailServiceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      suppressionListName: pulumi.Input.fromValue(map['suppressionListName'] as String),
    );
  }
}

