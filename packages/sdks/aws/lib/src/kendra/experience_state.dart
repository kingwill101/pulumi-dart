// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experience_configuration.dart';
import 'experience_endpoint.dart';

/// Input properties used for looking up and filtering Experience resources.
class ExperienceState {
  /// ARN of the Experience.
  final pulumi.Input<String>? arn;
  /// Configuration information for your Amazon Kendra experience. The provider will only perform drift detection of its value when present in a configuration. Detailed below.
  ///
  /// > **NOTE:** By default of the AWS Kendra API, updates to an existing `aws.kendra.Experience` resource (e.g. updating the `name`) will also update the `configuration.content_source_configuration.direct_put_content` parameter to `false` if not already provided.
  final pulumi.Input<ExperienceConfiguration>? configuration;
  /// A description for your Amazon Kendra experience.
  final pulumi.Input<String>? description;
  /// Shows the endpoint URLs for your Amazon Kendra experiences. The URLs are unique and fully hosted by AWS.
  final pulumi.Input<List<ExperienceEndpoint>>? endpoints;
  /// The unique identifier of the experience.
  final pulumi.Input<String>? experienceId;
  /// The identifier of the index for your Amazon Kendra experience.
  final pulumi.Input<String>? indexId;
  /// A name for your Amazon Kendra experience.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of a role with permission to access `Query API`, `QuerySuggestions API`, `SubmitFeedback API`, and `AWS SSO` that stores your user and group information. For more information, see [IAM roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? roleArn;
  /// The current processing status of your Amazon Kendra experience.
  final pulumi.Input<String>? status;

  /// Creates a new [ExperienceState].
  /// [arn] ARN of the Experience.
  /// [configuration] Configuration information for your Amazon Kendra experience. The provider will only perform drift detection of its value when present in a configuration. Detailed below.
  /// [description] A description for your Amazon Kendra experience.
  /// [endpoints] Shows the endpoint URLs for your Amazon Kendra experiences. The URLs are unique and fully hosted by AWS.
  /// [experienceId] The unique identifier of the experience.
  /// [indexId] The identifier of the index for your Amazon Kendra experience.
  /// [name] A name for your Amazon Kendra experience.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of a role with permission to access `Query API`, `QuerySuggestions API`, `SubmitFeedback API`, and `AWS SSO` that stores your user and group information. For more information, see [IAM roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  /// [status] The current processing status of your Amazon Kendra experience.
  ExperienceState({
    pulumi.Output<String>? arn,
    pulumi.Output<ExperienceConfiguration>? configuration,
    pulumi.Output<String>? description,
    pulumi.Output<List<ExperienceEndpoint>>? endpoints,
    pulumi.Output<String>? experienceId,
    pulumi.Output<String>? indexId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? status,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      configuration = pulumi.Input.asOptionalInput<ExperienceConfiguration>(configuration),
      description = pulumi.Input.asOptionalInput<String>(description),
      endpoints = pulumi.Input.asOptionalInput<List<ExperienceEndpoint>>(endpoints),
      experienceId = pulumi.Input.asOptionalInput<String>(experienceId),
      indexId = pulumi.Input.asOptionalInput<String>(indexId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configuration': ?pulumi.Input.mapOptionalInputValue<ExperienceConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'description': ?description,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<ExperienceEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<ExperienceEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'experienceId': ?experienceId,
      'indexId': ?indexId,
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'status': ?status,
    };
  }

  factory ExperienceState.fromMap(Map<String, dynamic> map) {
    return ExperienceState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      configuration: map['configuration'] == null ? null : pulumi.Output.create<ExperienceConfiguration>(ExperienceConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<ExperienceEndpoint>>(pulumi.Input.decodeList<ExperienceEndpoint>(map['endpoints'], (value) => ExperienceEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      experienceId: map['experienceId'] == null ? null : pulumi.Output.create<String>(map['experienceId'] as String),
      indexId: map['indexId'] == null ? null : pulumi.Output.create<String>(map['indexId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

