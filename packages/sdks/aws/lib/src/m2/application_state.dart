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
    this.applicationId,
    this.arn,
    this.currentVersion,
    this.definition,
    this.description,
    this.engineType,
    this.kmsKeyId,
    this.name,
    this.region,
    this.roleArn,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

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
      applicationId: map['applicationId'] == null ? null : ((map['applicationId'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      currentVersion: map['currentVersion'] == null ? null : ((map['currentVersion'] as int).input()).input(),
      definition: map['definition'] == null ? null : ((ApplicationDefinition.fromMap((map['definition']! as Map).cast<String, dynamic>())).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      engineType: map['engineType'] == null ? null : ((map['engineType'] as String).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ApplicationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

