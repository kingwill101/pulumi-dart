// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_desired_user_created_endpoints_desired_user_created_endpoint/instance_desired_user_created_endpoints_desired_user_created_endpoint.dart';

/// The set of arguments for InstanceDesiredUserCreatedEndpoints.
class InstanceDesiredUserCreatedEndpointsArgs {
  /// A list of desired user endpoints
  /// Structure is documented below.
  final Input<
          List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>>?
      desiredUserCreatedEndpoints;

  /// The name of the Memorystore instance these endpoints should be added to.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The name of the region of the Memorystore instance these endpoints should be added to.
  final Input<String> region;

  InstanceDesiredUserCreatedEndpointsArgs({
    this.desiredUserCreatedEndpoints,
    this.name,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final desiredUserCreatedEndpointsValue = desiredUserCreatedEndpoints;
    if (desiredUserCreatedEndpointsValue != null) {
      map['desiredUserCreatedEndpoints'] = Input.mapOptionalInputValue<
              List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>,
              List<Map<String, dynamic>>>(
          desiredUserCreatedEndpointsValue,
          (value) => Input.encodeList<
              InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory InstanceDesiredUserCreatedEndpointsArgs.fromMap(
      Map<String, dynamic> map) {
    return InstanceDesiredUserCreatedEndpointsArgs(
      desiredUserCreatedEndpoints: Input.asOptionalInput<
              List<
                  InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>>(
          map['desiredUserCreatedEndpoints']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
