// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspacesweb_browser_settings_association_browser_settings_association_args_doc}
/// The set of arguments for BrowserSettingsAssociation.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_browser_settings_association_browser_settings_association_args_doc}
class BrowserSettingsAssociationArgs {
  /// ARN of the browser settings to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String> browserSettingsArn;
  /// ARN of the portal to associate with the browser settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BrowserSettingsAssociationArgs].
  /// [browserSettingsArn] ARN of the browser settings to associate with the portal. Forces replacement if changed.
  /// [portalArn] ARN of the portal to associate with the browser settings. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BrowserSettingsAssociationArgs({
    required pulumi.Output<String> browserSettingsArn,
    required pulumi.Output<String> portalArn,
    pulumi.Output<String>? region,
  }) :
      browserSettingsArn = pulumi.Input.asInput<String>(browserSettingsArn),
      portalArn = pulumi.Input.asInput<String>(portalArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'browserSettingsArn': browserSettingsArn,
      'portalArn': portalArn,
      'region': ?region,
    };
  }

  factory BrowserSettingsAssociationArgs.fromMap(Map<String, dynamic> map) {
    return BrowserSettingsAssociationArgs(
      browserSettingsArn: pulumi.Output.create<String>(map['browserSettingsArn'] as String),
      portalArn: pulumi.Output.create<String>(map['portalArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

