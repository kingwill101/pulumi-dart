// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_endpoint_revision_weight.dart';
import 'function_endpoint_scaling_config.dart';
import 'function_endpoint_throttle_config.dart';
import 'function_endpoint_timeouts.dart';

/// Input properties used for looking up and filtering FunctionEndpoint resources.
class FunctionEndpointState {
  /// ARN of the endpoint in the format `arn:aws:lambda:{region}:{account}:web-function/{function_name}/endpoint/{endpoint_name}`.
  final pulumi.Input<String?>? arn;
  /// Authentication mode. Valid values are `ApplicationManaged` and `IamAuth`. Can be changed in place; the endpoint keeps its domain name.
  final pulumi.Input<String?>? authType;
  /// Deployment mode. `LatestRevision` makes the endpoint follow the latest revision automatically; `Disabled` requires explicit `revisionWeight`s. `MultiRegion` and `PerRegion` endpoints require `Disabled`. Defaults to `LatestRevision`.
  final pulumi.Input<String?>? autoDeploymentMode;
  /// Description of the endpoint.
  final pulumi.Input<String?>? description;
  /// HTTPS domain name of the endpoint. Empty for `PerRegion` endpoints, which only expose `regionalDomainNames`.
  final pulumi.Input<String?>? domainName;
  /// Name of the endpoint, up to 64 characters. Changing this forces a new resource.
  final pulumi.Input<String?>? endpointName;
  /// Endpoint type. Valid values are `HomeRegion`, `MultiRegion`, and `PerRegion`. Changing this forces a new resource.
  final pulumi.Input<String?>? endpointType;
  /// Name of the function this endpoint belongs to, up to 64 characters. Changing this forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? functionName;
  /// Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of Region to that Region's independent domain name.
  final pulumi.Input<Map<String, String>?>? regionalDomainNames;
  /// Regions the endpoint spans. The maximum number of Regions per endpoint is a service quota, enforced by the API. Required for `MultiRegion` and `PerRegion` endpoints: specify at least one Region other than the home Region, which is added automatically. For `HomeRegion` endpoints, omit this argument or specify only the home Region. Changing this forces a new resource.
  final pulumi.Input<List<String>?>? regions;
  /// Traffic routing. Required when `autoDeploymentMode` is `Disabled` and must be omitted when `LatestRevision`. One or two entries; weights must sum to 100. See below. When a new revision is rolled on the function, update these weights to shift traffic to it — with `autoDeploymentMode = "Disabled"` traffic never moves automatically.
  final pulumi.Input<List<FunctionEndpointRevisionWeight>?>? revisionWeights;
  /// Scaling limits for the endpoint. When unset, the endpoint has no `maxEnvironments` limit; removing the block clears a previously set limit. See below.
  final pulumi.Input<FunctionEndpointScalingConfig?>? scalingConfig;
  /// Request throttling for the endpoint. When unset, the endpoint has no `rateLimit`; removing the block clears a previously set limit. See below.
  final pulumi.Input<FunctionEndpointThrottleConfig?>? throttleConfig;
  final pulumi.Input<FunctionEndpointTimeouts?>? timeouts;

  /// Creates a new [FunctionEndpointState].
  /// [arn] ARN of the endpoint in the format `arn:aws:lambda:{region}:{account}:web-function/{function_name}/endpoint/{endpoint_name}`.
  /// [authType] Authentication mode. Valid values are `ApplicationManaged` and `IamAuth`. Can be changed in place; the endpoint keeps its domain name.
  /// [autoDeploymentMode] Deployment mode. `LatestRevision` makes the endpoint follow the latest revision automatically; `Disabled` requires explicit `revisionWeight`s. `MultiRegion` and `PerRegion` endpoints require `Disabled`. Defaults to `LatestRevision`.
  /// [description] Description of the endpoint.
  /// [domainName] HTTPS domain name of the endpoint. Empty for `PerRegion` endpoints, which only expose `regionalDomainNames`.
  /// [endpointName] Name of the endpoint, up to 64 characters. Changing this forces a new resource.
  /// [endpointType] Endpoint type. Valid values are `HomeRegion`, `MultiRegion`, and `PerRegion`. Changing this forces a new resource.
  /// [functionName] Name of the function this endpoint belongs to, up to 64 characters. Changing this forces a new resource.
  /// [region] Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  /// [regionalDomainNames] Map of Region to that Region's independent domain name.
  /// [regions] Regions the endpoint spans. The maximum number of Regions per endpoint is a service quota, enforced by the API. Required for `MultiRegion` and `PerRegion` endpoints: specify at least one Region other than the home Region, which is added automatically. For `HomeRegion` endpoints, omit this argument or specify only the home Region. Changing this forces a new resource.
  /// [revisionWeights] Traffic routing. Required when `autoDeploymentMode` is `Disabled` and must be omitted when `LatestRevision`. One or two entries; weights must sum to 100. See below. When a new revision is rolled on the function, update these weights to shift traffic to it — with `autoDeploymentMode = "Disabled"` traffic never moves automatically.
  /// [scalingConfig] Scaling limits for the endpoint. When unset, the endpoint has no `maxEnvironments` limit; removing the block clears a previously set limit. See below.
  /// [throttleConfig] Request throttling for the endpoint. When unset, the endpoint has no `rateLimit`; removing the block clears a previously set limit. See below.
  /// [timeouts] Optional.
  const FunctionEndpointState({
    this.arn,
    this.authType,
    this.autoDeploymentMode,
    this.description,
    this.domainName,
    this.endpointName,
    this.endpointType,
    this.functionName,
    this.region,
    this.regionalDomainNames,
    this.regions,
    this.revisionWeights,
    this.scalingConfig,
    this.throttleConfig,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authType': ?authType,
      'autoDeploymentMode': ?autoDeploymentMode,
      'description': ?description,
      'domainName': ?domainName,
      'endpointName': ?endpointName,
      'endpointType': ?endpointType,
      'functionName': ?functionName,
      'region': ?region,
      'regionalDomainNames': ?regionalDomainNames,
      'regions': ?regions,
      'revisionWeights': ?pulumi.Input.mapOptionalInputValue<List<FunctionEndpointRevisionWeight>, List<Map<String, dynamic>>>(revisionWeights, (value) => pulumi.Input.encodeList<FunctionEndpointRevisionWeight, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scalingConfig': ?pulumi.Input.mapOptionalInputValue<FunctionEndpointScalingConfig, Map<String, dynamic>>(scalingConfig, (value) => value.toMap()),
      'throttleConfig': ?pulumi.Input.mapOptionalInputValue<FunctionEndpointThrottleConfig, Map<String, dynamic>>(throttleConfig, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FunctionEndpointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory FunctionEndpointState.fromMap(Map<String, dynamic> map) {
    return FunctionEndpointState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoDeploymentMode: (() { final guardedValue = map['autoDeploymentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointName: (() { final guardedValue = map['endpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionalDomainNames: (() { final guardedValue = map['regionalDomainNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      revisionWeights: (() { final guardedValue = map['revisionWeights']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FunctionEndpointRevisionWeight>(guardedValue, (value) => FunctionEndpointRevisionWeight.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scalingConfig: (() { final guardedValue = map['scalingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionEndpointScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      throttleConfig: (() { final guardedValue = map['throttleConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionEndpointThrottleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
