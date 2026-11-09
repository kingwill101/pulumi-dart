// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambdaweb_get_function_endpoint_get_function_endpoint_args_doc}
/// Arguments for getFunctionEndpoint.
/// {@endtemplate}
/// {@macro pulumi_lambdaweb_get_function_endpoint_get_function_endpoint_args_doc}
class GetFunctionEndpointArgs {
  /// Name of the endpoint.
  final pulumi.Input<String> endpointName;
  /// Name of the function the endpoint belongs to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> functionName;
  /// Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetFunctionEndpointArgs].
  /// [endpointName] Name of the endpoint.
  /// [functionName] Name of the function the endpoint belongs to.
  /// [region] Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  const GetFunctionEndpointArgs({
    required this.endpointName,
    required this.functionName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'functionName': functionName,
      'region': ?region,
    };
  }

  factory GetFunctionEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionEndpointArgs(
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
