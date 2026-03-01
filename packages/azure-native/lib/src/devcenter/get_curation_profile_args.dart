// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_curation_profile_args_doc}
/// Arguments for getCurationProfile.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_curation_profile_args_doc}
class GetCurationProfileArgs {
  /// The name of the curation profile.
  final pulumi.Input<String> curationProfileName;
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCurationProfileArgs].
  /// [curationProfileName] The name of the curation profile.
  /// [devCenterName] The name of the devcenter.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCurationProfileArgs({
    required String curationProfileName,
    required String devCenterName,
    required String resourceGroupName,
  }) :
      curationProfileName = pulumi.Input.asInput<String>(curationProfileName),
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curationProfileName': curationProfileName,
      'devCenterName': devCenterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCurationProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetCurationProfileArgs(
      curationProfileName: map['curationProfileName'] as String,
      devCenterName: map['devCenterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

