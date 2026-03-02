// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_definition.dart';
import 'application_timeouts.dart';

/// {@template pulumi_m2_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_m2_application_application_args_doc}
class ApplicationArgs {
  /// The application definition for this application. You can specify either inline JSON or an S3 bucket location.
  final pulumi.Input<ApplicationDefinition> definition;
  /// Description of the application.
  final pulumi.Input<String>? description;
  /// Engine type must be `microfocus | bluage`.
  final pulumi.Input<String> engineType;
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
  final pulumi.Input<ApplicationTimeouts>? timeouts;

  /// Creates a new [ApplicationArgs].
  /// [definition] The application definition for this application. You can specify either inline JSON or an S3 bucket location.
  /// [description] Description of the application.
  /// [engineType] Engine type must be `microfocus | bluage`.
  /// [kmsKeyId] KMS Key to use for the Application.
  /// [name] Unique identifier of the application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of role for application to use to access AWS resources.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  ApplicationArgs({
    required this.definition,
    this.description,
    required this.engineType,
    this.kmsKeyId,
    this.name,
    this.region,
    this.roleArn,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': pulumi.Input.mapInputValue<ApplicationDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'description': ?description,
      'engineType': engineType,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ApplicationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      definition: (ApplicationDefinition.fromMap((map['definition']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      engineType: (map['engineType'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ApplicationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

