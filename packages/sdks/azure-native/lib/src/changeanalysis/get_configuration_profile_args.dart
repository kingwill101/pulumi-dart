// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_changeanalysis_get_configuration_profile_args_doc}
/// Arguments for getConfigurationProfile.
/// {@endtemplate}
/// {@macro pulumi_changeanalysis_get_configuration_profile_args_doc}
class GetConfigurationProfileArgs {
  /// The name of the configuration profile. The profile name should be set to 'default', all other names will be overwritten.
  final pulumi.Input<String> profileName;

  /// Creates a new [GetConfigurationProfileArgs].
  /// [profileName] The name of the configuration profile. The profile name should be set to 'default', all other names will be overwritten.
  GetConfigurationProfileArgs({
    required pulumi.Output<String> profileName,
  }) :
      profileName = pulumi.Input.asInput<String>(profileName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileName': profileName,
    };
  }

  factory GetConfigurationProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfileArgs(
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
    );
  }
}

