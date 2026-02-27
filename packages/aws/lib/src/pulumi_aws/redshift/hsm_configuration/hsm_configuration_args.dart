// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for HsmConfiguration.
class HsmConfigurationArgs {
  /// A text description of the HSM configuration to be created.
  final pulumi.Input<String> description;

  /// The identifier to be assigned to the new Amazon Redshift HSM configuration.
  final pulumi.Input<String> hsmConfigurationIdentifier;

  /// The IP address that the Amazon Redshift cluster must use to access the HSM.
  final pulumi.Input<String> hsmIpAddress;

  /// The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.
  final pulumi.Input<String> hsmPartitionName;

  /// The password required to access the HSM partition.
  final pulumi.Input<String> hsmPartitionPassword;

  /// The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.
  final pulumi.Input<String> hsmServerPublicCertificate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

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
      description: pulumi.Input.asInput<String>(map['description']),
      hsmConfigurationIdentifier:
          pulumi.Input.asInput<String>(map['hsmConfigurationIdentifier']),
      hsmIpAddress: pulumi.Input.asInput<String>(map['hsmIpAddress']),
      hsmPartitionName: pulumi.Input.asInput<String>(map['hsmPartitionName']),
      hsmPartitionPassword:
          pulumi.Input.asInput<String>(map['hsmPartitionPassword']),
      hsmServerPublicCertificate:
          pulumi.Input.asInput<String>(map['hsmServerPublicCertificate']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
