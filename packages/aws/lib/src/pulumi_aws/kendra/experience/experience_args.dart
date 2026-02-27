// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../experience_configuration/experience_configuration.dart';

/// The set of arguments for Experience.
class ExperienceArgs {
  /// Configuration information for your Amazon Kendra experience. The provider will only perform drift detection of its value when present in a configuration. Detailed below.
  ///
  /// > **NOTE:** By default of the AWS Kendra API, updates to an existing `aws.kendra.Experience` resource (e.g. updating the `name`) will also update the `configuration.content_source_configuration.direct_put_content` parameter to `false` if not already provided.
  final pulumi.Input<ExperienceConfiguration>? configuration;

  /// A description for your Amazon Kendra experience.
  final pulumi.Input<String>? description;

  /// The identifier of the index for your Amazon Kendra experience.
  final pulumi.Input<String> indexId;

  /// A name for your Amazon Kendra experience.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of a role with permission to access `Query API`, `QuerySuggestions API`, `SubmitFeedback API`, and `AWS SSO` that stores your user and group information. For more information, see [IAM roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> roleArn;

  ExperienceArgs({
    this.configuration,
    this.description,
    required this.indexId,
    this.name,
    this.region,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = pulumi.Input.mapOptionalInputValue<
          ExperienceConfiguration,
          Map<String, dynamic>>(configurationValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['indexId'] = indexId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    return map;
  }

  factory ExperienceArgs.fromMap(Map<String, dynamic> map) {
    return ExperienceArgs(
      configuration: pulumi.Input.asOptionalInput<ExperienceConfiguration>(
          map['configuration']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      indexId: pulumi.Input.asInput<String>(map['indexId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
    );
  }
}
