// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_destination_http_api_parameters.dart';

/// Input properties used for looking up and filtering ApiDestination resources.
class ApiDestinationState {
  /// The name of the API destination.
  final pulumi.Input<String>? apiDestinationName;
  /// The name of the connection.
  final pulumi.Input<String>? connectionName;
  /// The creation time of the Api Destination.
  final pulumi.Input<int>? createTime;
  /// The description of the API destination.
  final pulumi.Input<String>? description;
  /// The parameters that are configured for the API destination. See `http_api_parameters` below.
  final pulumi.Input<ApiDestinationHttpApiParameters>? httpApiParameters;

  /// Creates a new [ApiDestinationState].
  /// [apiDestinationName] The name of the API destination.
  /// [connectionName] The name of the connection.
  /// [createTime] The creation time of the Api Destination.
  /// [description] The description of the API destination.
  /// [httpApiParameters] The parameters that are configured for the API destination. See `http_api_parameters` below.
  ApiDestinationState({
    this.apiDestinationName,
    this.connectionName,
    this.createTime,
    this.description,
    this.httpApiParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiDestinationName': ?apiDestinationName,
      'connectionName': ?connectionName,
      'createTime': ?createTime,
      'description': ?description,
      'httpApiParameters': ?pulumi.Input.mapOptionalInputValue<ApiDestinationHttpApiParameters, Map<String, dynamic>>(httpApiParameters, (value) => value.toMap()),
    };
  }

  factory ApiDestinationState.fromMap(Map<String, dynamic> map) {
    return ApiDestinationState(
      apiDestinationName: map['apiDestinationName'] == null ? null : (map['apiDestinationName'] as String).input(),
      connectionName: map['connectionName'] == null ? null : (map['connectionName'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as int).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      httpApiParameters: map['httpApiParameters'] == null ? null : (ApiDestinationHttpApiParameters.fromMap((map['httpApiParameters'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

