// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_endpoint_revision_weight.dart';
import 'get_function_endpoint_scaling_config.dart';
import 'get_function_endpoint_throttle_config.dart';

/// Result data returned by getFunctionEndpoint.
class GetFunctionEndpointResult {
  /// ARN of the endpoint.
  final String? arn;
  /// Authentication mode of the endpoint.
  final String? authType;
  /// Deployment mode of the endpoint.
  final String? autoDeploymentMode;
  /// Description of the endpoint.
  final String? description;
  /// HTTPS domain of the endpoint. Empty for `PerRegion` endpoints, which only expose `regionalDomainNames`.
  final String? domainName;
  final String? endpointName;
  /// Endpoint type (`HomeRegion`, `MultiRegion` or `PerRegion`).
  final String? endpointType;
  final String? functionName;
  final String? region;
  /// Map of Region to that Region's independent domain name.
  final Map<String, String>? regionalDomainNames;
  /// Regions the endpoint spans.
  final List<String>? regions;
  /// Revisions the endpoint routes to, each with `revisionId` and `weight`. Under `autoDeploymentMode = "Disabled"` these are the weights a canary or blue/green shift set; under `LatestRevision` the service reports its own ephemeral routing.
  final List<GetFunctionEndpointRevisionWeight>? revisionWeights;
  /// Scaling limits of the endpoint. See below.
  final List<GetFunctionEndpointScalingConfig>? scalingConfigs;
  /// Current state of the endpoint.
  final String? state;
  /// Reason for the current state, which names the failing Region when a `MultiRegion` or `PerRegion` endpoint could not deploy everywhere.
  final String? stateReason;
  /// Request throttling of the endpoint. See below.
  final List<GetFunctionEndpointThrottleConfig>? throttleConfigs;

  /// Creates a new [GetFunctionEndpointResult].
  /// [arn] ARN of the endpoint.
  /// [authType] Authentication mode of the endpoint.
  /// [autoDeploymentMode] Deployment mode of the endpoint.
  /// [description] Description of the endpoint.
  /// [domainName] HTTPS domain of the endpoint. Empty for `PerRegion` endpoints, which only expose `regionalDomainNames`.
  /// [endpointName] Optional.
  /// [endpointType] Endpoint type (`HomeRegion`, `MultiRegion` or `PerRegion`).
  /// [functionName] Optional.
  /// [region] Optional.
  /// [regionalDomainNames] Map of Region to that Region's independent domain name.
  /// [regions] Regions the endpoint spans.
  /// [revisionWeights] Revisions the endpoint routes to, each with `revisionId` and `weight`. Under `autoDeploymentMode = "Disabled"` these are the weights a canary or blue/green shift set; under `LatestRevision` the service reports its own ephemeral routing.
  /// [scalingConfigs] Scaling limits of the endpoint. See below.
  /// [state] Current state of the endpoint.
  /// [stateReason] Reason for the current state, which names the failing Region when a `MultiRegion` or `PerRegion` endpoint could not deploy everywhere.
  /// [throttleConfigs] Request throttling of the endpoint. See below.
  const GetFunctionEndpointResult({
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
    this.scalingConfigs,
    this.state,
    this.stateReason,
    this.throttleConfigs,
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
      'revisionWeights': ?(() { final guardedValue = revisionWeights; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionEndpointRevisionWeight, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scalingConfigs': ?(() { final guardedValue = scalingConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionEndpointScalingConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'stateReason': ?stateReason,
      'throttleConfigs': ?(() { final guardedValue = throttleConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionEndpointThrottleConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetFunctionEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionEndpointResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoDeploymentMode: (() { final guardedValue = map['autoDeploymentMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointName: (() { final guardedValue = map['endpointName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionalDomainNames: (() { final guardedValue = map['regionalDomainNames']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      revisionWeights: (() { final guardedValue = map['revisionWeights']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionEndpointRevisionWeight>(guardedValue, (value) => GetFunctionEndpointRevisionWeight.fromMap((value as Map).cast<String, dynamic>())); })(),
      scalingConfigs: (() { final guardedValue = map['scalingConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionEndpointScalingConfig>(guardedValue, (value) => GetFunctionEndpointScalingConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateReason: (() { final guardedValue = map['stateReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      throttleConfigs: (() { final guardedValue = map['throttleConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionEndpointThrottleConfig>(guardedValue, (value) => GetFunctionEndpointThrottleConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
