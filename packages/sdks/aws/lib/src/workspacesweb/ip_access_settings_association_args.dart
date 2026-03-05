// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspacesweb_ip_access_settings_association_ip_access_settings_association_args_doc}
/// The set of arguments for IpAccessSettingsAssociation.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_ip_access_settings_association_ip_access_settings_association_args_doc}
class IpAccessSettingsAssociationArgs {
  /// ARN of the IP access settings to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String> ipAccessSettingsArn;
  /// ARN of the portal to associate with the IP access settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [IpAccessSettingsAssociationArgs].
  /// [ipAccessSettingsArn] ARN of the IP access settings to associate with the portal. Forces replacement if changed.
  /// [portalArn] ARN of the portal to associate with the IP access settings. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  IpAccessSettingsAssociationArgs({
    required this.ipAccessSettingsArn,
    required this.portalArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAccessSettingsArn': ipAccessSettingsArn,
      'portalArn': portalArn,
      'region': ?region,
    };
  }

  factory IpAccessSettingsAssociationArgs.fromMap(Map<String, dynamic> map) {
    return IpAccessSettingsAssociationArgs(
      ipAccessSettingsArn: pulumi.Input.fromValue(map['ipAccessSettingsArn'] as String),
      portalArn: pulumi.Input.fromValue(map['portalArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

