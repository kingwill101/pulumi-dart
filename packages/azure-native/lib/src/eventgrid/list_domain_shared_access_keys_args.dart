// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_list_domain_shared_access_keys_args_doc}
/// Arguments for listDomainSharedAccessKeys.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_list_domain_shared_access_keys_args_doc}
class ListDomainSharedAccessKeysArgs {
  /// Name of the domain.
  final pulumi.Input<String> domainName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListDomainSharedAccessKeysArgs].
  /// [domainName] Name of the domain.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  ListDomainSharedAccessKeysArgs({
    required String domainName,
    required String resourceGroupName,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListDomainSharedAccessKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListDomainSharedAccessKeysArgs(
      domainName: map['domainName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

