// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sdkvoice_voice_profile_domain_server_side_encryption_configuration.dart';

/// Input properties used for looking up and filtering SdkvoiceVoiceProfileDomain resources.
class SdkvoiceVoiceProfileDomainState {
  /// ARN of the Voice Profile Domain.
  final pulumi.Input<String>? arn;
  /// Description of Voice Profile Domain.
  final pulumi.Input<String>? description;
  /// Name of Voice Profile Domain.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration for server side encryption.
  final pulumi.Input<SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration>? serverSideEncryptionConfiguration;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [SdkvoiceVoiceProfileDomainState].
  /// [arn] ARN of the Voice Profile Domain.
  /// [description] Description of Voice Profile Domain.
  /// [name] Name of Voice Profile Domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverSideEncryptionConfiguration] Configuration for server side encryption.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  SdkvoiceVoiceProfileDomainState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration>? serverSideEncryptionConfiguration,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      serverSideEncryptionConfiguration = pulumi.Input.asOptionalInput<SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration>(serverSideEncryptionConfiguration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'serverSideEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration, Map<String, dynamic>>(serverSideEncryptionConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory SdkvoiceVoiceProfileDomainState.fromMap(Map<String, dynamic> map) {
    return SdkvoiceVoiceProfileDomainState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serverSideEncryptionConfiguration: map['serverSideEncryptionConfiguration'] == null ? null : pulumi.Output.create<SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration>(SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration.fromMap((map['serverSideEncryptionConfiguration'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

