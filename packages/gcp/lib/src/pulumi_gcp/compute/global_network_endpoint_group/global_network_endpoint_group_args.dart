// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GlobalNetworkEndpointGroup.
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

  GlobalNetworkEndpointGroupArgs({
    this.defaultPort,
    this.description,
    this.name,
    required this.networkEndpointType,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultPortValue = defaultPort;
    if (defaultPortValue != null) {
      map['defaultPort'] = defaultPortValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networkEndpointType'] = networkEndpointType;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GlobalNetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return GlobalNetworkEndpointGroupArgs(
      defaultPort: pulumi.Input.asOptionalInput<int>(map['defaultPort']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkEndpointType:
          pulumi.Input.asInput<String>(map['networkEndpointType']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
