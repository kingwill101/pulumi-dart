// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for HsmConfiguration.
class HsmConfigurationArgs {
  /// A text description of the HSM configuration to be created.
  final Input<String> description;

  /// The identifier to be assigned to the new Amazon Redshift HSM configuration.
  final Input<String> hsmConfigurationIdentifier;

  /// The IP address that the Amazon Redshift cluster must use to access the HSM.
  final Input<String> hsmIpAddress;

  /// The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.
  final Input<String> hsmPartitionName;

  /// The password required to access the HSM partition.
  final Input<String> hsmPartitionPassword;

  /// The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.
  final Input<String> hsmServerPublicCertificate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  HsmConfigurationArgs({
    required this.description,
    required this.hsmConfigurationIdentifier,
    required this.hsmIpAddress,
    required this.hsmPartitionName,
    required this.hsmPartitionPassword,
    required this.hsmServerPublicCertificate,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['hsmConfigurationIdentifier'] = hsmConfigurationIdentifier;
    map['hsmIpAddress'] = hsmIpAddress;
    map['hsmPartitionName'] = hsmPartitionName;
    map['hsmPartitionPassword'] = hsmPartitionPassword;
    map['hsmServerPublicCertificate'] = hsmServerPublicCertificate;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory HsmConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return HsmConfigurationArgs(
      description: Input.asInput<String>(map['description']),
      hsmConfigurationIdentifier:
          Input.asInput<String>(map['hsmConfigurationIdentifier']),
      hsmIpAddress: Input.asInput<String>(map['hsmIpAddress']),
      hsmPartitionName: Input.asInput<String>(map['hsmPartitionName']),
      hsmPartitionPassword: Input.asInput<String>(map['hsmPartitionPassword']),
      hsmServerPublicCertificate:
          Input.asInput<String>(map['hsmServerPublicCertificate']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
