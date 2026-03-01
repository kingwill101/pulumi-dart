// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_definition.dart';
import 'application_timeouts.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// Id of the Application.
  final pulumi.Input<String>? applicationId;
  /// ARN of the Application.
  final pulumi.Input<String>? arn;
  /// Current version of the application deployed.
  final pulumi.Input<int>? currentVersion;
  /// The application definition for this application. You can specify either inline JSON or an S3 bucket location.
  final pulumi.Input<ApplicationDefinition>? definition;
  /// Description of the application.
  final pulumi.Input<String>? description;
  /// Engine type must be `microfocus | bluage`.
  final pulumi.Input<String>? engineType;
  /// KMS Key to use for the Application.
  final pulumi.Input<String>? kmsKeyId;
  /// Unique identifier of the application.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of role for application to use to access AWS resources.
  final pulumi.Input<String>? roleArn;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ApplicationTimeouts>? timeouts;

  /// Creates a new [ApplicationState].
  /// [applicationId] Id of the Application.
  /// [arn] ARN of the Application.
  /// [currentVersion] Current version of the application deployed.
  /// [definition] The application definition for this application. You can specify either inline JSON or an S3 bucket location.
  /// [description] Description of the application.
  /// [engineType] Engine type must be `microfocus | bluage`.
  /// [kmsKeyId] KMS Key to use for the Application.
  /// [name] Unique identifier of the application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of role for application to use to access AWS resources.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  ApplicationState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? arn,
    pulumi.Output<int>? currentVersion,
    pulumi.Output<ApplicationDefinition>? definition,
    pulumi.Output<String>? description,
    pulumi.Output<String>? engineType,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ApplicationTimeouts>? timeouts,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      currentVersion = pulumi.Input.asOptionalInput<int>(currentVersion),
      definition = pulumi.Input.asOptionalInput<ApplicationDefinition>(definition),
      description = pulumi.Input.asOptionalInput<String>(description),
      engineType = pulumi.Input.asOptionalInput<String>(engineType),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ApplicationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'arn': ?arn,
      'currentVersion': ?currentVersion,
      'definition': ?pulumi.Input.mapOptionalInputValue<ApplicationDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'description': ?description,
      'engineType': ?engineType,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ApplicationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      currentVersion: map['currentVersion'] == null ? null : pulumi.Output.create<int>(map['currentVersion'] as int),
      definition: map['definition'] == null ? null : pulumi.Output.create<ApplicationDefinition>(ApplicationDefinition.fromMap((map['definition'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      engineType: map['engineType'] == null ? null : pulumi.Output.create<String>(map['engineType'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ApplicationTimeouts>(ApplicationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

