// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sesv2_get_configuration_set_get_configuration_set_args_doc}
/// Arguments for getConfigurationSet.
/// {@endtemplate}
/// {@macro pulumi_sesv2_get_configuration_set_get_configuration_set_args_doc}
class GetConfigurationSetArgs {
  /// Name of the configuration set.
  final pulumi.Input<String> configurationSetName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetConfigurationSetArgs].
  /// [configurationSetName] Name of the configuration set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags.
  const GetConfigurationSetArgs({
    required this.configurationSetName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationSetName': configurationSetName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetConfigurationSetArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetArgs(
      configurationSetName: pulumi.Input.fromValue(map['configurationSetName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
