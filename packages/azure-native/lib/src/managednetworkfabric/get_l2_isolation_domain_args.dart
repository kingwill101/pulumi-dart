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
  GetL2IsolationDomainArgs({
    required String l2IsolationDomainName,
    required String resourceGroupName,
  }) :
      l2IsolationDomainName = pulumi.Input.asInput<String>(l2IsolationDomainName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'l2IsolationDomainName': l2IsolationDomainName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetL2IsolationDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetL2IsolationDomainArgs(
      l2IsolationDomainName: map['l2IsolationDomainName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

