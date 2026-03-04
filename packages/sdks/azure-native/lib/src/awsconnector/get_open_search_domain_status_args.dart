// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_open_search_domain_status_args_doc}
/// Arguments for getOpenSearchDomainStatus.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_open_search_domain_status_args_doc}
class GetOpenSearchDomainStatusArgs {
  /// Name of OpenSearchDomainStatus
  final pulumi.Input<String> name;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOpenSearchDomainStatusArgs].
  /// [name] Name of OpenSearchDomainStatus
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetOpenSearchDomainStatusArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOpenSearchDomainStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetOpenSearchDomainStatusArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
