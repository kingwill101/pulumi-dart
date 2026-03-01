// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridconnectivity_get_endpoint_args_doc}
/// Arguments for getEndpoint.
/// {@endtemplate}
/// {@macro pulumi_hybridconnectivity_get_endpoint_args_doc}
class GetEndpointArgs {
  /// The endpoint name.
  final pulumi.Input<String> endpointName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetEndpointArgs].
  /// [endpointName] The endpoint name.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GetEndpointArgs({
    required pulumi.Output<String> endpointName,
    required pulumi.Output<String> resourceUri,
  }) :
      endpointName = pulumi.Input.asInput<String>(endpointName),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'resourceUri': resourceUri,
    };
  }

  factory GetEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointArgs(
      endpointName: pulumi.Output.create<String>(map['endpointName'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}

