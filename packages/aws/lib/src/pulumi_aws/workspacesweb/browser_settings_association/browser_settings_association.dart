import 'package:pulumi/pulumi.dart' as pulumi;
import 'browser_settings_association_args.dart';

/// Resource for managing an AWS WorkSpaces Web Browser Settings Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Browser Settings Association using the `browser_settings_arn,portal_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/browserSettingsAssociation:BrowserSettingsAssociation example arn:aws:workspaces-web:us-west-2:123456789012:browserSettings/browser_settings-id-12345678,arn:aws:workspaces-web:us-west-2:123456789012:portal/portal-id-12345678
/// ```
class BrowserSettingsAssociation extends pulumi.CustomResource {
  /// ARN of the browser settings to associate with the portal. Forces replacement if changed.
  late final pulumi.Output<String> browserSettingsArn;

  /// ARN of the portal to associate with the browser settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  BrowserSettingsAssociation(
    String name, {
    BrowserSettingsAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/browserSettingsAssociation:BrowserSettingsAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.browserSettingsArn = registerOutput<String>('browserSettingsArn');
    this.portalArn = registerOutput<String>('portalArn');
    this.region = registerOutput<String>('region');
  }
}
