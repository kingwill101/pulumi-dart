// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details the service to which the subnet is delegated.
class DelegationInterfaceEndpointResponse {
  /// Describes the actions permitted to the service upon delegation
  final pulumi.Input<List<String>?>? actions;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String?>? etag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The name of the resource that is unique within a subnet. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// The provisioning state of the resource.
  final pulumi.Input<String> provisioningState;
  /// The name of the service to whom the subnet should be delegated (e.g. Microsoft.Sql/servers)
  final pulumi.Input<String?>? serviceName;

  /// Creates a new [DelegationInterfaceEndpointResponse].
  /// [actions] Describes the actions permitted to the service upon delegation
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a subnet. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the resource.
  /// [serviceName] The name of the service to whom the subnet should be delegated (e.g. Microsoft.Sql/servers)
  const DelegationInterfaceEndpointResponse({
    this.actions,
    this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'serviceName': ?serviceName,
    };
  }

  factory DelegationInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return DelegationInterfaceEndpointResponse(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
