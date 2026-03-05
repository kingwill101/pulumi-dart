// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspacesweb_network_settings_association_network_settings_association_args_doc}
/// The set of arguments for NetworkSettingsAssociation.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_network_settings_association_network_settings_association_args_doc}
class NetworkSettingsAssociationArgs {
  /// ARN of the network settings to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String> networkSettingsArn;
  /// ARN of the portal to associate with the network settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [NetworkSettingsAssociationArgs].
  /// [networkSettingsArn] ARN of the network settings to associate with the portal. Forces replacement if changed.
  /// [portalArn] ARN of the portal to associate with the network settings. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  NetworkSettingsAssociationArgs({
    required this.networkSettingsArn,
    required this.portalArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkSettingsArn': networkSettingsArn,
      'portalArn': portalArn,
      'region': ?region,
    };
  }

  factory NetworkSettingsAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSettingsAssociationArgs(
      networkSettingsArn: pulumi.Input.fromValue(map['networkSettingsArn'] as String),
      portalArn: pulumi.Input.fromValue(map['portalArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

