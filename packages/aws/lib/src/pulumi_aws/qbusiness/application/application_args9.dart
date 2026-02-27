// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../application_attachments_configuration/application_attachments_configuration.dart';
import '../application_encryption_configuration/application_encryption_configuration.dart';
import '../application_timeouts/application_timeouts3.dart';

/// The set of arguments for Application.
class ApplicationArgs9 {
  /// Information about whether file upload functionality is activated or deactivated for your end user. See `attachments_configuration` below.
  final Input<ApplicationAttachmentsConfiguration> attachmentsConfiguration;

  /// Description of the Amazon Q application.
  final Input<String>? description;

  /// Name of the Amazon Q application.
  final Input<String> displayName;

  /// Information about encryption configuration. See `encryption_configuration` below.
  final Input<ApplicationEncryptionConfiguration>? encryptionConfiguration;

  /// ARN of an IAM role with permissions to access your Amazon CloudWatch logs and metrics.
  final Input<String> iamServiceRoleArn;

  /// ARN of the IAM Identity Center instance you are either creating for — or connecting to — your Amazon Q Business application.
  ///
  /// The following arguments are optional:
  final Input<String> identityCenterInstanceArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<Map<String, String>>? tags;
  final Input<ApplicationTimeouts3>? timeouts;

  ApplicationArgs9({
    required this.attachmentsConfiguration,
    this.description,
    required this.displayName,
    this.encryptionConfiguration,
    required this.iamServiceRoleArn,
    required this.identityCenterInstanceArn,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentsConfiguration'] = Input.mapInputValue<
            ApplicationAttachmentsConfiguration, Map<String, dynamic>>(
        attachmentsConfiguration, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = Input.mapOptionalInputValue<
              ApplicationEncryptionConfiguration, Map<String, dynamic>>(
          encryptionConfigurationValue, (value) => value.toMap());
    }
    map['iamServiceRoleArn'] = iamServiceRoleArn;
    map['identityCenterInstanceArn'] = identityCenterInstanceArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<ApplicationTimeouts3,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ApplicationArgs9.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs9(
      attachmentsConfiguration:
          Input.asInput<ApplicationAttachmentsConfiguration>(
              map['attachmentsConfiguration']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      encryptionConfiguration:
          Input.asOptionalInput<ApplicationEncryptionConfiguration>(
              map['encryptionConfiguration']),
      iamServiceRoleArn: Input.asInput<String>(map['iamServiceRoleArn']),
      identityCenterInstanceArn:
          Input.asInput<String>(map['identityCenterInstanceArn']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<ApplicationTimeouts3>(map['timeouts']),
    );
  }
}
