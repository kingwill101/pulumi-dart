// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_attachments_configuration.dart';
import 'application_encryption_configuration.dart';
import 'application_timeouts.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// ARN of the Q Business application.
  final pulumi.Input<String>? arn;

  /// Information about whether file upload functionality is activated or deactivated for your end user. See `attachments_configuration` below.
  final pulumi.Input<ApplicationAttachmentsConfiguration>?
  attachmentsConfiguration;

  /// Description of the Amazon Q application.
  final pulumi.Input<String>? description;

  /// Name of the Amazon Q application.
  final pulumi.Input<String>? displayName;

  /// Information about encryption configuration. See `encryption_configuration` below.
  final pulumi.Input<ApplicationEncryptionConfiguration>?
  encryptionConfiguration;

  /// ARN of an IAM role with permissions to access your Amazon CloudWatch logs and metrics.
  final pulumi.Input<String>? iamServiceRoleArn;

  /// ARN of the AWS IAM Identity Center application attached to your Amazon Q Business application.
  final pulumi.Input<String>? identityCenterApplicationArn;

  /// ARN of the IAM Identity Center instance you are either creating for — or connecting to — your Amazon Q Business application.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? identityCenterInstanceArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ApplicationTimeouts>? timeouts;

  /// Creates a new [ApplicationState].
  /// [arn] ARN of the Q Business application.
  /// [attachmentsConfiguration] Information about whether file upload functionality is activated or deactivated for your end user. See `attachments_configuration` below.
  /// [description] Description of the Amazon Q application.
  /// [displayName] Name of the Amazon Q application.
  /// [encryptionConfiguration] Information about encryption configuration. See `encryption_configuration` below.
  /// [iamServiceRoleArn] ARN of an IAM role with permissions to access your Amazon CloudWatch logs and metrics.
  /// [identityCenterApplicationArn] ARN of the AWS IAM Identity Center application attached to your Amazon Q Business application.
  /// [identityCenterInstanceArn] ARN of the IAM Identity Center instance you are either creating for — or connecting to — your Amazon Q Business application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  ApplicationState({
    this.arn,
    this.attachmentsConfiguration,
    this.description,
    this.displayName,
    this.encryptionConfiguration,
    this.iamServiceRoleArn,
    this.identityCenterApplicationArn,
    this.identityCenterInstanceArn,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attachmentsConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationAttachmentsConfiguration,
            Map<String, dynamic>
          >(attachmentsConfiguration, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'encryptionConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationEncryptionConfiguration,
            Map<String, dynamic>
          >(encryptionConfiguration, (value) => value.toMap()),
      'iamServiceRoleArn': ?iamServiceRoleArn,
      'identityCenterApplicationArn': ?identityCenterApplicationArn,
      'identityCenterInstanceArn': ?identityCenterInstanceArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      attachmentsConfiguration: (() {
        final guardedValue = map['attachmentsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationAttachmentsConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionConfiguration: (() {
        final guardedValue = map['encryptionConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationEncryptionConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      iamServiceRoleArn: (() {
        final guardedValue = map['iamServiceRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identityCenterApplicationArn: (() {
        final guardedValue = map['identityCenterApplicationArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identityCenterInstanceArn: (() {
        final guardedValue = map['identityCenterInstanceArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
