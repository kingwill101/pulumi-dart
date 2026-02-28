// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_macie2_organization_configuration_organization_configuration_args_doc}
/// The set of arguments for OrganizationConfiguration.
/// {@endtemplate}
/// {@macro pulumi_macie2_organization_configuration_organization_configuration_args_doc}
class OrganizationConfigurationArgs {
  /// Whether to enable Amazon Macie automatically for accounts that are added to the organization in AWS Organizations.
  final pulumi.Input<bool> autoEnable;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationConfigurationArgs].
  /// [autoEnable] Whether to enable Amazon Macie automatically for accounts that are added to the organization in AWS Organizations.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationConfigurationArgs({
    required bool autoEnable,
    String? region,
  })  : autoEnable = pulumi.Input.asInput<bool>(autoEnable),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoEnable'] = autoEnable;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory OrganizationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationArgs(
      autoEnable: map['autoEnable'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
