// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_url_cor.dart';

/// Result data returned by getFunctionUrl.
class GetFunctionUrlResult {
  /// Type of authentication that the function URL uses.
  final String authorizationType;

  /// Cross-origin resource sharing (CORS) settings for the function URL. See below.
  final List<GetFunctionUrlCor> cors;

  /// When the function URL was created, in [ISO-8601 format](https://www.w3.org/TR/NOTE-datetime).
  final String creationTime;

  /// ARN of the function.
  final String functionArn;
  final String functionName;

  /// HTTP URL endpoint for the function in the format `https://&lt;url_id&gt;.lambda-url.&lt;region&gt;.on.aws/`.
  final String functionUrl;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Whether the Lambda function responds in `BUFFERED` or `RESPONSE_STREAM` mode.
  final String invokeMode;

  /// When the function URL configuration was last updated, in [ISO-8601 format](https://www.w3.org/TR/NOTE-datetime).
  final String lastModifiedTime;
  final String? qualifier;
  final String region;

  /// Generated ID for the endpoint.
  final String urlId;

  /// Creates a new [GetFunctionUrlResult].
  /// [authorizationType] Type of authentication that the function URL uses.
  /// [cors] Cross-origin resource sharing (CORS) settings for the function URL. See below.
  /// [creationTime] When the function URL was created, in [ISO-8601 format](https://www.w3.org/TR/NOTE-datetime).
  /// [functionArn] ARN of the function.
  /// [functionName] Required.
  /// [functionUrl] HTTP URL endpoint for the function in the format `https://&lt;url_id&gt;.lambda-url.&lt;region&gt;.on.aws/`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [invokeMode] Whether the Lambda function responds in `BUFFERED` or `RESPONSE_STREAM` mode.
  /// [lastModifiedTime] When the function URL configuration was last updated, in [ISO-8601 format](https://www.w3.org/TR/NOTE-datetime).
  /// [qualifier] Optional.
  /// [region] Required.
  /// [urlId] Generated ID for the endpoint.
  GetFunctionUrlResult({
    required this.authorizationType,
    required this.cors,
    required this.creationTime,
    required this.functionArn,
    required this.functionName,
    required this.functionUrl,
    required this.id,
    required this.invokeMode,
    required this.lastModifiedTime,
    this.qualifier,
    required this.region,
    required this.urlId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationType': authorizationType,
      'cors': pulumi.Input.encodeList<GetFunctionUrlCor, Map<String, dynamic>>(
        cors,
        (value) => value.toMap(),
      ),
      'creationTime': creationTime,
      'functionArn': functionArn,
      'functionName': functionName,
      'functionUrl': functionUrl,
      'id': id,
      'invokeMode': invokeMode,
      'lastModifiedTime': lastModifiedTime,
      'qualifier': ?qualifier,
      'region': region,
      'urlId': urlId,
    };
  }

  factory GetFunctionUrlResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionUrlResult(
      authorizationType: map['authorizationType'] as String,
      cors: pulumi.Input.decodeList<GetFunctionUrlCor>(
        map['cors']!,
        (value) =>
            GetFunctionUrlCor.fromMap((value as Map).cast<String, dynamic>()),
      ),
      creationTime: map['creationTime'] as String,
      functionArn: map['functionArn'] as String,
      functionName: map['functionName'] as String,
      functionUrl: map['functionUrl'] as String,
      id: map['id'] as String,
      invokeMode: map['invokeMode'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      qualifier: (() {
        final guardedValue = map['qualifier'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      region: map['region'] as String,
      urlId: map['urlId'] as String,
    );
  }
}
