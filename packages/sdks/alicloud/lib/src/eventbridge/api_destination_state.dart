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
      apiDestinationName: (() { final guardedValue = map['apiDestinationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionName: (() { final guardedValue = map['connectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpApiParameters: (() { final guardedValue = map['httpApiParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiDestinationHttpApiParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

