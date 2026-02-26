// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DataProtectionSettingsAssociation.
class DataProtectionSettingsAssociationArgs {
  /// ARN of the data protection settings to associate with the portal. Forces replacement if changed.
  final Input<String> dataProtectionSettingsArn;

  /// ARN of the portal to associate with the data protection settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final Input<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  DataProtectionSettingsAssociationArgs({
    required this.dataProtectionSettingsArn,
    required this.portalArn,
    this.region,
  });

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
      dataProtectionSettingsArn:
          Input.asInput<String>(map['dataProtectionSettingsArn']),
      portalArn: Input.asInput<String>(map['portalArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
