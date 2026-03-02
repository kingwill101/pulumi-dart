// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserPoolDomain resources.
class UserPoolDomainState {
  /// The AWS account ID for the user pool owner.
  final pulumi.Input<String>? awsAccountId;
  /// The ARN of an ISSUED ACM certificate in us-east-1 for a custom domain.
  final pulumi.Input<String>? certificateArn;
  /// The Amazon CloudFront endpoint (e.g. `dpp0gtxikpq3y.cloudfront.net`) that you use as the target of the alias that you set up with your Domain Name Service (DNS) provider.
  final pulumi.Input<String>? cloudfrontDistribution;
  /// The URL of the CloudFront distribution. This is required to generate the ALIAS `aws.route53.Record`
  final pulumi.Input<String>? cloudfrontDistributionArn;
  /// The Route 53 hosted zone ID of the CloudFront distribution.
  final pulumi.Input<String>? cloudfrontDistributionZoneId;
  /// For custom domains, this is the fully-qualified domain name, such as auth.example.com. For Amazon Cognito prefix domains, this is the prefix alone, such as auth.
  final pulumi.Input<String>? domain;
  /// A version number that indicates the state of managed login for your domain. Valid values: `1` for hosted UI (classic), `2` for the newer managed login with the branding designer.
  final pulumi.Input<int>? managedLoginVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The S3 bucket where the static files for this domain are stored.
  final pulumi.Input<String>? s3Bucket;
  /// The user pool ID.
  final pulumi.Input<String>? userPoolId;
  /// The app version.
  final pulumi.Input<String>? version;

  /// Creates a new [UserPoolDomainState].
  /// [awsAccountId] The AWS account ID for the user pool owner.
  /// [certificateArn] The ARN of an ISSUED ACM certificate in us-east-1 for a custom domain.
  /// [cloudfrontDistribution] The Amazon CloudFront endpoint (e.g. `dpp0gtxikpq3y.cloudfront.net`) that you use as the target of the alias that you set up with your Domain Name Service (DNS) provider.
  /// [cloudfrontDistributionArn] The URL of the CloudFront distribution. This is required to generate the ALIAS `aws.route53.Record`
  /// [cloudfrontDistributionZoneId] The Route 53 hosted zone ID of the CloudFront distribution.
  /// [domain] For custom domains, this is the fully-qualified domain name, such as auth.example.com. For Amazon Cognito prefix domains, this is the prefix alone, such as auth.
  /// [managedLoginVersion] A version number that indicates the state of managed login for your domain. Valid values: `1` for hosted UI (classic), `2` for the newer managed login with the branding designer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3Bucket] The S3 bucket where the static files for this domain are stored.
  /// [userPoolId] The user pool ID.
  /// [version] The app version.
  UserPoolDomainState({
    this.awsAccountId,
    this.certificateArn,
    this.cloudfrontDistribution,
    this.cloudfrontDistributionArn,
    this.cloudfrontDistributionZoneId,
    this.domain,
    this.managedLoginVersion,
    this.region,
    this.s3Bucket,
    this.userPoolId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'certificateArn': ?certificateArn,
      'cloudfrontDistribution': ?cloudfrontDistribution,
      'cloudfrontDistributionArn': ?cloudfrontDistributionArn,
      'cloudfrontDistributionZoneId': ?cloudfrontDistributionZoneId,
      'domain': ?domain,
      'managedLoginVersion': ?managedLoginVersion,
      'region': ?region,
      's3Bucket': ?s3Bucket,
      'userPoolId': ?userPoolId,
      'version': ?version,
    };
  }

  factory UserPoolDomainState.fromMap(Map<String, dynamic> map) {
    return UserPoolDomainState(
      awsAccountId: map['awsAccountId'] == null ? null : ((map['awsAccountId'] as String).input()).input(),
      certificateArn: map['certificateArn'] == null ? null : ((map['certificateArn'] as String).input()).input(),
      cloudfrontDistribution: map['cloudfrontDistribution'] == null ? null : ((map['cloudfrontDistribution'] as String).input()).input(),
      cloudfrontDistributionArn: map['cloudfrontDistributionArn'] == null ? null : ((map['cloudfrontDistributionArn'] as String).input()).input(),
      cloudfrontDistributionZoneId: map['cloudfrontDistributionZoneId'] == null ? null : ((map['cloudfrontDistributionZoneId'] as String).input()).input(),
      domain: map['domain'] == null ? null : ((map['domain'] as String).input()).input(),
      managedLoginVersion: map['managedLoginVersion'] == null ? null : ((map['managedLoginVersion'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      s3Bucket: map['s3Bucket'] == null ? null : ((map['s3Bucket'] as String).input()).input(),
      userPoolId: map['userPoolId'] == null ? null : ((map['userPoolId'] as String).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
    );
  }
}

