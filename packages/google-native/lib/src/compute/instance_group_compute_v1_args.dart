// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_port_compute_v1.dart';

/// {@template pulumi_compute_v1_instance_group_compute_v1_args_doc}
/// The set of arguments for InstanceGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_instance_group_compute_v1_args_doc}
class InstanceGroupComputeV1Args {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// The name of the instance group. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;
  /// Assigns a name to a port number. For example: {name: "http", port: 80} This allows the system to reference ports by the assigned name instead of a port number. Named ports can also contain multiple ports. For example: [{name: "app1", port: 8080}, {name: "app1", port: 8081}, {name: "app2", port: 8082}] Named ports apply to all instances in this instance group.
  final pulumi.Input<List<NamedPortComputeV1>>? namedPorts;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceGroupComputeV1Args].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] The name of the instance group. The name must be 1-63 characters long, and comply with RFC1035.
  /// [namedPorts] Assigns a name to a port number. For example: {name: "http", port: 80} This allows the system to reference ports by the assigned name instead of a port number. Named ports can also contain multiple ports. For example: [{name: "app1", port: 8080}, {name: "app1", port: 8081}, {name: "app2", port: 8082}] Named ports apply to all instances in this instance group.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [zone] Optional.
  InstanceGroupComputeV1Args({
    String? description,
    String? name,
    List<NamedPortComputeV1>? namedPorts,
    String? project,
    String? requestId,
    String? zone,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      namedPorts = pulumi.Input.asOptionalInput<List<NamedPortComputeV1>>(namedPorts),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'namedPorts': ?pulumi.Input.mapOptionalInputValue<List<NamedPortComputeV1>, List<Map<String, dynamic>>>(namedPorts, (value) => pulumi.Input.encodeList<NamedPortComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'requestId': ?requestId,
      'zone': ?zone,
    };
  }

  factory InstanceGroupComputeV1Args.fromMap(Map<String, dynamic> map) {
    return InstanceGroupComputeV1Args(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namedPorts: map['namedPorts'] == null ? null : pulumi.Input.decodeList<NamedPortComputeV1>(map['namedPorts'], (value) => NamedPortComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

