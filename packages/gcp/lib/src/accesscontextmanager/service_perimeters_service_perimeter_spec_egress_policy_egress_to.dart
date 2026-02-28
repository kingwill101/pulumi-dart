// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_spec_egress_policy_egress_to_operation.dart';

class ServicePerimetersServicePerimeterSpecEgressPolicyEgressTo {
  /// A list of external resources that are allowed to be accessed. A request
  /// matches if it contains an external resource in this list (Example:
  /// s3://bucket/path). Currently '*' is not allowed.
  final List<String>? externalResources;
  /// A list of `ApiOperations` that this egress rule applies to. A request matches
  /// if it contains an operation/service in this list.
  /// Structure is documented below.
  final List<ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperation>? operations;
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

  /// Creates a new [ServicePerimetersServicePerimeterSpecEgressPolicyEgressTo].
  /// [externalResources] A list of external resources that are allowed to be accessed. A request
  /// [operations] A list of `ApiOperations` that this egress rule applies to. A request matches
  /// [resources] A list of resources, currently only projects in the form
  /// [roles] A list of IAM roles that represent the set of operations that the sources
  ServicePerimetersServicePerimeterSpecEgressPolicyEgressTo({
    this.externalResources,
    this.operations,
    this.resources,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalResources': ?externalResources,
      'operations': ?operations == null ? null : pulumi.Input.encodeList<ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperation, Map<String, dynamic>>(operations!, (value) => value.toMap()),
      'resources': ?resources,
      'roles': ?roles,
    };
  }

  factory ServicePerimetersServicePerimeterSpecEgressPolicyEgressTo.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterSpecEgressPolicyEgressTo(
      externalResources: map['externalResources'] == null ? null : (map['externalResources'] as List).cast<String>(),
      operations: map['operations'] == null ? null : pulumi.Input.decodeList<ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperation>(map['operations'], (value) => ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperation.fromMap((value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null ? null : (map['resources'] as List).cast<String>(),
      roles: map['roles'] == null ? null : (map['roles'] as List).cast<String>(),
    );
  }
}

