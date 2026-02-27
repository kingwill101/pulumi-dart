import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_pool_domain_args.dart';

/// Provides a Cognito User Pool Domain resource.
///
/// ## Example Usage
///
/// ### Amazon Cognito domain
///
///
///
/// ### Custom Cognito domain
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito User Pool Domains using the `domain`. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/userPoolDomain:UserPoolDomain main auth.example.org
/// ```
class UserPoolDomain extends pulumi.CustomResource {
  /// The AWS account ID for the user pool owner.
  late final pulumi.Output<String> awsAccountId;

  /// The ARN of an ISSUED ACM certificate in us-east-1 for a custom domain.
  late final pulumi.Output<String?> certificateArn;

  /// The Amazon CloudFront endpoint (e.g. `dpp0gtxikpq3y.cloudfront.net`) that you use as the target of the alias that you set up with your Domain Name Service (DNS) provider.
  late final pulumi.Output<String> cloudfrontDistribution;

  /// The URL of the CloudFront distribution. This is required to generate the ALIAS `aws.route53.Record`
  late final pulumi.Output<String> cloudfrontDistributionArn;

  /// The Route 53 hosted zone ID of the CloudFront distribution.
  late final pulumi.Output<String> cloudfrontDistributionZoneId;

  /// For custom domains, this is the fully-qualified domain name, such as auth.example.com. For Amazon Cognito prefix domains, this is the prefix alone, such as auth.
  late final pulumi.Output<String> domain;

  /// A version number that indicates the state of managed login for your domain. Valid values: `1` for hosted UI (classic), `2` for the newer managed login with the branding designer.
  late final pulumi.Output<int> managedLoginVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The S3 bucket where the static files for this domain are stored.
  late final pulumi.Output<String> s3Bucket;

  /// The user pool ID.
  late final pulumi.Output<String> userPoolId;

  /// The app version.
  late final pulumi.Output<String> version;

  UserPoolDomain(
    String name, {
    UserPoolDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/userPoolDomain:UserPoolDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.certificateArn = registerOutput<String?>('certificateArn');
    this.cloudfrontDistribution =
        registerOutput<String>('cloudfrontDistribution');
    this.cloudfrontDistributionArn =
        registerOutput<String>('cloudfrontDistributionArn');
    this.cloudfrontDistributionZoneId =
        registerOutput<String>('cloudfrontDistributionZoneId');
    this.domain = registerOutput<String>('domain');
    this.managedLoginVersion = registerOutput<int>('managedLoginVersion');
    this.region = registerOutput<String>('region');
    this.s3Bucket = registerOutput<String>('s3Bucket');
    this.userPoolId = registerOutput<String>('userPoolId');
    this.version = registerOutput<String>('version');
  }
}
