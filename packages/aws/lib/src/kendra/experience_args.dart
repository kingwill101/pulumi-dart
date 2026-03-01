// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experience_configuration.dart';

/// {@template pulumi_kendra_experience_experience_args_doc}
/// The set of arguments for Experience.
/// {@endtemplate}
/// {@macro pulumi_kendra_experience_experience_args_doc}
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

  /// Creates a new [ExperienceArgs].
  /// [configuration] Configuration information for your Amazon Kendra experience. The provider will only perform drift detection of its value when present in a configuration. Detailed below.
  /// [description] A description for your Amazon Kendra experience.
  /// [indexId] The identifier of the index for your Amazon Kendra experience.
  /// [name] A name for your Amazon Kendra experience.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of a role with permission to access `Query API`, `QuerySuggestions API`, `SubmitFeedback API`, and `AWS SSO` that stores your user and group information. For more information, see [IAM roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  ExperienceArgs({
    ExperienceConfiguration? configuration,
    String? description,
    required String indexId,
    String? name,
    String? region,
    required String roleArn,
  }) : configuration = pulumi.Input.asOptionalInput<ExperienceConfiguration>(
         configuration,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       indexId = pulumi.Input.asInput<String>(indexId),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       roleArn = pulumi.Input.asInput<String>(roleArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration':
          ?pulumi.Input.mapOptionalInputValue<
            ExperienceConfiguration,
            Map<String, dynamic>
          >(configuration, (value) => value.toMap()),
      'description': ?description,
      'indexId': indexId,
      'name': ?name,
      'region': ?region,
      'roleArn': roleArn,
    };
  }

  factory ExperienceArgs.fromMap(Map<String, dynamic> map) {
    return ExperienceArgs(
      configuration: map['configuration'] == null
          ? null
          : ExperienceConfiguration.fromMap(
              (map['configuration'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      indexId: map['indexId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
