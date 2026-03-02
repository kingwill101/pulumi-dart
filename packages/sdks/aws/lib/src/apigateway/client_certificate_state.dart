// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClientCertificate resources.
class ClientCertificateState {
  /// ARN
  final pulumi.Input<String>? arn;
  /// Date when the client certificate was created.
  final pulumi.Input<String>? createdDate;
  /// Description of the client certificate.
  final pulumi.Input<String>? description;
  /// Date when the client certificate will expire.
  final pulumi.Input<String>? expirationDate;
  /// The PEM-encoded public key of the client certificate.
  final pulumi.Input<String>? pemEncodedCertificate;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ClientCertificateState].
  /// [arn] ARN
  /// [createdDate] Date when the client certificate was created.
  /// [description] Description of the client certificate.
  /// [expirationDate] Date when the client certificate will expire.
  /// [pemEncodedCertificate] The PEM-encoded public key of the client certificate.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ClientCertificateState({
    this.arn,
    this.createdDate,
    this.description,
    this.expirationDate,
    this.pemEncodedCertificate,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdDate': ?createdDate,
      'description': ?description,
      'expirationDate': ?expirationDate,
      'pemEncodedCertificate': ?pemEncodedCertificate,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ClientCertificateState.fromMap(Map<String, dynamic> map) {
    return ClientCertificateState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      createdDate: map['createdDate'] == null ? null : ((map['createdDate'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      expirationDate: map['expirationDate'] == null ? null : ((map['expirationDate'] as String).input()).input(),
      pemEncodedCertificate: map['pemEncodedCertificate'] == null ? null : ((map['pemEncodedCertificate'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

