// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customproviders_get_custom_resource_provider_args_doc}
/// Arguments for getCustomResourceProvider.
/// {@endtemplate}
/// {@macro pulumi_customproviders_get_custom_resource_provider_args_doc}
class GetCustomResourceProviderArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource provider.
  final pulumi.Input<String> resourceProviderName;

  /// Creates a new [GetCustomResourceProviderArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [resourceProviderName] The name of the resource provider.
  GetCustomResourceProviderArgs({
    required this.resourceGroupName,
    required this.resourceProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceProviderName': resourceProviderName,
    };
  }

  factory GetCustomResourceProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomResourceProviderArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceProviderName: (map['resourceProviderName'] as String).input(),
    );
  }
}

