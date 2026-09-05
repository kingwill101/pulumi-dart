// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDistribution.
class GetDistributionResult {
  /// List that contains information about CNAMEs (alternate domain names), if any, for this distribution.
  final List<String>? aliases;
  /// ID of the Anycast static IP list that is associated with the distribution, if any.
  final String? anycastIpListId;
  /// ARN for the distribution. For example: arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where 123456789012 is your AWS account ID.
  final String? arn;
  /// Domain name corresponding to the distribution. For
  /// example: `d604721fxaaqy9.cloudfront.net`.
  final String? domainName;
  final bool? enabled;
  /// Current version of the distribution's information. For example:
  /// `E2QWRUHAPOMQZL`.
  final String? etag;
  /// CloudFront Route 53 zone ID that can be used to
  /// route an [Alias Resource Record Set][7] to. This attribute is simply an
  /// alias for the zone ID `Z2FDTNDATAQYW2`.
  final String? hostedZoneId;
  /// Identifier for the distribution. For example: `EDFDVBD632BHDS5`.
  final String? id;
  /// The number of invalidation batches
  /// currently in progress.
  final int? inProgressValidationBatches;
  /// Date and time the distribution was last modified.
  final String? lastModifiedTime;
  /// Current status of the distribution. `Deployed` if the
  /// distribution's information is fully propagated throughout the Amazon
  /// CloudFront system.
  final String? status;
  final Map<String, String>? tags;
  /// AWS WAF web ACL associated with this distribution.
  final String? webAclId;

  /// Creates a new [GetDistributionResult].
  /// [aliases] List that contains information about CNAMEs (alternate domain names), if any, for this distribution.
  /// [anycastIpListId] ID of the Anycast static IP list that is associated with the distribution, if any.
  /// [arn] ARN for the distribution. For example: arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where 123456789012 is your AWS account ID.
  /// [domainName] Domain name corresponding to the distribution. For
  /// [enabled] Optional.
  /// [etag] Current version of the distribution's information. For example:
  /// [hostedZoneId] CloudFront Route 53 zone ID that can be used to
  /// [id] Identifier for the distribution. For example: `EDFDVBD632BHDS5`.
  /// [inProgressValidationBatches] The number of invalidation batches
  /// [lastModifiedTime] Date and time the distribution was last modified.
  /// [status] Current status of the distribution. `Deployed` if the
  /// [tags] Optional.
  /// [webAclId] AWS WAF web ACL associated with this distribution.
  const GetDistributionResult({
    this.aliases,
    this.anycastIpListId,
    this.arn,
    this.domainName,
    this.enabled,
    this.etag,
    this.hostedZoneId,
    this.id,
    this.inProgressValidationBatches,
    this.lastModifiedTime,
    this.status,
    this.tags,
    this.webAclId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'anycastIpListId': ?anycastIpListId,
      'arn': ?arn,
      'domainName': ?domainName,
      'enabled': ?enabled,
      'etag': ?etag,
      'hostedZoneId': ?hostedZoneId,
      'id': ?id,
      'inProgressValidationBatches': ?inProgressValidationBatches,
      'lastModifiedTime': ?lastModifiedTime,
      'status': ?status,
      'tags': ?tags,
      'webAclId': ?webAclId,
    };
  }

  factory GetDistributionResult.fromMap(Map<String, dynamic> map) {
    return GetDistributionResult(
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      anycastIpListId: (() { final guardedValue = map['anycastIpListId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostedZoneId: (() { final guardedValue = map['hostedZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inProgressValidationBatches: (() { final guardedValue = map['inProgressValidationBatches']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      webAclId: (() { final guardedValue = map['webAclId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
