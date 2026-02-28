// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mskconnect_worker_configuration_worker_configuration_args_doc}
/// The set of arguments for WorkerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_mskconnect_worker_configuration_worker_configuration_args_doc}
class WorkerConfigurationArgs {
  /// A summary description of the worker configuration.
  final pulumi.Input<String>? description;

  /// The name of the worker configuration.
  final pulumi.Input<String>? name;

  /// Contents of connect-distributed.properties file. The value can be either base64 encoded or in raw format.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> propertiesFileContent;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WorkerConfigurationArgs].
  /// [description] A summary description of the worker configuration.
  /// [name] The name of the worker configuration.
  /// [propertiesFileContent] Contents of connect-distributed.properties file. The value can be either base64 encoded or in raw format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  WorkerConfigurationArgs({
    String? description,
    String? name,
    required String propertiesFileContent,
    String? region,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        name = pulumi.Input.asOptionalInput<String>(name),
        propertiesFileContent =
            pulumi.Input.asInput<String>(propertiesFileContent),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['propertiesFileContent'] = propertiesFileContent;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory WorkerConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return WorkerConfigurationArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      propertiesFileContent: map['propertiesFileContent'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
