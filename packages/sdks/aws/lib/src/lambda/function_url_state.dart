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
  /// HTTP URL endpoint for the function in the format `https://<url_id>.lambda-url.<region>.on.aws/`.
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
  /// [functionUrl] HTTP URL endpoint for the function in the format `https://<url_id>.lambda-url.<region>.on.aws/`.
  /// [invokeMode] How the Lambda function responds to an invocation. Valid values are `BUFFERED` (default) and `RESPONSE_STREAM`.
  /// [qualifier] Alias name or `$LATEST`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [urlId] Generated ID for the endpoint.
  FunctionUrlState({
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
      authorizationType: map['authorizationType'] == null ? null : ((map['authorizationType'] as String).input()).input(),
      cors: map['cors'] == null ? null : ((FunctionUrlCors.fromMap((map['cors']! as Map).cast<String, dynamic>())).input()).input(),
      functionArn: map['functionArn'] == null ? null : ((map['functionArn'] as String).input()).input(),
      functionName: map['functionName'] == null ? null : ((map['functionName'] as String).input()).input(),
      functionUrl: map['functionUrl'] == null ? null : ((map['functionUrl'] as String).input()).input(),
      invokeMode: map['invokeMode'] == null ? null : ((map['invokeMode'] as String).input()).input(),
      qualifier: map['qualifier'] == null ? null : ((map['qualifier'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      urlId: map['urlId'] == null ? null : ((map['urlId'] as String).input()).input(),
    );
  }
}

