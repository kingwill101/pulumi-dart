// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_hsm_configuration_hsm_configuration_args_doc}
/// The set of arguments for HsmConfiguration.
/// {@endtemplate}
/// {@macro pulumi_redshift_hsm_configuration_hsm_configuration_args_doc}
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

  /// Creates a new [HsmConfigurationArgs].
  /// [description] A text description of the HSM configuration to be created.
  /// [hsmConfigurationIdentifier] The identifier to be assigned to the new Amazon Redshift HSM configuration.
  /// [hsmIpAddress] The IP address that the Amazon Redshift cluster must use to access the HSM.
  /// [hsmPartitionName] The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.
  /// [hsmPartitionPassword] The password required to access the HSM partition.
  /// [hsmServerPublicCertificate] The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  HsmConfigurationArgs({
    required pulumi.Output<String> description,
    required pulumi.Output<String> hsmConfigurationIdentifier,
    required pulumi.Output<String> hsmIpAddress,
    required pulumi.Output<String> hsmPartitionName,
    required pulumi.Output<String> hsmPartitionPassword,
    required pulumi.Output<String> hsmServerPublicCertificate,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asInput<String>(description),
      hsmConfigurationIdentifier = pulumi.Input.asInput<String>(hsmConfigurationIdentifier),
      hsmIpAddress = pulumi.Input.asInput<String>(hsmIpAddress),
      hsmPartitionName = pulumi.Input.asInput<String>(hsmPartitionName),
      hsmPartitionPassword = pulumi.Input.asInput<String>(hsmPartitionPassword),
      hsmServerPublicCertificate = pulumi.Input.asInput<String>(hsmServerPublicCertificate),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'hsmConfigurationIdentifier': hsmConfigurationIdentifier,
      'hsmIpAddress': hsmIpAddress,
      'hsmPartitionName': hsmPartitionName,
      'hsmPartitionPassword': hsmPartitionPassword,
      'hsmServerPublicCertificate': hsmServerPublicCertificate,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory HsmConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return HsmConfigurationArgs(
      description: pulumi.Output.create<String>(map['description'] as String),
      hsmConfigurationIdentifier: pulumi.Output.create<String>(map['hsmConfigurationIdentifier'] as String),
      hsmIpAddress: pulumi.Output.create<String>(map['hsmIpAddress'] as String),
      hsmPartitionName: pulumi.Output.create<String>(map['hsmPartitionName'] as String),
      hsmPartitionPassword: pulumi.Output.create<String>(map['hsmPartitionPassword'] as String),
      hsmServerPublicCertificate: pulumi.Output.create<String>(map['hsmServerPublicCertificate'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

