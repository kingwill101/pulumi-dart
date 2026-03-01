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
  SuppressionListArgs({
    required pulumi.Output<String> domainName,
    required pulumi.Output<String> emailServiceName,
    pulumi.Output<String>? listName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? suppressionListName,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      emailServiceName = pulumi.Input.asInput<String>(emailServiceName),
      listName = pulumi.Input.asOptionalInput<String>(listName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      suppressionListName = pulumi.Input.asOptionalInput<String>(suppressionListName);

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
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      emailServiceName: pulumi.Output.create<String>(map['emailServiceName'] as String),
      listName: map['listName'] == null ? null : pulumi.Output.create<String>(map['listName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      suppressionListName: map['suppressionListName'] == null ? null : pulumi.Output.create<String>(map['suppressionListName'] as String),
    );
  }
}

