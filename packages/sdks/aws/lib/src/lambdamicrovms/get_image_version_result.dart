// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_version_code_artifact.dart';
import 'get_image_version_cpu_configuration.dart';
import 'get_image_version_hook.dart';
import 'get_image_version_logging.dart';
import 'get_image_version_resource.dart';

/// Result data returned by getImageVersion.
class GetImageVersionResult {
  /// Additional OS capabilities granted to the MicroVM runtime environment.
  final List<String>? additionalOsCapabilities;
  /// ARN of the base MicroVM image used.
  final String? baseImageArn;
  /// Version of the base MicroVM image used.
  final String? baseImageVersion;
  /// ARN of the IAM role used to build the image version.
  final String? buildRoleArn;
  /// Code artifact for this version. See `codeArtifact` below.
  final List<GetImageVersionCodeArtifact>? codeArtifacts;
  /// List of supported CPU configurations. See `cpuConfiguration` below.
  final List<GetImageVersionCpuConfiguration>? cpuConfigurations;
  /// Timestamp when the version was created.
  final String? createdAt;
  /// Description of the version.
  final String? description;
  /// List of egress network connectors available to the MicroVM at runtime.
  final List<String>? egressNetworkConnectors;
  /// Environment variables set in the MicroVM runtime environment.
  final Map<String, String>? environmentVariables;
  /// Lifecycle hook configuration. See `hooks` below.
  final List<GetImageVersionHook>? hooks;
  /// ARN of the MicroVM image.
  final String? imageArn;
  final String? imageIdentifier;
  final String? imageVersion;
  /// Logging configuration for this version. See `logging` below.
  final List<GetImageVersionLogging>? loggings;
  final String? region;
  /// Resource requirements for the MicroVM. See `resources` below.
  final List<GetImageVersionResource>? resources;
  /// Current state of the version.
  final String? state;
  /// Reason for the current state.
  final String? stateReason;
  /// Availability status of the version. `ACTIVE` versions can launch new MicroVMs; `INACTIVE` versions cannot.
  final String? status;
  /// Map of tags assigned to the version.
  final Map<String, String>? tags;
  /// Timestamp when the version was last updated.
  final String? updatedAt;

  /// Creates a new [GetImageVersionResult].
  /// [additionalOsCapabilities] Additional OS capabilities granted to the MicroVM runtime environment.
  /// [baseImageArn] ARN of the base MicroVM image used.
  /// [baseImageVersion] Version of the base MicroVM image used.
  /// [buildRoleArn] ARN of the IAM role used to build the image version.
  /// [codeArtifacts] Code artifact for this version. See `codeArtifact` below.
  /// [cpuConfigurations] List of supported CPU configurations. See `cpuConfiguration` below.
  /// [createdAt] Timestamp when the version was created.
  /// [description] Description of the version.
  /// [egressNetworkConnectors] List of egress network connectors available to the MicroVM at runtime.
  /// [environmentVariables] Environment variables set in the MicroVM runtime environment.
  /// [hooks] Lifecycle hook configuration. See `hooks` below.
  /// [imageArn] ARN of the MicroVM image.
  /// [imageIdentifier] Optional.
  /// [imageVersion] Optional.
  /// [loggings] Logging configuration for this version. See `logging` below.
  /// [region] Optional.
  /// [resources] Resource requirements for the MicroVM. See `resources` below.
  /// [state] Current state of the version.
  /// [stateReason] Reason for the current state.
  /// [status] Availability status of the version. `ACTIVE` versions can launch new MicroVMs; `INACTIVE` versions cannot.
  /// [tags] Map of tags assigned to the version.
  /// [updatedAt] Timestamp when the version was last updated.
  const GetImageVersionResult({
    this.additionalOsCapabilities,
    this.baseImageArn,
    this.baseImageVersion,
    this.buildRoleArn,
    this.codeArtifacts,
    this.cpuConfigurations,
    this.createdAt,
    this.description,
    this.egressNetworkConnectors,
    this.environmentVariables,
    this.hooks,
    this.imageArn,
    this.imageIdentifier,
    this.imageVersion,
    this.loggings,
    this.region,
    this.resources,
    this.state,
    this.stateReason,
    this.status,
    this.tags,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalOsCapabilities': ?additionalOsCapabilities,
      'baseImageArn': ?baseImageArn,
      'baseImageVersion': ?baseImageVersion,
      'buildRoleArn': ?buildRoleArn,
      'codeArtifacts': ?(() { final guardedValue = codeArtifacts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageVersionCodeArtifact, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cpuConfigurations': ?(() { final guardedValue = cpuConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageVersionCpuConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createdAt': ?createdAt,
      'description': ?description,
      'egressNetworkConnectors': ?egressNetworkConnectors,
      'environmentVariables': ?environmentVariables,
      'hooks': ?(() { final guardedValue = hooks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageVersionHook, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'imageArn': ?imageArn,
      'imageIdentifier': ?imageIdentifier,
      'imageVersion': ?imageVersion,
      'loggings': ?(() { final guardedValue = loggings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageVersionLogging, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'resources': ?(() { final guardedValue = resources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageVersionResource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'stateReason': ?stateReason,
      'status': ?status,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetImageVersionResult.fromMap(Map<String, dynamic> map) {
    return GetImageVersionResult(
      additionalOsCapabilities: (() { final guardedValue = map['additionalOsCapabilities']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      baseImageArn: (() { final guardedValue = map['baseImageArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      baseImageVersion: (() { final guardedValue = map['baseImageVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      buildRoleArn: (() { final guardedValue = map['buildRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      codeArtifacts: (() { final guardedValue = map['codeArtifacts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageVersionCodeArtifact>(guardedValue, (value) => GetImageVersionCodeArtifact.fromMap((value as Map).cast<String, dynamic>())); })(),
      cpuConfigurations: (() { final guardedValue = map['cpuConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageVersionCpuConfiguration>(guardedValue, (value) => GetImageVersionCpuConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      egressNetworkConnectors: (() { final guardedValue = map['egressNetworkConnectors']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      hooks: (() { final guardedValue = map['hooks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageVersionHook>(guardedValue, (value) => GetImageVersionHook.fromMap((value as Map).cast<String, dynamic>())); })(),
      imageArn: (() { final guardedValue = map['imageArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageIdentifier: (() { final guardedValue = map['imageIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageVersion: (() { final guardedValue = map['imageVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loggings: (() { final guardedValue = map['loggings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageVersionLogging>(guardedValue, (value) => GetImageVersionLogging.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageVersionResource>(guardedValue, (value) => GetImageVersionResource.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateReason: (() { final guardedValue = map['stateReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
