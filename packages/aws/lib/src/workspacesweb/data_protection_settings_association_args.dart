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
  DataProtectionSettingsAssociationArgs({
    required String dataProtectionSettingsArn,
    required String portalArn,
    String? region,
  })  : dataProtectionSettingsArn =
            pulumi.Input.asInput<String>(dataProtectionSettingsArn),
        portalArn = pulumi.Input.asInput<String>(portalArn),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataProtectionSettingsArn'] = dataProtectionSettingsArn;
    map['portalArn'] = portalArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DataProtectionSettingsAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return DataProtectionSettingsAssociationArgs(
      dataProtectionSettingsArn: map['dataProtectionSettingsArn'] as String,
      portalArn: map['portalArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
