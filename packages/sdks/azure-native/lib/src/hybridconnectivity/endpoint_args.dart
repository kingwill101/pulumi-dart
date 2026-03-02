// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridconnectivity_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_hybridconnectivity_endpoint_args_doc}
class EndpointArgs {
  /// The endpoint name.
  final pulumi.Input<String>? endpointName;
  /// The resource Id of the connectivity endpoint (optional).
  final pulumi.Input<String>? resourceId;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// The type of endpoint.
  final pulumi.Input<String> type;

  /// Creates a new [EndpointArgs].
  /// [endpointName] The endpoint name.
  /// [resourceId] The resource Id of the connectivity endpoint (optional).
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [type] The type of endpoint.
  EndpointArgs({
    this.endpointName,
    this.resourceId,
    required this.resourceUri,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': ?endpointName,
      'resourceId': ?resourceId,
      'resourceUri': resourceUri,
      'type': type,
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      endpointName: map['endpointName'] == null ? null : (map['endpointName'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      resourceUri: (map['resourceUri'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

