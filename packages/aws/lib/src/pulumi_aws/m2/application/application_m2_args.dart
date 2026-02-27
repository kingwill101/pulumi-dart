// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_definition/application_definition.dart';
import '../application_timeouts/application_timeouts.dart';

/// The set of arguments for Application.
class ApplicationM2Args {
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

  ApplicationM2Args({
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

  factory ApplicationM2Args.fromMap(Map<String, dynamic> map) {
    return ApplicationM2Args(
      definition:
          pulumi.Input.asInput<ApplicationDefinition>(map['definition']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      engineType: pulumi.Input.asInput<String>(map['engineType']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asOptionalInput<String>(map['roleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<ApplicationTimeouts>(map['timeouts']),
    );
  }
}
