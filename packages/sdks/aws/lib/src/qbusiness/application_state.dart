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
  final pulumi.Input<ApplicationAttachmentsConfiguration>? attachmentsConfiguration;
  /// Description of the Amazon Q application.
  final pulumi.Input<String>? description;
  /// Name of the Amazon Q application.
  final pulumi.Input<String>? displayName;
  /// Information about encryption configuration. See `encryption_configuration` below.
  final pulumi.Input<ApplicationEncryptionConfiguration>? encryptionConfiguration;
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
    pulumi.Output<String>? arn,
    pulumi.Output<ApplicationAttachmentsConfiguration>? attachmentsConfiguration,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<ApplicationEncryptionConfiguration>? encryptionConfiguration,
    pulumi.Output<String>? iamServiceRoleArn,
    pulumi.Output<String>? identityCenterApplicationArn,
    pulumi.Output<String>? identityCenterInstanceArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ApplicationTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      attachmentsConfiguration = pulumi.Input.asOptionalInput<ApplicationAttachmentsConfiguration>(attachmentsConfiguration),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      encryptionConfiguration = pulumi.Input.asOptionalInput<ApplicationEncryptionConfiguration>(encryptionConfiguration),
      iamServiceRoleArn = pulumi.Input.asOptionalInput<String>(iamServiceRoleArn),
      identityCenterApplicationArn = pulumi.Input.asOptionalInput<String>(identityCenterApplicationArn),
      identityCenterInstanceArn = pulumi.Input.asOptionalInput<String>(identityCenterInstanceArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ApplicationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attachmentsConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationAttachmentsConfiguration, Map<String, dynamic>>(attachmentsConfiguration, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'iamServiceRoleArn': ?iamServiceRoleArn,
      'identityCenterApplicationArn': ?identityCenterApplicationArn,
      'identityCenterInstanceArn': ?identityCenterInstanceArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ApplicationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      attachmentsConfiguration: map['attachmentsConfiguration'] == null ? null : pulumi.Output.create<ApplicationAttachmentsConfiguration>(ApplicationAttachmentsConfiguration.fromMap((map['attachmentsConfiguration'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : pulumi.Output.create<ApplicationEncryptionConfiguration>(ApplicationEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>())),
      iamServiceRoleArn: map['iamServiceRoleArn'] == null ? null : pulumi.Output.create<String>(map['iamServiceRoleArn'] as String),
      identityCenterApplicationArn: map['identityCenterApplicationArn'] == null ? null : pulumi.Output.create<String>(map['identityCenterApplicationArn'] as String),
      identityCenterInstanceArn: map['identityCenterInstanceArn'] == null ? null : pulumi.Output.create<String>(map['identityCenterInstanceArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ApplicationTimeouts>(ApplicationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

