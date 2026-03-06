// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_l2_isolation_domain_args_doc}
/// Arguments for getL2IsolationDomain.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_l2_isolation_domain_args_doc}
class GetL2IsolationDomainArgs {
  /// Name of the L2 Isolation Domain.
  final pulumi.Input<String> l2IsolationDomainName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetL2IsolationDomainArgs].
  /// [l2IsolationDomainName] Name of the L2 Isolation Domain.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetL2IsolationDomainArgs({
    required this.l2IsolationDomainName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'l2IsolationDomainName': l2IsolationDomainName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetL2IsolationDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetL2IsolationDomainArgs(
      l2IsolationDomainName: pulumi.Input.fromValue(map['l2IsolationDomainName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

