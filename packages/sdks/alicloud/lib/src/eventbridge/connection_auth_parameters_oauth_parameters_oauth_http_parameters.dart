// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_parameters_oauth_parameters_oauth_http_parameters_body_parameter.dart';
import 'connection_auth_parameters_oauth_parameters_oauth_http_parameters_header_parameter.dart';
import 'connection_auth_parameters_oauth_parameters_oauth_http_parameters_query_string_parameter.dart';

class ConnectionAuthParametersOauthParametersOauthHttpParameters {
  /// The parameters that are configured for the request body. See `body_parameters` below.
  final List<ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameter>? bodyParameters;
  /// The parameters that are configured for the request header. See `header_parameters` below.
  final List<ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameter>? headerParameters;
  /// The parameters that are configured for the request path. See `query_string_parameters` below.
  final List<ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameter>? queryStringParameters;

  /// Creates a new [ConnectionAuthParametersOauthParametersOauthHttpParameters].
  /// [bodyParameters] The parameters that are configured for the request body. See `body_parameters` below.
  /// [headerParameters] The parameters that are configured for the request header. See `header_parameters` below.
  /// [queryStringParameters] The parameters that are configured for the request path. See `query_string_parameters` below.
  ConnectionAuthParametersOauthParametersOauthHttpParameters({
    this.bodyParameters,
    this.headerParameters,
    this.queryStringParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodyParameters': ?bodyParameters == null ? null : pulumi.Input.encodeList<ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameter, Map<String, dynamic>>(bodyParameters!, (value) => value.toMap()),
      'headerParameters': ?headerParameters == null ? null : pulumi.Input.encodeList<ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameter, Map<String, dynamic>>(headerParameters!, (value) => value.toMap()),
      'queryStringParameters': ?queryStringParameters == null ? null : pulumi.Input.encodeList<ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameter, Map<String, dynamic>>(queryStringParameters!, (value) => value.toMap()),
    };
  }

  factory ConnectionAuthParametersOauthParametersOauthHttpParameters.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthParametersOauthParametersOauthHttpParameters(
      bodyParameters: map['bodyParameters'] == null ? null : pulumi.Input.decodeList<ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameter>(map['bodyParameters'], (value) => ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameter.fromMap((value as Map).cast<String, dynamic>())),
      headerParameters: map['headerParameters'] == null ? null : pulumi.Input.decodeList<ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameter>(map['headerParameters'], (value) => ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameter.fromMap((value as Map).cast<String, dynamic>())),
      queryStringParameters: map['queryStringParameters'] == null ? null : pulumi.Input.decodeList<ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameter>(map['queryStringParameters'], (value) => ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

