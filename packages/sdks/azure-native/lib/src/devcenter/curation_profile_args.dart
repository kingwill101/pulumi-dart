// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy.dart';

/// {@template pulumi_devcenter_curation_profile_args_doc}
/// The set of arguments for CurationProfile.
/// {@endtemplate}
/// {@macro pulumi_devcenter_curation_profile_args_doc}
class CurationProfileArgs {
  /// The name of the curation profile.
  final pulumi.Input<String>? curationProfileName;
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource policies that are a part of this curation profile.
  final pulumi.Input<List<ResourcePolicy>>? resourcePolicies;
  /// Resources that have access to the shared resources that are a part of this curation profile.
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [CurationProfileArgs].
  /// [curationProfileName] The name of the curation profile.
  /// [devCenterName] The name of the devcenter.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourcePolicies] Resource policies that are a part of this curation profile.
  /// [scopes] Resources that have access to the shared resources that are a part of this curation profile.
  const CurationProfileArgs({
    this.curationProfileName,
    required this.devCenterName,
    required this.resourceGroupName,
    this.resourcePolicies,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curationProfileName': ?curationProfileName,
      'devCenterName': devCenterName,
      'resourceGroupName': resourceGroupName,
      'resourcePolicies': ?pulumi.Input.mapOptionalInputValue<List<ResourcePolicy>, List<Map<String, dynamic>>>(resourcePolicies, (value) => pulumi.Input.encodeList<ResourcePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scopes': ?scopes,
    };
  }

  factory CurationProfileArgs.fromMap(Map<String, dynamic> map) {
    return CurationProfileArgs(
      curationProfileName: (() { final guardedValue = map['curationProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      devCenterName: pulumi.Input.fromValue(map['devCenterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourcePolicy>(guardedValue, (value) => ResourcePolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

