import 'package:pulumi/pulumi.dart';
import '../domain_name_endpoint_configuration/domain_name_endpoint_configuration.dart';
import '../domain_name_mutual_tls_authentication/domain_name_mutual_tls_authentication.dart';
import 'domain_name_args.dart';

/// Registers a custom domain name for use with AWS API Gateway. Additional information about this functionality
/// can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html).
///
/// This resource just establishes ownership of and the TLS settings for
/// a particular domain name. An API can be attached to a particular path
/// under the registered domain name using
/// the `aws.apigateway.BasePathMapping` resource.
///
/// API Gateway domains can be defined as either 'edge-optimized' or 'regional'.  In an edge-optimized configuration,
/// API Gateway internally creates and manages a CloudFront distribution to route requests on the given hostname. In
/// addition to this resource it's necessary to create a DNS record corresponding to the given domain name which is an alias
/// (either Route53 alias or traditional CNAME) to the Cloudfront domain name exported in the `cloudfront_domain_name`
/// attribute.
///
/// In a regional configuration, API Gateway does not create a CloudFront distribution to route requests to the API, though
/// a distribution can be created if needed. In either case, it is necessary to create a DNS record corresponding to the
/// given domain name which is an alias (either Route53 alias or traditional CNAME) to the regional domain name exported in
/// the `regional_domain_name` attribute.
///
/// > **Note:** API Gateway requires the use of AWS Certificate Manager (ACM) certificates instead of Identity and Access Management (IAM) certificates in regions that support ACM. Regions that support ACM can be found in the [Regions and Endpoints Documentation](https://docs.aws.amazon.com/general/latest/gr/rande.html#acm_region). To import an existing private key and certificate into ACM or request an ACM certificate, see the `aws.acm.Certificate` resource.
///
/// > **Note:** The `aws.apigateway.DomainName` resource expects dependency on the `aws.acm.CertificateValidation` as
/// only verified certificates can be used. This can be made either explicitly by adding the
/// `depends_on = [aws_acm_certificate_validation.cert]` attribute. Or implicitly by referring certificate ARN
/// from the validation resource where it will be available after the resource creation:
/// `regional_certificate_arn = aws_acm_certificate_validation.cert.certificate_arn`.
///
/// ## Example Usage
///
/// ### Edge Optimized (ACM Certificate)
///
///
///
/// ### Regional (ACM Certificate)
///
///
///
/// ### Enhanced Security Policy
///
///
///
/// ## Import
///
/// For a private custom domain name:
///
///
/// Using `pulumi import`, import API Gateway domain names using their `name` or `name` and `domain_name_id` (for private custom domain names). For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/domainName:DomainName example dev.example.com
/// ```
///
/// For a private custom domain name:
///
/// ```sh
/// $ pulumi import aws:apigateway/domainName:DomainName example dev.api.internal.example.com/abcde12345
/// ```
class DomainName extends CustomResource {
  /// ARN of domain name.
  late final Output<String> arn;

  /// ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when an edge-optimized domain name is desired. Conflicts with `certificate_name`, `certificate_body`, `certificate_chain`, `certificate_private_key`, `regional_certificate_arn`, and `regional_certificate_name`.
  late final Output<String?> certificateArn;

  /// Certificate issued for the domain name being registered, in PEM format. Only valid for `EDGE` endpoint configuration type. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`.
  late final Output<String?> certificateBody;

  /// Certificate for the CA that issued the certificate, along with any intermediate CA certificates required to create an unbroken chain to a certificate trusted by the intended API clients. Only valid for `EDGE` endpoint configuration type. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`.
  late final Output<String?> certificateChain;

  /// Unique name to use when registering this certificate as an IAM server certificate. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`. Required if `certificate_arn` is not set.
  late final Output<String?> certificateName;

  /// Private key associated with the domain certificate given in `certificate_body`. Only valid for `EDGE` endpoint configuration type. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`.
  late final Output<String?> certificatePrivateKey;

  /// Upload date associated with the domain certificate.
  late final Output<String> certificateUploadDate;

  /// Hostname created by Cloudfront to represent the distribution that implements this domain name mapping.
  late final Output<String> cloudfrontDomainName;

  /// For convenience, the hosted zone ID (`Z2FDTNDATAQYW2`) that can be used to create a Route53 alias record for the distribution.
  late final Output<String> cloudfrontZoneId;

