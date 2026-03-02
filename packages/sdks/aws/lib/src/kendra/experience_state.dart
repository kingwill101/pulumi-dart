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
    this.arn,
    this.configuration,
    this.description,
    this.endpoints,
    this.experienceId,
    this.indexId,
    this.name,
    this.region,
    this.roleArn,
    this.status,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      configuration: map['configuration'] == null ? null : ((ExperienceConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      endpoints: map['endpoints'] == null ? null : ((pulumi.Input.decodeList<ExperienceEndpoint>(map['endpoints']!, (value) => ExperienceEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      experienceId: map['experienceId'] == null ? null : ((map['experienceId'] as String).input()).input(),
      indexId: map['indexId'] == null ? null : ((map['indexId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
    );
  }
}

