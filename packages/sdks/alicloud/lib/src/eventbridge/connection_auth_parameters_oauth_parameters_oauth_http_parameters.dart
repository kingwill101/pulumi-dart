// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_parameters_oauth_parameters_oauth_http_parameters_body_parameter.dart';
import 'connection_auth_parameters_oauth_parameters_oauth_http_parameters_header_parameter.dart';
import 'connection_auth_parameters_oauth_parameters_oauth_http_parameters_query_string_parameter.dart';

class ConnectionAuthParametersOauthParametersOauthHttpParameters {
  /// The parameters that are configured for the request body. See `body_parameters` below.
  final pulumi.Input<List<ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameter>>? bodyParameters;
  /// The parameters that are configured for the request header. See `header_parameters` below.
  final pulumi.Input<List<ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameter>>? headerParameters;
  /// The parameters that are configured for the request path. See `query_string_parameters` below.
  final pulumi.Input<List<ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameter>>? queryStringParameters;

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
      'bodyParameters': ?pulumi.Input.mapOptionalInputValue<List<ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameter>, List<Map<String, dynamic>>>(bodyParameters, (value) => pulumi.Input.encodeList<ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'headerParameters': ?pulumi.Input.mapOptionalInputValue<List<ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameter>, List<Map<String, dynamic>>>(headerParameters, (value) => pulumi.Input.encodeList<ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryStringParameters': ?pulumi.Input.mapOptionalInputValue<List<ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameter>, List<Map<String, dynamic>>>(queryStringParameters, (value) => pulumi.Input.encodeList<ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConnectionAuthParametersOauthParametersOauthHttpParameters.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthParametersOauthParametersOauthHttpParameters(
      bodyParameters: map['bodyParameters'] == null ? null : (pulumi.Input.decodeList<ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameter>(map['bodyParameters'], (value) => ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      headerParameters: map['headerParameters'] == null ? null : (pulumi.Input.decodeList<ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameter>(map['headerParameters'], (value) => ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      queryStringParameters: map['queryStringParameters'] == null ? null : (pulumi.Input.decodeList<ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameter>(map['queryStringParameters'], (value) => ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

