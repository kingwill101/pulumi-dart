// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_status_egress_policy_egress_to_operation.dart';

class ServicePerimeterStatusEgressPolicyEgressTo {
  /// A list of external resources that are allowed to be accessed. A request
  /// matches if it contains an external resource in this list (Example:
  /// s3://bucket/path). Currently '*' is not allowed.
  final List<String>? externalResources;

  /// A list of `ApiOperations` that this egress rule applies to. A request matches
  /// if it contains an operation/service in this list.
  /// Structure is documented below.
  final List<ServicePerimeterStatusEgressPolicyEgressToOperation>? operations;

  /// A list of resources, currently only projects in the form
  /// `projects/<projectnumber>`, that match this to stanza. A request matches
  /// if it contains a resource in this list. If * is specified for resources,
  /// then this `EgressTo` rule will authorize access to all resources outside
  /// the perimeter.
  final List<String>? resources;

  /// A list of IAM roles that represent the set of operations that the sources
  /// specified in the corresponding `EgressFrom`
  /// are allowed to perform.
  final List<String>? roles;

  /// Creates a new [ServicePerimeterStatusEgressPolicyEgressTo].
  /// [externalResources] A list of external resources that are allowed to be accessed. A request
  /// [operations] A list of `ApiOperations` that this egress rule applies to. A request matches
  /// [resources] A list of resources, currently only projects in the form
  /// [roles] A list of IAM roles that represent the set of operations that the sources
  ServicePerimeterStatusEgressPolicyEgressTo({
    this.externalResources,
    this.operations,
    this.resources,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final externalResourcesValue = externalResources;
    if (externalResourcesValue != null) {
      map['externalResources'] = externalResourcesValue;
    }
    final operationsValue = operations;
    if (operationsValue != null) {
      map['operations'] = pulumi.Input.encodeList<
          ServicePerimeterStatusEgressPolicyEgressToOperation,
          Map<String, dynamic>>(operationsValue, (value) => value.toMap());
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = resourcesValue;
    }
    final rolesValue = roles;
    if (rolesValue != null) {
      map['roles'] = rolesValue;
    }
    return map;
  }

  factory ServicePerimeterStatusEgressPolicyEgressTo.fromMap(
      Map<String, dynamic> map) {
    return ServicePerimeterStatusEgressPolicyEgressTo(
      externalResources: map['externalResources'] == null
          ? null
          : (map['externalResources'] as List).cast<String>(),
      operations: map['operations'] == null
          ? null
          : pulumi.Input.decodeList<
                  ServicePerimeterStatusEgressPolicyEgressToOperation>(
              map['operations'],
              (value) =>
                  ServicePerimeterStatusEgressPolicyEgressToOperation.fromMap(
                      (value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null
          ? null
          : (map['resources'] as List).cast<String>(),
      roles:
          map['roles'] == null ? null : (map['roles'] as List).cast<String>(),
    );
  }
}
