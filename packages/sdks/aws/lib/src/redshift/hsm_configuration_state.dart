// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HsmConfiguration resources.
class HsmConfigurationState {
  /// Amazon Resource Name (ARN) of the Hsm Client Certificate.
  final pulumi.Input<String>? arn;
  /// A text description of the HSM configuration to be created.
  final pulumi.Input<String>? description;
  /// The identifier to be assigned to the new Amazon Redshift HSM configuration.
  final pulumi.Input<String>? hsmConfigurationIdentifier;
  /// The IP address that the Amazon Redshift cluster must use to access the HSM.
  final pulumi.Input<String>? hsmIpAddress;
  /// The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.
  final pulumi.Input<String>? hsmPartitionName;
  /// The password required to access the HSM partition.
  final pulumi.Input<String>? hsmPartitionPassword;
  /// The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.
  final pulumi.Input<String>? hsmServerPublicCertificate;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [HsmConfigurationState].
  /// [arn] Amazon Resource Name (ARN) of the Hsm Client Certificate.
  /// [description] A text description of the HSM configuration to be created.
  /// [hsmConfigurationIdentifier] The identifier to be assigned to the new Amazon Redshift HSM configuration.
  /// [hsmIpAddress] The IP address that the Amazon Redshift cluster must use to access the HSM.
  /// [hsmPartitionName] The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.
  /// [hsmPartitionPassword] The password required to access the HSM partition.
  /// [hsmServerPublicCertificate] The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  HsmConfigurationState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? hsmConfigurationIdentifier,
    pulumi.Output<String>? hsmIpAddress,
    pulumi.Output<String>? hsmPartitionName,
    pulumi.Output<String>? hsmPartitionPassword,
    pulumi.Output<String>? hsmServerPublicCertificate,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      hsmConfigurationIdentifier = pulumi.Input.asOptionalInput<String>(hsmConfigurationIdentifier),
      hsmIpAddress = pulumi.Input.asOptionalInput<String>(hsmIpAddress),
      hsmPartitionName = pulumi.Input.asOptionalInput<String>(hsmPartitionName),
      hsmPartitionPassword = pulumi.Input.asOptionalInput<String>(hsmPartitionPassword),
      hsmServerPublicCertificate = pulumi.Input.asOptionalInput<String>(hsmServerPublicCertificate),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'hsmConfigurationIdentifier': ?hsmConfigurationIdentifier,
      'hsmIpAddress': ?hsmIpAddress,
      'hsmPartitionName': ?hsmPartitionName,
      'hsmPartitionPassword': ?hsmPartitionPassword,
      'hsmServerPublicCertificate': ?hsmServerPublicCertificate,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory HsmConfigurationState.fromMap(Map<String, dynamic> map) {
    return HsmConfigurationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      hsmConfigurationIdentifier: map['hsmConfigurationIdentifier'] == null ? null : pulumi.Output.create<String>(map['hsmConfigurationIdentifier'] as String),
      hsmIpAddress: map['hsmIpAddress'] == null ? null : pulumi.Output.create<String>(map['hsmIpAddress'] as String),
      hsmPartitionName: map['hsmPartitionName'] == null ? null : pulumi.Output.create<String>(map['hsmPartitionName'] as String),
      hsmPartitionPassword: map['hsmPartitionPassword'] == null ? null : pulumi.Output.create<String>(map['hsmPartitionPassword'] as String),
      hsmServerPublicCertificate: map['hsmServerPublicCertificate'] == null ? null : pulumi.Output.create<String>(map['hsmServerPublicCertificate'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

