// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_msk_get_configuration_get_configuration_args_doc}
/// Arguments for getConfiguration.
/// {@endtemplate}
/// {@macro pulumi_msk_get_configuration_get_configuration_args_doc}
class GetConfigurationArgs {
  /// Name of the configuration.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetConfigurationArgs].
  /// [name] Name of the configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetConfigurationArgs({required String name, String? region})
    : name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'region': ?region};
  }

  factory GetConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
