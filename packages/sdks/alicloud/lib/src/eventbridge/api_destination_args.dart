// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_destination_http_api_parameters.dart';

/// {@template pulumi_eventbridge_api_destination_api_destination_args_doc}
/// The set of arguments for ApiDestination.
/// {@endtemplate}
/// {@macro pulumi_eventbridge_api_destination_api_destination_args_doc}
class ApiDestinationArgs {
  /// The name of the API destination.
  final pulumi.Input<String> apiDestinationName;
  /// The name of the connection.
  final pulumi.Input<String> connectionName;
  /// The description of the API destination.
  final pulumi.Input<String>? description;
  /// The parameters that are configured for the API destination. See `http_api_parameters` below.
  final pulumi.Input<ApiDestinationHttpApiParameters> httpApiParameters;

  /// Creates a new [ApiDestinationArgs].
  /// [apiDestinationName] The name of the API destination.
  /// [connectionName] The name of the connection.
  /// [description] The description of the API destination.
  /// [httpApiParameters] The parameters that are configured for the API destination. See `http_api_parameters` below.
  ApiDestinationArgs({
    required pulumi.Output<String> apiDestinationName,
    required pulumi.Output<String> connectionName,
    pulumi.Output<String>? description,
    required pulumi.Output<ApiDestinationHttpApiParameters> httpApiParameters,
  }) :
      apiDestinationName = pulumi.Input.asInput<String>(apiDestinationName),
      connectionName = pulumi.Input.asInput<String>(connectionName),
      description = pulumi.Input.asOptionalInput<String>(description),
      httpApiParameters = pulumi.Input.asInput<ApiDestinationHttpApiParameters>(httpApiParameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiDestinationName': apiDestinationName,
      'connectionName': connectionName,
      'description': ?description,
      'httpApiParameters': pulumi.Input.mapInputValue<ApiDestinationHttpApiParameters, Map<String, dynamic>>(httpApiParameters, (value) => value.toMap()),
    };
  }

  factory ApiDestinationArgs.fromMap(Map<String, dynamic> map) {
    return ApiDestinationArgs(
      apiDestinationName: pulumi.Output.create<String>(map['apiDestinationName'] as String),
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      httpApiParameters: pulumi.Output.create<ApiDestinationHttpApiParameters>(ApiDestinationHttpApiParameters.fromMap((map['httpApiParameters'] as Map).cast<String, dynamic>())),
    );
  }
}

