// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_instance_nat_policy_compute_v1.dart';

/// {@template pulumi_compute_v1_target_instance_compute_v1_args_doc}
/// The set of arguments for TargetInstance.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_target_instance_compute_v1_args_doc}
class TargetInstanceComputeV1Args {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// A URL to the virtual machine instance that handles traffic for this target instance. When creating a target instance, you can provide the fully-qualified URL or a valid partial URL to the desired virtual machine. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance - zones/zone/instances/instance
  final pulumi.Input<String>? instance;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Must have a value of NO_NAT. Protocol forwarding delivers packets while preserving the destination IP address of the forwarding rule referencing the target instance.
  final pulumi.Input<TargetInstanceNatPolicyComputeV1>? natPolicy;
  /// The URL of the network this target instance uses to forward traffic. If not specified, the traffic will be forwarded to the network that the default network interface belongs to.
  final pulumi.Input<String>? network;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String>? zone;

  /// Creates a new [TargetInstanceComputeV1Args].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [instance] A URL to the virtual machine instance that handles traffic for this target instance. When creating a target instance, you can provide the fully-qualified URL or a valid partial URL to the desired virtual machine. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance - zones/zone/instances/instance
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [natPolicy] Must have a value of NO_NAT. Protocol forwarding delivers packets while preserving the destination IP address of the forwarding rule referencing the target instance.
  /// [network] The URL of the network this target instance uses to forward traffic. If not specified, the traffic will be forwarded to the network that the default network interface belongs to.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [zone] Optional.
  TargetInstanceComputeV1Args({
    String? description,
    String? instance,
    String? name,
    TargetInstanceNatPolicyComputeV1? natPolicy,
    String? network,
    String? project,
    String? requestId,
    String? zone,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      name = pulumi.Input.asOptionalInput<String>(name),
      natPolicy = pulumi.Input.asOptionalInput<TargetInstanceNatPolicyComputeV1>(natPolicy),
      network = pulumi.Input.asOptionalInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'instance': ?instance,
      'name': ?name,
      'natPolicy': ?pulumi.Input.mapOptionalInputValue<TargetInstanceNatPolicyComputeV1, String>(natPolicy, (value) => value.value),
      'network': ?network,
      'project': ?project,
      'requestId': ?requestId,
      'zone': ?zone,
    };
  }

  factory TargetInstanceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return TargetInstanceComputeV1Args(
      description: map['description'] == null ? null : map['description'] as String,
      instance: map['instance'] == null ? null : map['instance'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      natPolicy: map['natPolicy'] == null ? null : TargetInstanceNatPolicyComputeV1.fromValue(map['natPolicy'] as String),
      network: map['network'] == null ? null : map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

