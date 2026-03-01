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
    required pulumi.Output<String> iacProfileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      iacProfileName = pulumi.Input.asInput<String>(iacProfileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iacProfileName': iacProfileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIacProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetIacProfileArgs(
      iacProfileName: pulumi.Output.create<String>(map['iacProfileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

