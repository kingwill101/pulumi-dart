// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../application_definition/application_definition.dart';
import '../application_timeouts/application_timeouts.dart';

/// The set of arguments for Application.
class ApplicationArgs7 {
  /// The application definition for this application. You can specify either inline JSON or an S3 bucket location.
  final Input<ApplicationDefinition> definition;

  /// Description of the application.
  final Input<String>? description;

  /// Engine type must be `microfocus | bluage`.
  final Input<String> engineType;

  /// KMS Key to use for the Application.
  final Input<String>? kmsKeyId;

  /// Unique identifier of the application.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of role for application to use to access AWS resources.
  final Input<String>? roleArn;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<ApplicationTimeouts>? timeouts;

  ApplicationArgs7({
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
        Input.mapInputValue<ApplicationDefinition, Map<String, dynamic>>(
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
      map['timeouts'] = Input.mapOptionalInputValue<ApplicationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ApplicationArgs7.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs7(
      definition: Input.asInput<ApplicationDefinition>(map['definition']),
      description: Input.asOptionalInput<String>(map['description']),
      engineType: Input.asInput<String>(map['engineType']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asOptionalInput<String>(map['roleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<ApplicationTimeouts>(map['timeouts']),
    );
  }
}
