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
    this.arn,
    this.createdAt,
    this.domainName,
    this.lastVerifiedTime,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
    this.txtRecordName,
    this.txtRecordValue,
  });

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
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastVerifiedTime: (() {
        final guardedValue = map['lastVerifiedTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      txtRecordName: (() {
        final guardedValue = map['txtRecordName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      txtRecordValue: (() {
        final guardedValue = map['txtRecordValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
