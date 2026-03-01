// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_claim_configuration_patch.dart';
import 'device_constraint_patch.dart';
import 'device_request_patch.dart';

/// DeviceClaim defines how to request devices with a ResourceClaim.
class DeviceClaimPatch {
  /// This field holds configuration for multiple potential drivers which could satisfy requests in this claim. It is ignored while allocating the claim.
  final List<DeviceClaimConfigurationPatch>? config;
  /// These constraints must be satisfied by the set of devices that get allocated for the claim.
  final List<DeviceConstraintPatch>? constraints;
  /// Requests represent individual requests for distinct devices which must all be satisfied. If empty, nothing needs to be allocated.
  final List<DeviceRequestPatch>? requests;

  /// Creates a new [DeviceClaimPatch].
  /// [config] This field holds configuration for multiple potential drivers which could satisfy requests in this claim. It is ignored while allocating the claim.
  /// [constraints] These constraints must be satisfied by the set of devices that get allocated for the claim.
  /// [requests] Requests represent individual requests for distinct devices which must all be satisfied. If empty, nothing needs to be allocated.
  DeviceClaimPatch({
    this.config,
    this.constraints,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config == null ? null : pulumi.Input.encodeList<DeviceClaimConfigurationPatch, Map<String, dynamic>>(config!, (value) => value.toMap()),
      'constraints': ?constraints == null ? null : pulumi.Input.encodeList<DeviceConstraintPatch, Map<String, dynamic>>(constraints!, (value) => value.toMap()),
      'requests': ?requests == null ? null : pulumi.Input.encodeList<DeviceRequestPatch, Map<String, dynamic>>(requests!, (value) => value.toMap()),
    };
  }

  factory DeviceClaimPatch.fromMap(Map<String, dynamic> map) {
    return DeviceClaimPatch(
      config: map['config'] == null ? null : pulumi.Input.decodeList<DeviceClaimConfigurationPatch>(map['config'], (value) => DeviceClaimConfigurationPatch.fromMap((value as Map).cast<String, dynamic>())),
      constraints: map['constraints'] == null ? null : pulumi.Input.decodeList<DeviceConstraintPatch>(map['constraints'], (value) => DeviceConstraintPatch.fromMap((value as Map).cast<String, dynamic>())),
      requests: map['requests'] == null ? null : pulumi.Input.decodeList<DeviceRequestPatch>(map['requests'], (value) => DeviceRequestPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

