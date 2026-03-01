// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_appregistry_application_appregistry_application_args_doc}
/// The set of arguments for AppregistryApplication.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_appregistry_application_appregistry_application_args_doc}
class AppregistryApplicationArgs {
  /// Description of the application.
  final pulumi.Input<String>? description;

  /// Name of the application. The name must be unique within an AWS region.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags assigned to the Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AppregistryApplicationArgs].
  /// [description] Description of the application.
  /// [name] Name of the application. The name must be unique within an AWS region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags assigned to the Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AppregistryApplicationArgs({
    String? description,
    String? name,
    String? region,
    Map<String, String>? tags,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory AppregistryApplicationArgs.fromMap(Map<String, dynamic> map) {
    return AppregistryApplicationArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
