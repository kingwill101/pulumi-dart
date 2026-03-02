// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_kms_alias_args_doc}
/// Arguments for getKmsAlias.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_kms_alias_args_doc}
class GetKmsAliasArgs {
  /// Name of KmsAlias
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetKmsAliasArgs].
  /// [name] Name of KmsAlias
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetKmsAliasArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKmsAliasArgs.fromMap(Map<String, dynamic> map) {
    return GetKmsAliasArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

