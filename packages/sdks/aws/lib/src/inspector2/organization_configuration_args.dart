// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_configuration_auto_enable.dart';

/// {@template pulumi_inspector2_organization_configuration_organization_configuration_args_doc}
/// The set of arguments for OrganizationConfiguration.
/// {@endtemplate}
/// {@macro pulumi_inspector2_organization_configuration_organization_configuration_args_doc}
class OrganizationConfigurationArgs {
  /// Configuration block for auto enabling. See below.
  final pulumi.Input<OrganizationConfigurationAutoEnable> autoEnable;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationConfigurationArgs].
  /// [autoEnable] Configuration block for auto enabling. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationConfigurationArgs({
    required pulumi.Output<OrganizationConfigurationAutoEnable> autoEnable,
    pulumi.Output<String>? region,
  }) :
      autoEnable = pulumi.Input.asInput<OrganizationConfigurationAutoEnable>(autoEnable),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoEnable': pulumi.Input.mapInputValue<OrganizationConfigurationAutoEnable, Map<String, dynamic>>(autoEnable, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory OrganizationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationArgs(
      autoEnable: pulumi.Output.create<OrganizationConfigurationAutoEnable>(OrganizationConfigurationAutoEnable.fromMap((map['autoEnable'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

