// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sesv2_get_configuration_set_get_configuration_set_args_doc}
/// Arguments for getConfigurationSet.
/// {@endtemplate}
/// {@macro pulumi_sesv2_get_configuration_set_get_configuration_set_args_doc}
class GetConfigurationSetArgs {
  /// The name of the configuration set.
  final pulumi.Input<String> configurationSetName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags for the container recipe.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetConfigurationSetArgs].
  /// [configurationSetName] The name of the configuration set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the container recipe.
  GetConfigurationSetArgs({
    required pulumi.Output<String> configurationSetName,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      configurationSetName = pulumi.Input.asInput<String>(configurationSetName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationSetName': configurationSetName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetConfigurationSetArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetArgs(
      configurationSetName: pulumi.Output.create<String>(map['configurationSetName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

