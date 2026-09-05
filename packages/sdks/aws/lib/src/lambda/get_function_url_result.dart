// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_url_cor.dart';

/// Result data returned by getFunctionUrl.
class GetFunctionUrlResult {
  /// Type of authentication that the function URL uses.
  final String? authorizationType;
  /// Cross-origin resource sharing (CORS) settings for the function URL. See below.
  final List<GetFunctionUrlCor>? cors;
  /// When the function URL was created, in [ISO-8601 format](https://www.w3.org/TR/NOTE-datetime).
  final String? creationTime;
  /// ARN of the function.
  final String? functionArn;
  final String? functionName;
  /// HTTP URL endpoint for the function in the format `https://&lt;url_id&gt;.lambda-url.&lt;region&gt;.on.aws/`.
  final String? functionUrl;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Whether the Lambda function responds in `BUFFERED` or `RESPONSE_STREAM` mode.
  final String? invokeMode;
  /// When the function URL configuration was last updated, in [ISO-8601 format](https://www.w3.org/TR/NOTE-datetime).
  final String? lastModifiedTime;
  final String? qualifier;
  final String? region;
  /// Generated ID for the endpoint.
  final String? urlId;

  /// Creates a new [GetFunctionUrlResult].
  /// [authorizationType] Type of authentication that the function URL uses.
  /// [cors] Cross-origin resource sharing (CORS) settings for the function URL. See below.
  /// [creationTime] When the function URL was created, in [ISO-8601 format](https://www.w3.org/TR/NOTE-datetime).
  /// [functionArn] ARN of the function.
  /// [functionName] Optional.
  /// [functionUrl] HTTP URL endpoint for the function in the format `https://&lt;url_id&gt;.lambda-url.&lt;region&gt;.on.aws/`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [invokeMode] Whether the Lambda function responds in `BUFFERED` or `RESPONSE_STREAM` mode.
  /// [lastModifiedTime] When the function URL configuration was last updated, in [ISO-8601 format](https://www.w3.org/TR/NOTE-datetime).
  /// [qualifier] Optional.
  /// [region] Optional.
  /// [urlId] Generated ID for the endpoint.
  const GetFunctionUrlResult({
    this.authorizationType,
    this.cors,
    this.creationTime,
    this.functionArn,
    this.functionName,
    this.functionUrl,
    this.id,
    this.invokeMode,
    this.lastModifiedTime,
    this.qualifier,
    this.region,
    this.urlId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationType': ?authorizationType,
      'cors': ?(() { final guardedValue = cors; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionUrlCor, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'creationTime': ?creationTime,
      'functionArn': ?functionArn,
      'functionName': ?functionName,
      'functionUrl': ?functionUrl,
      'id': ?id,
      'invokeMode': ?invokeMode,
      'lastModifiedTime': ?lastModifiedTime,
      'qualifier': ?qualifier,
      'region': ?region,
      'urlId': ?urlId,
    };
  }

  factory GetFunctionUrlResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionUrlResult(
      authorizationType: (() { final guardedValue = map['authorizationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionUrlCor>(guardedValue, (value) => GetFunctionUrlCor.fromMap((value as Map).cast<String, dynamic>())); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      functionArn: (() { final guardedValue = map['functionArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      functionUrl: (() { final guardedValue = map['functionUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      invokeMode: (() { final guardedValue = map['invokeMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urlId: (() { final guardedValue = map['urlId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
