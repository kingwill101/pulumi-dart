// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_attachments_configuration.dart';
import 'application_encryption_configuration.dart';
import 'application_timeouts.dart';

/// {@template pulumi_qbusiness_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_qbusiness_application_application_args_doc}
class ApplicationArgs {
  /// Information about whether file upload functionality is activated or deactivated for your end user. See `attachments_configuration` below.
  final pulumi.Input<ApplicationAttachmentsConfiguration> attachmentsConfiguration;
  /// Description of the Amazon Q application.
  final pulumi.Input<String>? description;
  /// Name of the Amazon Q application.
  final pulumi.Input<String> displayName;
  /// Information about encryption configuration. See `encryption_configuration` below.
  final pulumi.Input<ApplicationEncryptionConfiguration>? encryptionConfiguration;
  /// ARN of an IAM role with permissions to access your Amazon CloudWatch logs and metrics.
  final pulumi.Input<String> iamServiceRoleArn;
  /// ARN of the IAM Identity Center instance you are either creating for — or connecting to — your Amazon Q Business application.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> identityCenterInstanceArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ApplicationTimeouts>? timeouts;

  /// Creates a new [ApplicationArgs].
  /// [attachmentsConfiguration] Information about whether file upload functionality is activated or deactivated for your end user. See `attachments_configuration` below.
  /// [description] Description of the Amazon Q application.
  /// [displayName] Name of the Amazon Q application.
  /// [encryptionConfiguration] Information about encryption configuration. See `encryption_configuration` below.
  /// [iamServiceRoleArn] ARN of an IAM role with permissions to access your Amazon CloudWatch logs and metrics.
  /// [identityCenterInstanceArn] ARN of the IAM Identity Center instance you are either creating for — or connecting to — your Amazon Q Business application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  /// [timeouts] Optional.
  ApplicationArgs({
    required pulumi.Output<ApplicationAttachmentsConfiguration> attachmentsConfiguration,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<ApplicationEncryptionConfiguration>? encryptionConfiguration,
    required pulumi.Output<String> iamServiceRoleArn,
    required pulumi.Output<String> identityCenterInstanceArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<ApplicationTimeouts>? timeouts,
  }) :
      attachmentsConfiguration = pulumi.Input.asInput<ApplicationAttachmentsConfiguration>(attachmentsConfiguration),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      encryptionConfiguration = pulumi.Input.asOptionalInput<ApplicationEncryptionConfiguration>(encryptionConfiguration),
      iamServiceRoleArn = pulumi.Input.asInput<String>(iamServiceRoleArn),
      identityCenterInstanceArn = pulumi.Input.asInput<String>(identityCenterInstanceArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<ApplicationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentsConfiguration': pulumi.Input.mapInputValue<ApplicationAttachmentsConfiguration, Map<String, dynamic>>(attachmentsConfiguration, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'iamServiceRoleArn': iamServiceRoleArn,
      'identityCenterInstanceArn': identityCenterInstanceArn,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ApplicationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      attachmentsConfiguration: pulumi.Output.create<ApplicationAttachmentsConfiguration>(ApplicationAttachmentsConfiguration.fromMap((map['attachmentsConfiguration'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : pulumi.Output.create<ApplicationEncryptionConfiguration>(ApplicationEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>())),
      iamServiceRoleArn: pulumi.Output.create<String>(map['iamServiceRoleArn'] as String),
      identityCenterInstanceArn: pulumi.Output.create<String>(map['identityCenterInstanceArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ApplicationTimeouts>(ApplicationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

