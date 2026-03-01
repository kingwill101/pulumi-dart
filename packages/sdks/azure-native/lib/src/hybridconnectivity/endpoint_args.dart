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
    pulumi.Output<String>? endpointName,
    pulumi.Output<String>? resourceId,
    required pulumi.Output<String> resourceUri,
    required pulumi.Output<String> type,
  }) :
      endpointName = pulumi.Input.asOptionalInput<String>(endpointName),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      resourceUri = pulumi.Input.asInput<String>(resourceUri),
      type = pulumi.Input.asInput<String>(type);

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
      endpointName: map['endpointName'] == null ? null : pulumi.Output.create<String>(map['endpointName'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

