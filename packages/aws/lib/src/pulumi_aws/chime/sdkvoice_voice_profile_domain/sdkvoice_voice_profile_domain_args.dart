// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../sdkvoice_voice_profile_domain_server_side_encryption_configuration/sdkvoice_voice_profile_domain_server_side_encryption_configuration.dart';

/// The set of arguments for SdkvoiceVoiceProfileDomain.
class SdkvoiceVoiceProfileDomainArgs {
  /// Description of Voice Profile Domain.
  final pulumi.Input<String>? description;

  /// Name of Voice Profile Domain.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration for server side encryption.
  final pulumi
      .Input<SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration>
      serverSideEncryptionConfiguration;
  final pulumi.Input<Map<String, String>>? tags;

  SdkvoiceVoiceProfileDomainArgs({
    this.description,
    this.name,
    this.region,
    required this.serverSideEncryptionConfiguration,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serverSideEncryptionConfiguration'] = pulumi.Input.mapInputValue<
            SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration,
            Map<String, dynamic>>(
        serverSideEncryptionConfiguration, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory SdkvoiceVoiceProfileDomainArgs.fromMap(Map<String, dynamic> map) {
    return SdkvoiceVoiceProfileDomainArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serverSideEncryptionConfiguration: pulumi.Input.asInput<
              SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration>(
          map['serverSideEncryptionConfiguration']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
