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
    this.arn,
    this.description,
    this.name,
    this.region,
    this.serverSideEncryptionConfiguration,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serverSideEncryptionConfiguration: map['serverSideEncryptionConfiguration'] == null ? null : (SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration.fromMap((map['serverSideEncryptionConfiguration'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

