// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_suppression_list_args_doc}
/// The set of arguments for SuppressionList.
/// {@endtemplate}
/// {@macro pulumi_communication_suppression_list_args_doc}
class SuppressionListArgs {
  /// The name of the Domains resource.
  final pulumi.Input<String> domainName;
  /// The name of the EmailService resource.
  final pulumi.Input<String> emailServiceName;
  /// The the name of the suppression list. This value must match one of the valid sender usernames of the sending domain.
  final pulumi.Input<String>? listName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the suppression list.
  final pulumi.Input<String>? suppressionListName;

  /// Creates a new [SuppressionListArgs].
  /// [domainName] The name of the Domains resource.
  /// [emailServiceName] The name of the EmailService resource.
  /// [listName] The the name of the suppression list. This value must match one of the valid sender usernames of the sending domain.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [suppressionListName] The name of the suppression list.
  const SuppressionListArgs({
    required this.domainName,
    required this.emailServiceName,
    this.listName,
    required this.resourceGroupName,
    this.suppressionListName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'emailServiceName': emailServiceName,
      'listName': ?listName,
      'resourceGroupName': resourceGroupName,
      'suppressionListName': ?suppressionListName,
    };
  }

  factory SuppressionListArgs.fromMap(Map<String, dynamic> map) {
    return SuppressionListArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      emailServiceName: pulumi.Input.fromValue(map['emailServiceName'] as String),
      listName: (() { final guardedValue = map['listName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      suppressionListName: (() { final guardedValue = map['suppressionListName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
