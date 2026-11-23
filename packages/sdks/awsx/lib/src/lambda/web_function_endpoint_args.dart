// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_function_auth_type.dart';
import 'web_function_endpoint_type.dart';
import 'web_function_revision_weight.dart';

/// {@template pulumi_lambda_web_function_endpoint_args_doc}
/// The set of arguments for WebFunctionEndpoint.
/// {@endtemplate}
/// {@macro pulumi_lambda_web_function_endpoint_args_doc}
class WebFunctionEndpointArgs {
  /// Choose `IamAuth` to let Lambda check whether the caller has permission. Choose
  /// `ApplicationManaged` to let anyone reach your app and handle access in your own code.
  final pulumi.Input<WebFunctionAuthType> authType;
  /// Physical endpoint name.
  ///
  /// Default - Automatically named by the AWS Native provider.
  final pulumi.Input<String?>? endpointName;
  /// HomeRegion serves only the function's home Region. MultiRegion uses a single global URL with
  /// latency-based routing. PerRegion exposes a separate URL for each serving Region. Changing the
  /// endpoint type replaces the endpoint and can change its URLs.
  ///
  /// Default - HomeRegion.
  final pulumi.Input<WebFunctionEndpointType?>? endpointType;
  /// Name of the Web Function to serve.
  final pulumi.Input<String> functionName;
  /// Maximum concurrent execution environments for the endpoint, from 2 through 10,000.
  ///
  /// Default - No endpoint-specific cap; your account's vCPU quota applies.
  final pulumi.Input<double?>? maxEnvironments;
  /// For `MultiRegion` or `PerRegion`, list at least one AWS Region besides the function's home
  /// Region. Lambda includes the home Region automatically.
  ///
  /// Adding or removing a serving Region requires a new endpoint with new URLs. The Web Function and
  /// its revisions stay in place. To keep serving traffic during the move, create a second endpoint
  /// and switch clients to it before removing the first one.
  ///
  /// Default - No additional Regions.
  final pulumi.Input<List<String>?>? regions;
  /// Maximum requests per second for the endpoint. Use zero to reject all new requests. Otherwise
  /// use 100 through 1,000 in steps of 100 or 2,000 through 10,000 in steps of 1,000, subject to
  /// availability in your serving Regions.
  ///
  /// Default - No endpoint-specific cap; your account's rate limit quota applies.
  final pulumi.Input<double?>? requestsPerSecond;
  /// Choose which revisions receive traffic.
  ///
  /// To send all traffic to the app's current revision:
  ///
  /// ```ts
  /// [{ revisionId: app.revisionId }];
  /// ```
  ///
  /// To send 10% of traffic to a candidate revision:
  ///
  /// ```ts
  /// [
  ///   { revisionId: stableId, weight: 90 },
  ///   { revisionId: candidateId, weight: 10 },
  /// ];
  /// ```
  ///
  /// When splitting traffic, use positive whole-number percentages that add up to 100.
  final pulumi.Input<List<WebFunctionRevisionWeight>> revisions;

  /// Creates a new [WebFunctionEndpointArgs].
  /// [authType] Choose `IamAuth` to let Lambda check whether the caller has permission. Choose
  /// [endpointName] Physical endpoint name.
  /// [endpointType] HomeRegion serves only the function's home Region. MultiRegion uses a single global URL with
  /// [functionName] Name of the Web Function to serve.
  /// [maxEnvironments] Maximum concurrent execution environments for the endpoint, from 2 through 10,000.
  /// [regions] For `MultiRegion` or `PerRegion`, list at least one AWS Region besides the function's home
  /// [requestsPerSecond] Maximum requests per second for the endpoint. Use zero to reject all new requests. Otherwise
  /// [revisions] Choose which revisions receive traffic.
  const WebFunctionEndpointArgs({
    required this.authType,
    this.endpointName,
    this.endpointType,
    required this.functionName,
    this.maxEnvironments,
    this.regions,
    this.requestsPerSecond,
    required this.revisions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': pulumi.Input.mapInputValue<WebFunctionAuthType, String>(authType, (value) => value.wireValue),
      'endpointName': ?endpointName,
      'endpointType': ?pulumi.Input.mapOptionalInputValue<WebFunctionEndpointType, String>(endpointType, (value) => value.wireValue),
      'functionName': functionName,
      'maxEnvironments': ?maxEnvironments,
      'regions': ?regions,
      'requestsPerSecond': ?requestsPerSecond,
      'revisions': pulumi.Input.mapInputValue<List<WebFunctionRevisionWeight>, List<Map<String, dynamic>>>(revisions, (value) => pulumi.Input.encodeList<WebFunctionRevisionWeight, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebFunctionEndpointArgs.fromMap(Map<String, dynamic> map) {
    return WebFunctionEndpointArgs(
      authType: pulumi.Input.fromValue(WebFunctionAuthType.fromValue(map['authType']! as String)),
      endpointName: (() { final guardedValue = map['endpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebFunctionEndpointType.fromValue(guardedValue as String)); })(),
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      maxEnvironments: (() { final guardedValue = map['maxEnvironments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requestsPerSecond: (() { final guardedValue = map['requestsPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      revisions: pulumi.Input.fromValue(pulumi.Input.decodeList<WebFunctionRevisionWeight>(map['revisions']!, (value) => WebFunctionRevisionWeight.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
