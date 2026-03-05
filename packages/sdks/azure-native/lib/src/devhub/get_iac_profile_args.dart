// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devhub_get_iac_profile_args_doc}
/// Arguments for getIacProfile.
/// {@endtemplate}
/// {@macro pulumi_devhub_get_iac_profile_args_doc}
class GetIacProfileArgs {
  /// The name of the IacProfile.
  final pulumi.Input<String> iacProfileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIacProfileArgs].
  /// [iacProfileName] The name of the IacProfile.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetIacProfileArgs({
    required this.iacProfileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iacProfileName': iacProfileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIacProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetIacProfileArgs(
      iacProfileName: pulumi.Input.fromValue(map['iacProfileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

