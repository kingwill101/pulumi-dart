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
    required ApplicationDefinition definition,
    String? description,
    required String engineType,
    String? kmsKeyId,
    String? name,
    String? region,
    String? roleArn,
    Map<String, String>? tags,
    ApplicationTimeouts? timeouts,
  })  : definition = pulumi.Input.asInput<ApplicationDefinition>(definition),
        description = pulumi.Input.asOptionalInput<String>(description),
        engineType = pulumi.Input.asInput<String>(engineType),
        kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts = pulumi.Input.asOptionalInput<ApplicationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['definition'] =
        pulumi.Input.mapInputValue<ApplicationDefinition, Map<String, dynamic>>(
            definition, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['engineType'] = engineType;
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<ApplicationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      definition: ApplicationDefinition.fromMap(
          (map['definition'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      engineType: map['engineType'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : ApplicationTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
