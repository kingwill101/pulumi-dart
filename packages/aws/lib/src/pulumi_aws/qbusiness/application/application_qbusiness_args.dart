// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_attachments_configuration/application_attachments_configuration.dart';
import '../application_encryption_configuration/application_encryption_configuration.dart';
import '../application_timeouts/application_timeouts_qbusiness.dart';

/// The set of arguments for Application.
class ApplicationQbusinessArgs {
  /// Information about whether file upload functionality is activated or deactivated for your end user. See `attachments_configuration` below.
  final pulumi.Input<ApplicationAttachmentsConfiguration>
      attachmentsConfiguration;

  /// Description of the Amazon Q application.
  final pulumi.Input<String>? description;

  /// Name of the Amazon Q application.
  final pulumi.Input<String> displayName;

  /// Information about encryption configuration. See `encryption_configuration` below.
  final pulumi.Input<ApplicationEncryptionConfiguration>?
      encryptionConfiguration;

  /// ARN of an IAM role with permissions to access your Amazon CloudWatch logs and metrics.
  final pulumi.Input<String> iamServiceRoleArn;

  /// ARN of the IAM Identity Center instance you are either creating for — or connecting to — your Amazon Q Business application.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> identityCenterInstanceArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ApplicationTimeoutsQbusiness>? timeouts;

  ApplicationQbusinessArgs({
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
    map['attachmentsConfiguration'] = pulumi.Input.mapInputValue<
            ApplicationAttachmentsConfiguration, Map<String, dynamic>>(
        attachmentsConfiguration, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = pulumi.Input.mapOptionalInputValue<
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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ApplicationTimeoutsQbusiness,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ApplicationQbusinessArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationQbusinessArgs(
      attachmentsConfiguration:
          pulumi.Input.asInput<ApplicationAttachmentsConfiguration>(
              map['attachmentsConfiguration']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      encryptionConfiguration:
          pulumi.Input.asOptionalInput<ApplicationEncryptionConfiguration>(
              map['encryptionConfiguration']),
      iamServiceRoleArn: pulumi.Input.asInput<String>(map['iamServiceRoleArn']),
      identityCenterInstanceArn:
          pulumi.Input.asInput<String>(map['identityCenterInstanceArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<ApplicationTimeoutsQbusiness>(
          map['timeouts']),
    );
  }
}
