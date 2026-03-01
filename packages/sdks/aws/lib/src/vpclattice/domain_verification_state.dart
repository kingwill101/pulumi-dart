// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DomainVerification resources.
class DomainVerificationState {
  /// The Amazon Resource Name (ARN) of the domain verification.
  final pulumi.Input<String>? arn;
  /// The date and time that the domain verification was created, in ISO-8601 format.
  final pulumi.Input<String>? createdAt;
  /// The domain name to verify ownership for.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? domainName;
  /// The date and time that the domain was last successfully verified, in ISO-8601 format.
  final pulumi.Input<String>? lastVerifiedTime;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The current status of the domain verification process. Valid values: `VERIFIED`, `PENDING`, `VERIFICATION_TIMED_OUT`.
  final pulumi.Input<String>? status;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The name of the TXT record that must be created for domain verification.
  final pulumi.Input<String>? txtRecordName;
  /// The value that must be added to the TXT record for domain verification.
  final pulumi.Input<String>? txtRecordValue;

  /// Creates a new [DomainVerificationState].
  /// [arn] The Amazon Resource Name (ARN) of the domain verification.
  /// [createdAt] The date and time that the domain verification was created, in ISO-8601 format.
  /// [domainName] The domain name to verify ownership for.
  /// [lastVerifiedTime] The date and time that the domain was last successfully verified, in ISO-8601 format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The current status of the domain verification process. Valid values: `VERIFIED`, `PENDING`, `VERIFICATION_TIMED_OUT`.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [txtRecordName] The name of the TXT record that must be created for domain verification.
  /// [txtRecordValue] The value that must be added to the TXT record for domain verification.
  DomainVerificationState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? lastVerifiedTime,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? txtRecordName,
    pulumi.Output<String>? txtRecordValue,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      lastVerifiedTime = pulumi.Input.asOptionalInput<String>(lastVerifiedTime),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      txtRecordName = pulumi.Input.asOptionalInput<String>(txtRecordName),
      txtRecordValue = pulumi.Input.asOptionalInput<String>(txtRecordValue);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'domainName': ?domainName,
      'lastVerifiedTime': ?lastVerifiedTime,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'txtRecordName': ?txtRecordName,
      'txtRecordValue': ?txtRecordValue,
    };
  }

  factory DomainVerificationState.fromMap(Map<String, dynamic> map) {
    return DomainVerificationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      lastVerifiedTime: map['lastVerifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastVerifiedTime'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      txtRecordName: map['txtRecordName'] == null ? null : pulumi.Output.create<String>(map['txtRecordName'] as String),
      txtRecordValue: map['txtRecordValue'] == null ? null : pulumi.Output.create<String>(map['txtRecordValue'] as String),
    );
  }
}

