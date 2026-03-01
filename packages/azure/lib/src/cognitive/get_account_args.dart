// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitive_get_account_get_account_args_doc}
/// Arguments for getAccount.
/// {@endtemplate}
/// {@macro pulumi_cognitive_get_account_get_account_args_doc}
class GetAccountArgs {
  /// Specifies the name of the Cognitive Services Account.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group where the Cognitive Services Account resides.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetAccountArgs].
  /// [name] Specifies the name of the Cognitive Services Account.
  /// [resourceGroupName] Specifies the name of the resource group where the Cognitive Services Account resides.
  /// [tags] A mapping of tags to assigned to the resource.
  GetAccountArgs({
    required String name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

