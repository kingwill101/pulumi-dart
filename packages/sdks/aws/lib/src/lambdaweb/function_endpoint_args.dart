// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_endpoint_revision_weight.dart';
import 'function_endpoint_scaling_config.dart';
import 'function_endpoint_throttle_config.dart';
import 'function_endpoint_timeouts.dart';

/// {@template pulumi_lambdaweb_function_endpoint_function_endpoint_args_doc}
/// The set of arguments for FunctionEndpoint.
/// {@endtemplate}
/// {@macro pulumi_lambdaweb_function_endpoint_function_endpoint_args_doc}
class FunctionEndpointArgs {
  /// Authentication mode. Valid values are `ApplicationManaged` and `IamAuth`. Can be changed in place; the endpoint keeps its domain name.
  final pulumi.Input<String> authType;
  /// Deployment mode. `LatestRevision` makes the endpoint follow the latest revision automatically; `Disabled` requires explicit `revisionWeight`s. `MultiRegion` and `PerRegion` endpoints require `Disabled`. Defaults to `LatestRevision`.
  final pulumi.Input<String?>? autoDeploymentMode;
  /// Description of the endpoint.
  final pulumi.Input<String?>? description;
  /// Name of the endpoint, up to 64 characters. Changing this forces a new resource.
  final pulumi.Input<String> endpointName;
  /// Endpoint type. Valid values are `HomeRegion`, `MultiRegion`, and `PerRegion`. Changing this forces a new resource.
  final pulumi.Input<String> endpointType;
  /// Name of the function this endpoint belongs to, up to 64 characters. Changing this forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> functionName;
  /// Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Regions the endpoint spans. The maximum number of Regions per endpoint is a service quota, enforced by the API. Required for `MultiRegion` and `PerRegion` endpoints: specify at least one Region other than the home Region, which is added automatically. For `HomeRegion` endpoints, omit this argument or specify only the home Region. Changing this forces a new resource.
  final pulumi.Input<List<String>?>? regions;
  /// Traffic routing. Required when `autoDeploymentMode` is `Disabled` and must be omitted when `LatestRevision`. One or two entries; weights must sum to 100. See below. When a new revision is rolled on the function, update these weights to shift traffic to it — with `autoDeploymentMode = "Disabled"` traffic never moves automatically.
  final pulumi.Input<List<FunctionEndpointRevisionWeight>?>? revisionWeights;
  /// Scaling limits for the endpoint. When unset, the endpoint has no `maxEnvironments` limit; removing the block clears a previously set limit. See below.
  final pulumi.Input<FunctionEndpointScalingConfig?>? scalingConfig;
  /// Request throttling for the endpoint. When unset, the endpoint has no `rateLimit`; removing the block clears a previously set limit. See below.
  final pulumi.Input<FunctionEndpointThrottleConfig?>? throttleConfig;
  final pulumi.Input<FunctionEndpointTimeouts?>? timeouts;

  /// Creates a new [FunctionEndpointArgs].
  /// [authType] Authentication mode. Valid values are `ApplicationManaged` and `IamAuth`. Can be changed in place; the endpoint keeps its domain name.
  /// [autoDeploymentMode] Deployment mode. `LatestRevision` makes the endpoint follow the latest revision automatically; `Disabled` requires explicit `revisionWeight`s. `MultiRegion` and `PerRegion` endpoints require `Disabled`. Defaults to `LatestRevision`.
  /// [description] Description of the endpoint.
  /// [endpointName] Name of the endpoint, up to 64 characters. Changing this forces a new resource.
  /// [endpointType] Endpoint type. Valid values are `HomeRegion`, `MultiRegion`, and `PerRegion`. Changing this forces a new resource.
  /// [functionName] Name of the function this endpoint belongs to, up to 64 characters. Changing this forces a new resource.
  /// [region] Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  /// [regions] Regions the endpoint spans. The maximum number of Regions per endpoint is a service quota, enforced by the API. Required for `MultiRegion` and `PerRegion` endpoints: specify at least one Region other than the home Region, which is added automatically. For `HomeRegion` endpoints, omit this argument or specify only the home Region. Changing this forces a new resource.
  /// [revisionWeights] Traffic routing. Required when `autoDeploymentMode` is `Disabled` and must be omitted when `LatestRevision`. One or two entries; weights must sum to 100. See below. When a new revision is rolled on the function, update these weights to shift traffic to it — with `autoDeploymentMode = "Disabled"` traffic never moves automatically.
  /// [scalingConfig] Scaling limits for the endpoint. When unset, the endpoint has no `maxEnvironments` limit; removing the block clears a previously set limit. See below.
  /// [throttleConfig] Request throttling for the endpoint. When unset, the endpoint has no `rateLimit`; removing the block clears a previously set limit. See below.
  /// [timeouts] Optional.
  const FunctionEndpointArgs({
    required this.authType,
    this.autoDeploymentMode,
    this.description,
    required this.endpointName,
    required this.endpointType,
    required this.functionName,
    this.region,
    this.regions,
    this.revisionWeights,
    this.scalingConfig,
    this.throttleConfig,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
      'autoDeploymentMode': ?autoDeploymentMode,
      'description': ?description,
      'endpointName': endpointName,
      'endpointType': endpointType,
      'functionName': functionName,
      'region': ?region,
      'regions': ?regions,
      'revisionWeights': ?pulumi.Input.mapOptionalInputValue<List<FunctionEndpointRevisionWeight>, List<Map<String, dynamic>>>(revisionWeights, (value) => pulumi.Input.encodeList<FunctionEndpointRevisionWeight, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scalingConfig': ?pulumi.Input.mapOptionalInputValue<FunctionEndpointScalingConfig, Map<String, dynamic>>(scalingConfig, (value) => value.toMap()),
      'throttleConfig': ?pulumi.Input.mapOptionalInputValue<FunctionEndpointThrottleConfig, Map<String, dynamic>>(throttleConfig, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FunctionEndpointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory FunctionEndpointArgs.fromMap(Map<String, dynamic> map) {
    return FunctionEndpointArgs(
      authType: pulumi.Input.fromValue(map['authType'] as String),
      autoDeploymentMode: (() { final guardedValue = map['autoDeploymentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      revisionWeights: (() { final guardedValue = map['revisionWeights']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FunctionEndpointRevisionWeight>(guardedValue, (value) => FunctionEndpointRevisionWeight.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scalingConfig: (() { final guardedValue = map['scalingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionEndpointScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      throttleConfig: (() { final guardedValue = map['throttleConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionEndpointThrottleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
