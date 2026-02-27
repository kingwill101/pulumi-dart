// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ExternalAddress.
class ExternalAddressArgs {
  /// User-provided description for this resource.
  final pulumi.Input<String>? description;

  /// The internal IP address of a workload VM.
  final pulumi.Input<String> internalIp;

  /// The ID of the external IP Address.
  final pulumi.Input<String>? name;

  /// The resource name of the private cloud to create a new external address in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  final pulumi.Input<String> parent;

  ExternalAddressArgs({
    this.description,
    required this.internalIp,
    this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['internalIp'] = internalIp;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parent'] = parent;
    return map;
  }

  factory ExternalAddressArgs.fromMap(Map<String, dynamic> map) {
    return ExternalAddressArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      internalIp: pulumi.Input.asInput<String>(map['internalIp']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parent: pulumi.Input.asInput<String>(map['parent']),
    );
  }
}
