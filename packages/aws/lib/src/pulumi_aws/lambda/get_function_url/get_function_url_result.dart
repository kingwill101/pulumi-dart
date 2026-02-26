// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_function_url_cor/get_function_url_cor.dart';

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

  /// HTTP URL endpoint for the function in the format `https://<url_id>.lambda-url.<region>.on.aws/`.
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
    final map = <String, dynamic>{};
    map['authorizationType'] = authorizationType;
    map['cors'] = Input.encodeList<GetFunctionUrlCor, Map<String, dynamic>>(
        cors, (value) => value.toMap());
    map['creationTime'] = creationTime;
    map['functionArn'] = functionArn;
    map['functionName'] = functionName;
    map['functionUrl'] = functionUrl;
    map['id'] = id;
    map['invokeMode'] = invokeMode;
    map['lastModifiedTime'] = lastModifiedTime;
    final qualifierValue = qualifier;
    if (qualifierValue != null) {
      map['qualifier'] = qualifierValue;
    }
    map['region'] = region;
    map['urlId'] = urlId;
    return map;
  }

  factory GetFunctionUrlResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionUrlResult(
      authorizationType: map['authorizationType'] as String,
      cors: Input.decodeList<GetFunctionUrlCor>(
          map['cors'],
          (value) => GetFunctionUrlCor.fromMap(
              (value as Map).cast<String, dynamic>())),
      creationTime: map['creationTime'] as String,
      functionArn: map['functionArn'] as String,
      functionName: map['functionName'] as String,
      functionUrl: map['functionUrl'] as String,
      id: map['id'] as String,
      invokeMode: map['invokeMode'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      qualifier: map['qualifier'] == null ? null : map['qualifier'] as String,
      region: map['region'] as String,
      urlId: map['urlId'] as String,
    );
  }
}
