// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_secret_args_doc}
/// Arguments for getSecret.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_secret_args_doc}
class GetSecretArgs {
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Secret under the profile.
  final pulumi.Input<String> secretName;

  /// Creates a new [GetSecretArgs].
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [secretName] Name of the Secret under the profile.
  GetSecretArgs({
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> secretName,
  }) :
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secretName = pulumi.Input.asInput<String>(secretName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'secretName': secretName,
    };
  }

  factory GetSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretArgs(
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secretName: pulumi.Output.create<String>(map['secretName'] as String),
    );
  }
}

