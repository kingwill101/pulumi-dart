// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_message_service_endpoint_service_endpoint_args_doc}
/// The set of arguments for ServiceEndpoint.
/// {@endtemplate}
/// {@macro pulumi_message_service_endpoint_service_endpoint_args_doc}
class ServiceEndpointArgs {
  /// Specifies whether the endpoint is enabled. Valid values:
  final pulumi.Input<bool> endpointEnabled;
  /// Access point type. Value:
  /// - public: indicates a public access point. (Currently only public is supported)
  final pulumi.Input<String> endpointType;

  /// Creates a new [ServiceEndpointArgs].
  /// [endpointEnabled] Specifies whether the endpoint is enabled. Valid values:
  /// [endpointType] Access point type. Value:
  ServiceEndpointArgs({
    required bool endpointEnabled,
    required String endpointType,
  }) :
      endpointEnabled = pulumi.Input.asInput<bool>(endpointEnabled),
      endpointType = pulumi.Input.asInput<String>(endpointType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointEnabled': endpointEnabled,
      'endpointType': endpointType,
    };
  }

  factory ServiceEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointArgs(
      endpointEnabled: map['endpointEnabled'] as bool,
      endpointType: map['endpointType'] as String,
    );
  }
}