  /// Fully-qualified domain name to register.
  late final Output<String> domainName;

  /// The identifier for the domain name resource. Supported only for private custom domain names.
  late final Output<String> domainNameId;

  /// Endpoint access mode of the DomainName. Only available for domain names that use security policies that start with `SecurityPolicy_`. Valid values: `BASIC`, `STRICT`.
  late final Output<String?> endpointAccessMode;

  /// Configuration block defining API endpoint information including type. See below.
  late final Output<DomainNameEndpointConfiguration> endpointConfiguration;

  /// Mutual TLS authentication configuration for the domain name. See below.
  late final Output<DomainNameMutualTlsAuthentication?> mutualTlsAuthentication;

  /// ARN of the AWS-issued certificate used to validate custom domain ownership (when `certificate_arn` is issued via an ACM Private CA or `mutual_tls_authentication` is configured with an ACM-imported certificate.)
  late final Output<String> ownershipVerificationCertificateArn;

  /// A stringified JSON policy document that applies to the execute-api service for this DomainName regardless of the caller and Method configuration. Supported only for private custom domain names.
  late final Output<String?> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when a regional domain name is desired. Conflicts with `certificate_arn`, `certificate_name`, `certificate_body`, `certificate_chain`, and `certificate_private_key`.
  ///
  /// When uploading a certificate, the following arguments are supported:
  late final Output<String?> regionalCertificateArn;

  /// User-friendly name of the certificate that will be used by regional endpoint for this domain name. Conflicts with `certificate_arn`, `certificate_name`, `certificate_body`, `certificate_chain`, and `certificate_private_key`.
  late final Output<String?> regionalCertificateName;

  /// Hostname for the custom domain's regional endpoint.
  late final Output<String> regionalDomainName;

  /// Hosted zone ID that can be used to create a Route53 alias record for the regional endpoint.
  late final Output<String> regionalZoneId;

  /// Mode to route traffic for the domain name. Valid values: `BASE_PATH_MAPPING_ONLY`, `ROUTING_RULE_ONLY`, `ROUTING_RULE_THEN_BASE_PATH_MAPPING`.
  late final Output<String> routingMode;

  /// Transport Layer Security (TLS) version + cipher suite for this DomainName. Must be configured to perform drift detection. For a list of valid security policies, see [DomainName](https://docs.aws.amazon.com/apigateway/latest/api/API_DomainName.html) in the Amazon API Gateway API Reference.
  late final Output<String> securityPolicy;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// When referencing an AWS-managed certificate, the following arguments are supported:
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  DomainName(
    String name, {
    DomainNameArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/domainName:DomainName',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.certificateArn = registerOutput<String?>('certificateArn');
    this.certificateBody = registerOutput<String?>('certificateBody');
    this.certificateChain = registerOutput<String?>('certificateChain');
    this.certificateName = registerOutput<String?>('certificateName');
    this.certificatePrivateKey =
        registerOutput<String?>('certificatePrivateKey');
    this.certificateUploadDate =
        registerOutput<String>('certificateUploadDate');
    this.cloudfrontDomainName = registerOutput<String>('cloudfrontDomainName');
    this.cloudfrontZoneId = registerOutput<String>('cloudfrontZoneId');
    this.domainName = registerOutput<String>('domainName');
    this.domainNameId = registerOutput<String>('domainNameId');
    this.endpointAccessMode = registerOutput<String?>('endpointAccessMode');
    this.endpointConfiguration =
        registerOutput<DomainNameEndpointConfiguration>(
            'endpointConfiguration');
    this.mutualTlsAuthentication =
        registerOutput<DomainNameMutualTlsAuthentication?>(
            'mutualTlsAuthentication');
    this.ownershipVerificationCertificateArn =
        registerOutput<String>('ownershipVerificationCertificateArn');
    this.policy = registerOutput<String?>('policy');
    this.region = registerOutput<String>('region');
    this.regionalCertificateArn =
        registerOutput<String?>('regionalCertificateArn');
    this.regionalCertificateName =
        registerOutput<String?>('regionalCertificateName');
    this.regionalDomainName = registerOutput<String>('regionalDomainName');
    this.regionalZoneId = registerOutput<String>('regionalZoneId');
    this.routingMode = registerOutput<String>('routingMode');
    this.securityPolicy = registerOutput<String>('securityPolicy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
