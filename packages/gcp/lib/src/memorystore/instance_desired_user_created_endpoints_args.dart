// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_desired_user_created_endpoints_desired_user_created_endpoint.dart';

/// {@template pulumi_memorystore_instance_desired_user_created_endpoints_instance_desired_user_created_endpoints_args_doc}
/// The set of arguments for InstanceDesiredUserCreatedEndpoints.
/// {@endtemplate}
/// {@macro pulumi_memorystore_instance_desired_user_created_endpoints_instance_desired_user_created_endpoints_args_doc}
class InstanceDesiredUserCreatedEndpointsArgs {
  /// A list of desired user endpoints
  /// Structure is documented below.
  final pulumi.Input<
    List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>
  >?
  desiredUserCreatedEndpoints;

  /// The name of the Memorystore instance these endpoints should be added to.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the region of the Memorystore instance these endpoints should be added to.
  final pulumi.Input<String> region;

  /// Creates a new [InstanceDesiredUserCreatedEndpointsArgs].
  /// [desiredUserCreatedEndpoints] A list of desired user endpoints
  /// [name] The name of the Memorystore instance these endpoints should be added to.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The name of the region of the Memorystore instance these endpoints should be added to.
  InstanceDesiredUserCreatedEndpointsArgs({
    List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>?
    desiredUserCreatedEndpoints,
    String? name,
    String? project,
    required String region,
  }) : desiredUserCreatedEndpoints =
           pulumi.Input.asOptionalInput<
             List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>
           >(desiredUserCreatedEndpoints),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredUserCreatedEndpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>,
            List<Map<String, dynamic>>
          >(
            desiredUserCreatedEndpoints,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'project': ?project,
      'region': region,
    };
  }

  factory InstanceDesiredUserCreatedEndpointsArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceDesiredUserCreatedEndpointsArgs(
      desiredUserCreatedEndpoints: map['desiredUserCreatedEndpoints'] == null
          ? null
          : pulumi.Input.decodeList<
              InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint
            >(
              map['desiredUserCreatedEndpoints'],
              (value) =>
                  InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
