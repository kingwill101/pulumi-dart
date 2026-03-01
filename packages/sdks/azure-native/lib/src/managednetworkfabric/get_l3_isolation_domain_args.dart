// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_l3_isolation_domain_args_doc}
/// Arguments for getL3IsolationDomain.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_l3_isolation_domain_args_doc}
class GetL3IsolationDomainArgs {
  /// Name of the L3 Isolation Domain.
  final pulumi.Input<String> l3IsolationDomainName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetL3IsolationDomainArgs].
  /// [l3IsolationDomainName] Name of the L3 Isolation Domain.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetL3IsolationDomainArgs({
    required pulumi.Output<String> l3IsolationDomainName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      l3IsolationDomainName = pulumi.Input.asInput<String>(l3IsolationDomainName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'l3IsolationDomainName': l3IsolationDomainName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetL3IsolationDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetL3IsolationDomainArgs(
      l3IsolationDomainName: pulumi.Output.create<String>(map['l3IsolationDomainName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

