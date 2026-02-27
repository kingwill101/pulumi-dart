import 'package:pulumi/pulumi.dart';
import 'data_protection_settings_association_args.dart';

/// Resource for managing an AWS WorkSpaces Web Data Protection Settings Association.
///
/// ## Example Usage
///
/// ### Basic Usage
class DataProtectionSettingsAssociation extends CustomResource {
  /// ARN of the data protection settings to associate with the portal. Forces replacement if changed.
  late final Output<String> dataProtectionSettingsArn;

  /// ARN of the portal to associate with the data protection settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DataProtectionSettingsAssociation(
    String name, {
    DataProtectionSettingsAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/dataProtectionSettingsAssociation:DataProtectionSettingsAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataProtectionSettingsArn =
        registerOutput<String>('dataProtectionSettingsArn');
    this.portalArn = registerOutput<String>('portalArn');
    this.region = registerOutput<String>('region');
  }
}
