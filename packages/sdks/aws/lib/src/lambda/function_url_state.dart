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
    pulumi.Output<String>? authorizationType,
    pulumi.Output<FunctionUrlCors>? cors,
    pulumi.Output<String>? functionArn,
    pulumi.Output<String>? functionName,
    pulumi.Output<String>? functionUrl,
    pulumi.Output<String>? invokeMode,
    pulumi.Output<String>? qualifier,
    pulumi.Output<String>? region,
    pulumi.Output<String>? urlId,
  }) :
      authorizationType = pulumi.Input.asOptionalInput<String>(authorizationType),
      cors = pulumi.Input.asOptionalInput<FunctionUrlCors>(cors),
      functionArn = pulumi.Input.asOptionalInput<String>(functionArn),
      functionName = pulumi.Input.asOptionalInput<String>(functionName),
      functionUrl = pulumi.Input.asOptionalInput<String>(functionUrl),
      invokeMode = pulumi.Input.asOptionalInput<String>(invokeMode),
      qualifier = pulumi.Input.asOptionalInput<String>(qualifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      urlId = pulumi.Input.asOptionalInput<String>(urlId);

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
      authorizationType: map['authorizationType'] == null ? null : pulumi.Output.create<String>(map['authorizationType'] as String),
      cors: map['cors'] == null ? null : pulumi.Output.create<FunctionUrlCors>(FunctionUrlCors.fromMap((map['cors'] as Map).cast<String, dynamic>())),
      functionArn: map['functionArn'] == null ? null : pulumi.Output.create<String>(map['functionArn'] as String),
      functionName: map['functionName'] == null ? null : pulumi.Output.create<String>(map['functionName'] as String),
      functionUrl: map['functionUrl'] == null ? null : pulumi.Output.create<String>(map['functionUrl'] as String),
      invokeMode: map['invokeMode'] == null ? null : pulumi.Output.create<String>(map['invokeMode'] as String),
      qualifier: map['qualifier'] == null ? null : pulumi.Output.create<String>(map['qualifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      urlId: map['urlId'] == null ? null : pulumi.Output.create<String>(map['urlId'] as String),
    );
  }
}

