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
    required pulumi.Output<ApplicationDefinition> definition,
    pulumi.Output<String>? description,
    required pulumi.Output<String> engineType,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<ApplicationTimeouts>? timeouts,
  }) :
      definition = pulumi.Input.asInput<ApplicationDefinition>(definition),
      description = pulumi.Input.asOptionalInput<String>(description),
      engineType = pulumi.Input.asInput<String>(engineType),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<ApplicationTimeouts>(timeouts);

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
      definition: pulumi.Output.create<ApplicationDefinition>(ApplicationDefinition.fromMap((map['definition'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      engineType: pulumi.Output.create<String>(map['engineType'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ApplicationTimeouts>(ApplicationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

