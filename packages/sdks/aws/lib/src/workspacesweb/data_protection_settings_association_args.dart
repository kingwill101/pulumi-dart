// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspacesweb_data_protection_settings_association_data_protection_settings_association_args_doc}
/// The set of arguments for DataProtectionSettingsAssociation.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_data_protection_settings_association_data_protection_settings_association_args_doc}
class DataProtectionSettingsAssociationArgs {
  /// ARN of the data protection settings to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String> dataProtectionSettingsArn;
  /// ARN of the portal to associate with the data protection settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DataProtectionSettingsAssociationArgs].
  /// [dataProtectionSettingsArn] ARN of the data protection settings to associate with the portal. Forces replacement if changed.
  /// [portalArn] ARN of the portal to associate with the data protection settings. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DataProtectionSettingsAssociationArgs({
    required this.dataProtectionSettingsArn,
    required this.portalArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataProtectionSettingsArn': dataProtectionSettingsArn,
      'portalArn': portalArn,
      'region': ?region,
    };
  }

  factory DataProtectionSettingsAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DataProtectionSettingsAssociationArgs(
      dataProtectionSettingsArn: pulumi.Input.fromValue(map['dataProtectionSettingsArn'] as String),
      portalArn: pulumi.Input.fromValue(map['portalArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

