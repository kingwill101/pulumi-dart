// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sdkvoice_voice_profile_domain_server_side_encryption_configuration.dart';

/// {@template pulumi_chime_sdkvoice_voice_profile_domain_sdkvoice_voice_profile_domain_args_doc}
/// The set of arguments for SdkvoiceVoiceProfileDomain.
/// {@endtemplate}
/// {@macro pulumi_chime_sdkvoice_voice_profile_domain_sdkvoice_voice_profile_domain_args_doc}
class SdkvoiceVoiceProfileDomainArgs {
  /// Description of Voice Profile Domain.
  final pulumi.Input<String>? description;
  /// Name of Voice Profile Domain.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration for server side encryption.
  final pulumi.Input<SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration> serverSideEncryptionConfiguration;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SdkvoiceVoiceProfileDomainArgs].
  /// [description] Description of Voice Profile Domain.
  /// [name] Name of Voice Profile Domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverSideEncryptionConfiguration] Configuration for server side encryption.
  /// [tags] Optional.
  SdkvoiceVoiceProfileDomainArgs({
    String? description,
    String? name,
    String? region,
    required SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration serverSideEncryptionConfiguration,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      serverSideEncryptionConfiguration = pulumi.Input.asInput<SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration>(serverSideEncryptionConfiguration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'serverSideEncryptionConfiguration': pulumi.Input.mapInputValue<SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration, Map<String, dynamic>>(serverSideEncryptionConfiguration, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory SdkvoiceVoiceProfileDomainArgs.fromMap(Map<String, dynamic> map) {
    return SdkvoiceVoiceProfileDomainArgs(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serverSideEncryptionConfiguration: SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration.fromMap((map['serverSideEncryptionConfiguration'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

