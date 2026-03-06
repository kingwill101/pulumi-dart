// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_url_cors.dart';

/// Input properties used for looking up and filtering FunctionUrl resources.
class FunctionUrlState {
  /// Type of authentication that the function URL uses. Valid values are `AWS_IAM` and `NONE`.
  final pulumi.Input<String>? authorizationType;
  /// Cross-origin resource sharing (CORS) settings for the function URL. See below.
  final pulumi.Input<FunctionUrlCors>? cors;
  /// ARN of the Lambda function.
  final pulumi.Input<String>? functionArn;
  /// Name or ARN of the Lambda function.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? functionName;
  /// HTTP URL endpoint for the function in the format `https://&lt;url_id&gt;.lambda-url.&lt;region&gt;.on.aws/`.
  final pulumi.Input<String>? functionUrl;
  /// How the Lambda function responds to an invocation. Valid values are `BUFFERED` (default) and `RESPONSE_STREAM`.
  final pulumi.Input<String>? invokeMode;
  /// Alias name or `$LATEST`.
  final pulumi.Input<String>? qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Generated ID for the endpoint.
  final pulumi.Input<String>? urlId;

  /// Creates a new [FunctionUrlState].
  /// [authorizationType] Type of authentication that the function URL uses. Valid values are `AWS_IAM` and `NONE`.
  /// [cors] Cross-origin resource sharing (CORS) settings for the function URL. See below.
  /// [functionArn] ARN of the Lambda function.
  /// [functionName] Name or ARN of the Lambda function.
  /// [functionUrl] HTTP URL endpoint for the function in the format `https://&lt;url_id&gt;.lambda-url.&lt;region&gt;.on.aws/`.
  /// [invokeMode] How the Lambda function responds to an invocation. Valid values are `BUFFERED` (default) and `RESPONSE_STREAM`.
  /// [qualifier] Alias name or `$LATEST`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [urlId] Generated ID for the endpoint.
  const FunctionUrlState({
    this.authorizationType,
    this.cors,
    this.functionArn,
    this.functionName,
    this.functionUrl,
    this.invokeMode,
    this.qualifier,
    this.region,
    this.urlId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationType': ?authorizationType,
      'cors': ?pulumi.Input.mapOptionalInputValue<FunctionUrlCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'functionArn': ?functionArn,
      'functionName': ?functionName,
      'functionUrl': ?functionUrl,
      'invokeMode': ?invokeMode,
      'qualifier': ?qualifier,
      'region': ?region,
      'urlId': ?urlId,
    };
  }

  factory FunctionUrlState.fromMap(Map<String, dynamic> map) {
    return FunctionUrlState(
      authorizationType: (() { final guardedValue = map['authorizationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionUrlCors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      functionArn: (() { final guardedValue = map['functionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionUrl: (() { final guardedValue = map['functionUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invokeMode: (() { final guardedValue = map['invokeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urlId: (() { final guardedValue = map['urlId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

