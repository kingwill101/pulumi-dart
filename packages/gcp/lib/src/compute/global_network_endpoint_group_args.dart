// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_global_network_endpoint_group_global_network_endpoint_group_args_doc}
/// The set of arguments for GlobalNetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_global_network_endpoint_group_global_network_endpoint_group_args_doc}
class GlobalNetworkEndpointGroupArgs {
  /// The default port used if the port number is not specified in the
  /// network endpoint.
  final pulumi.Input<int>? defaultPort;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;
  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Type of network endpoints in this network endpoint group.
  /// Possible values are: `INTERNET_IP_PORT`, `INTERNET_FQDN_PORT`.
  final pulumi.Input<String> networkEndpointType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GlobalNetworkEndpointGroupArgs].
  /// [defaultPort] The default port used if the port number is not specified in the
  /// [description] An optional description of this resource. Provide this property when
  /// [name] Name of the resource; provided by the client when the resource is
  /// [networkEndpointType] Type of network endpoints in this network endpoint group.
  /// [project] The ID of the project in which the resource belongs.
  GlobalNetworkEndpointGroupArgs({
    int? defaultPort,
    String? description,
    String? name,
    required String networkEndpointType,
    String? project,
  }) :
      defaultPort = pulumi.Input.asOptionalInput<int>(defaultPort),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkEndpointType = pulumi.Input.asInput<String>(networkEndpointType),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPort': ?defaultPort,
      'description': ?description,
      'name': ?name,
      'networkEndpointType': networkEndpointType,
      'project': ?project,
    };
  }

  factory GlobalNetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return GlobalNetworkEndpointGroupArgs(
      defaultPort: map['defaultPort'] == null ? null : map['defaultPort'] as int,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkEndpointType: map['networkEndpointType'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

