// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDistribution.
class GetDistributionResult {
  /// List that contains information about CNAMEs (alternate domain names), if any, for this distribution.
  final List<String> aliases;
  /// ID of the Anycast static IP list that is associated with the distribution, if any.
  final String anycastIpListId;
  /// ARN (Amazon Resource Name) for the distribution. For example: arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where 123456789012 is your AWS account ID.
  final String arn;
  /// Domain name corresponding to the distribution. For
  /// example: `d604721fxaaqy9.cloudfront.net`.
  final String domainName;
  final bool enabled;
  /// Current version of the distribution's information. For example:
  /// `E2QWRUHAPOMQZL`.
  final String etag;
  /// CloudFront Route 53 zone ID that can be used to
  /// route an [Alias Resource Record Set][7] to. This attribute is simply an
  /// alias for the zone ID `Z2FDTNDATAQYW2`.
  final String hostedZoneId;
  /// Identifier for the distribution. For example: `EDFDVBD632BHDS5`.
  final String id;
  /// The number of invalidation batches
  /// currently in progress.
  final int inProgressValidationBatches;
  /// Date and time the distribution was last modified.
  final String lastModifiedTime;
  /// Current status of the distribution. `Deployed` if the
  /// distribution's information is fully propagated throughout the Amazon
  /// CloudFront system.
  final String status;
  final Map<String, String> tags;
  /// AWS WAF web ACL associated with this distribution.
  final String webAclId;

  /// Creates a new [GetDistributionResult].
  /// [aliases] List that contains information about CNAMEs (alternate domain names), if any, for this distribution.
  /// [anycastIpListId] ID of the Anycast static IP list that is associated with the distribution, if any.
  /// [arn] ARN (Amazon Resource Name) for the distribution. For example: arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where 123456789012 is your AWS account ID.
  /// [domainName] Domain name corresponding to the distribution. For
  /// [enabled] Required.
  /// [etag] Current version of the distribution's information. For example:
  /// [hostedZoneId] CloudFront Route 53 zone ID that can be used to
  /// [id] Identifier for the distribution. For example: `EDFDVBD632BHDS5`.
  /// [inProgressValidationBatches] The number of invalidation batches
  /// [lastModifiedTime] Date and time the distribution was last modified.
  /// [status] Current status of the distribution. `Deployed` if the
  /// [tags] Required.
  /// [webAclId] AWS WAF web ACL associated with this distribution.
  GetDistributionResult({
    required this.aliases,
    required this.anycastIpListId,
    required this.arn,
    required this.domainName,
    required this.enabled,
    required this.etag,
    required this.hostedZoneId,
    required this.id,
    required this.inProgressValidationBatches,
    required this.lastModifiedTime,
    required this.status,
    required this.tags,
    required this.webAclId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': aliases,
      'anycastIpListId': anycastIpListId,
      'arn': arn,
      'domainName': domainName,
      'enabled': enabled,
      'etag': etag,
      'hostedZoneId': hostedZoneId,
      'id': id,
      'inProgressValidationBatches': inProgressValidationBatches,
      'lastModifiedTime': lastModifiedTime,
      'status': status,
      'tags': tags,
      'webAclId': webAclId,
    };
  }

  factory GetDistributionResult.fromMap(Map<String, dynamic> map) {
    return GetDistributionResult(
      aliases: (map['aliases'] as List).cast<String>(),
      anycastIpListId: map['anycastIpListId'] as String,
      arn: map['arn'] as String,
      domainName: map['domainName'] as String,
      enabled: map['enabled'] as bool,
      etag: map['etag'] as String,
      hostedZoneId: map['hostedZoneId'] as String,
      id: map['id'] as String,
      inProgressValidationBatches: map['inProgressValidationBatches'] as int,
      lastModifiedTime: map['lastModifiedTime'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      webAclId: map['webAclId'] as String,
    );
  }
}

