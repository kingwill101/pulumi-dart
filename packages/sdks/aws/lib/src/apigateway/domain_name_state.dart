// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_name_endpoint_configuration.dart';
import 'domain_name_mutual_tls_authentication.dart';

/// Input properties used for looking up and filtering DomainName resources.
class DomainNameState {
  /// ARN of domain name.
  final pulumi.Input<String>? arn;
  /// ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when an edge-optimized domain name is desired. Conflicts with `certificate_name`, `certificate_body`, `certificate_chain`, `certificate_private_key`, `regional_certificate_arn`, and `regional_certificate_name`.
  final pulumi.Input<String>? certificateArn;
  /// Certificate issued for the domain name being registered, in PEM format. Only valid for `EDGE` endpoint configuration type. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`.
  final pulumi.Input<String>? certificateBody;
  /// Certificate for the CA that issued the certificate, along with any intermediate CA certificates required to create an unbroken chain to a certificate trusted by the intended API clients. Only valid for `EDGE` endpoint configuration type. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`.
  final pulumi.Input<String>? certificateChain;
  /// Unique name to use when registering this certificate as an IAM server certificate. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`. Required if `certificate_arn` is not set.
  final pulumi.Input<String>? certificateName;
  /// Private key associated with the domain certificate given in `certificate_body`. Only valid for `EDGE` endpoint configuration type. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`.
  final pulumi.Input<String>? certificatePrivateKey;
  /// Upload date associated with the domain certificate.
  final pulumi.Input<String>? certificateUploadDate;
  /// Hostname created by Cloudfront to represent the distribution that implements this domain name mapping.
  final pulumi.Input<String>? cloudfrontDomainName;
  /// For convenience, the hosted zone ID (`Z2FDTNDATAQYW2`) that can be used to create a Route53 alias record for the distribution.
  final pulumi.Input<String>? cloudfrontZoneId;
  /// Fully-qualified domain name to register.
  final pulumi.Input<String>? domainName;
  /// The identifier for the domain name resource. Supported only for private custom domain names.
  final pulumi.Input<String>? domainNameId;
  /// Endpoint access mode of the DomainName. Only available for domain names that use security policies that start with `SecurityPolicy_`. Valid values: `BASIC`, `STRICT`.
  final pulumi.Input<String>? endpointAccessMode;
  /// Configuration block defining API endpoint information including type. See below.
  final pulumi.Input<DomainNameEndpointConfiguration>? endpointConfiguration;
  /// Mutual TLS authentication configuration for the domain name. See below.
  final pulumi.Input<DomainNameMutualTlsAuthentication>? mutualTlsAuthentication;
  /// ARN of the AWS-issued certificate used to validate custom domain ownership (when `certificate_arn` is issued via an ACM Private CA or `mutual_tls_authentication` is configured with an ACM-imported certificate.)
  final pulumi.Input<String>? ownershipVerificationCertificateArn;
  /// A stringified JSON policy document that applies to the execute-api service for this DomainName regardless of the caller and Method configuration. Supported only for private custom domain names.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when a regional domain name is desired. Conflicts with `certificate_arn`, `certificate_name`, `certificate_body`, `certificate_chain`, and `certificate_private_key`.
  ///
  /// When uploading a certificate, the following arguments are supported:
  final pulumi.Input<String>? regionalCertificateArn;
  /// User-friendly name of the certificate that will be used by regional endpoint for this domain name. Conflicts with `certificate_arn`, `certificate_name`, `certificate_body`, `certificate_chain`, and `certificate_private_key`.
  final pulumi.Input<String>? regionalCertificateName;
  /// Hostname for the custom domain's regional endpoint.
  final pulumi.Input<String>? regionalDomainName;
  /// Hosted zone ID that can be used to create a Route53 alias record for the regional endpoint.
  final pulumi.Input<String>? regionalZoneId;
  /// Mode to route traffic for the domain name. Valid values: `BASE_PATH_MAPPING_ONLY`, `ROUTING_RULE_ONLY`, `ROUTING_RULE_THEN_BASE_PATH_MAPPING`.
  final pulumi.Input<String>? routingMode;
  /// Transport Layer Security (TLS) version + cipher suite for this DomainName. Must be configured to perform drift detection. For a list of valid security policies, see [DomainName](https://docs.aws.amazon.com/apigateway/latest/api/API_DomainName.html) in the Amazon API Gateway API Reference.
  final pulumi.Input<String>? securityPolicy;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// When referencing an AWS-managed certificate, the following arguments are supported:
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DomainNameState].
  /// [arn] ARN of domain name.
  /// [certificateArn] ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when an edge-optimized domain name is desired. Conflicts with `certificate_name`, `certificate_body`, `certificate_chain`, `certificate_private_key`, `regional_certificate_arn`, and `regional_certificate_name`.
  /// [certificateBody] Certificate issued for the domain name being registered, in PEM format. Only valid for `EDGE` endpoint configuration type. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`.
  /// [certificateChain] Certificate for the CA that issued the certificate, along with any intermediate CA certificates required to create an unbroken chain to a certificate trusted by the intended API clients. Only valid for `EDGE` endpoint configuration type. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`.
  /// [certificateName] Unique name to use when registering this certificate as an IAM server certificate. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`. Required if `certificate_arn` is not set.
  /// [certificatePrivateKey] Private key associated with the domain certificate given in `certificate_body`. Only valid for `EDGE` endpoint configuration type. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`.
  /// [certificateUploadDate] Upload date associated with the domain certificate.
  /// [cloudfrontDomainName] Hostname created by Cloudfront to represent the distribution that implements this domain name mapping.
  /// [cloudfrontZoneId] For convenience, the hosted zone ID (`Z2FDTNDATAQYW2`) that can be used to create a Route53 alias record for the distribution.
  /// [domainName] Fully-qualified domain name to register.
  /// [domainNameId] The identifier for the domain name resource. Supported only for private custom domain names.
  /// [endpointAccessMode] Endpoint access mode of the DomainName. Only available for domain names that use security policies that start with `SecurityPolicy_`. Valid values: `BASIC`, `STRICT`.
  /// [endpointConfiguration] Configuration block defining API endpoint information including type. See below.
  /// [mutualTlsAuthentication] Mutual TLS authentication configuration for the domain name. See below.
  /// [ownershipVerificationCertificateArn] ARN of the AWS-issued certificate used to validate custom domain ownership (when `certificate_arn` is issued via an ACM Private CA or `mutual_tls_authentication` is configured with an ACM-imported certificate.)
  /// [policy] A stringified JSON policy document that applies to the execute-api service for this DomainName regardless of the caller and Method configuration. Supported only for private custom domain names.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regionalCertificateArn] ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when a regional domain name is desired. Conflicts with `certificate_arn`, `certificate_name`, `certificate_body`, `certificate_chain`, and `certificate_private_key`.
  /// [regionalCertificateName] User-friendly name of the certificate that will be used by regional endpoint for this domain name. Conflicts with `certificate_arn`, `certificate_name`, `certificate_body`, `certificate_chain`, and `certificate_private_key`.
  /// [regionalDomainName] Hostname for the custom domain's regional endpoint.
  /// [regionalZoneId] Hosted zone ID that can be used to create a Route53 alias record for the regional endpoint.
  /// [routingMode] Mode to route traffic for the domain name. Valid values: `BASE_PATH_MAPPING_ONLY`, `ROUTING_RULE_ONLY`, `ROUTING_RULE_THEN_BASE_PATH_MAPPING`.
  /// [securityPolicy] Transport Layer Security (TLS) version + cipher suite for this DomainName. Must be configured to perform drift detection. For a list of valid security policies, see [DomainName](https://docs.aws.amazon.com/apigateway/latest/api/API_DomainName.html) in the Amazon API Gateway API Reference.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DomainNameState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? certificateArn,
    pulumi.Output<String>? certificateBody,
    pulumi.Output<String>? certificateChain,
    pulumi.Output<String>? certificateName,
    pulumi.Output<String>? certificatePrivateKey,
    pulumi.Output<String>? certificateUploadDate,
    pulumi.Output<String>? cloudfrontDomainName,
    pulumi.Output<String>? cloudfrontZoneId,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? domainNameId,
    pulumi.Output<String>? endpointAccessMode,
    pulumi.Output<DomainNameEndpointConfiguration>? endpointConfiguration,
    pulumi.Output<DomainNameMutualTlsAuthentication>? mutualTlsAuthentication,
    pulumi.Output<String>? ownershipVerificationCertificateArn,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
    pulumi.Output<String>? regionalCertificateArn,
    pulumi.Output<String>? regionalCertificateName,
    pulumi.Output<String>? regionalDomainName,
    pulumi.Output<String>? regionalZoneId,
    pulumi.Output<String>? routingMode,
    pulumi.Output<String>? securityPolicy,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      certificateArn = pulumi.Input.asOptionalInput<String>(certificateArn),
      certificateBody = pulumi.Input.asOptionalInput<String>(certificateBody),
      certificateChain = pulumi.Input.asOptionalInput<String>(certificateChain),
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      certificatePrivateKey = pulumi.Input.asOptionalInput<String>(certificatePrivateKey),
      certificateUploadDate = pulumi.Input.asOptionalInput<String>(certificateUploadDate),
      cloudfrontDomainName = pulumi.Input.asOptionalInput<String>(cloudfrontDomainName),
      cloudfrontZoneId = pulumi.Input.asOptionalInput<String>(cloudfrontZoneId),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      domainNameId = pulumi.Input.asOptionalInput<String>(domainNameId),
      endpointAccessMode = pulumi.Input.asOptionalInput<String>(endpointAccessMode),
      endpointConfiguration = pulumi.Input.asOptionalInput<DomainNameEndpointConfiguration>(endpointConfiguration),
      mutualTlsAuthentication = pulumi.Input.asOptionalInput<DomainNameMutualTlsAuthentication>(mutualTlsAuthentication),
      ownershipVerificationCertificateArn = pulumi.Input.asOptionalInput<String>(ownershipVerificationCertificateArn),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      regionalCertificateArn = pulumi.Input.asOptionalInput<String>(regionalCertificateArn),
      regionalCertificateName = pulumi.Input.asOptionalInput<String>(regionalCertificateName),
      regionalDomainName = pulumi.Input.asOptionalInput<String>(regionalDomainName),
      regionalZoneId = pulumi.Input.asOptionalInput<String>(regionalZoneId),
      routingMode = pulumi.Input.asOptionalInput<String>(routingMode),
      securityPolicy = pulumi.Input.asOptionalInput<String>(securityPolicy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'certificateArn': ?certificateArn,
      'certificateBody': ?certificateBody,
      'certificateChain': ?certificateChain,
      'certificateName': ?certificateName,
      'certificatePrivateKey': ?certificatePrivateKey,
      'certificateUploadDate': ?certificateUploadDate,
      'cloudfrontDomainName': ?cloudfrontDomainName,
      'cloudfrontZoneId': ?cloudfrontZoneId,
      'domainName': ?domainName,
      'domainNameId': ?domainNameId,
      'endpointAccessMode': ?endpointAccessMode,
      'endpointConfiguration': ?pulumi.Input.mapOptionalInputValue<DomainNameEndpointConfiguration, Map<String, dynamic>>(endpointConfiguration, (value) => value.toMap()),
      'mutualTlsAuthentication': ?pulumi.Input.mapOptionalInputValue<DomainNameMutualTlsAuthentication, Map<String, dynamic>>(mutualTlsAuthentication, (value) => value.toMap()),
      'ownershipVerificationCertificateArn': ?ownershipVerificationCertificateArn,
      'policy': ?policy,
      'region': ?region,
      'regionalCertificateArn': ?regionalCertificateArn,
      'regionalCertificateName': ?regionalCertificateName,
      'regionalDomainName': ?regionalDomainName,
      'regionalZoneId': ?regionalZoneId,
      'routingMode': ?routingMode,
      'securityPolicy': ?securityPolicy,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DomainNameState.fromMap(Map<String, dynamic> map) {
    return DomainNameState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      certificateArn: map['certificateArn'] == null ? null : pulumi.Output.create<String>(map['certificateArn'] as String),
      certificateBody: map['certificateBody'] == null ? null : pulumi.Output.create<String>(map['certificateBody'] as String),
      certificateChain: map['certificateChain'] == null ? null : pulumi.Output.create<String>(map['certificateChain'] as String),
      certificateName: map['certificateName'] == null ? null : pulumi.Output.create<String>(map['certificateName'] as String),
      certificatePrivateKey: map['certificatePrivateKey'] == null ? null : pulumi.Output.create<String>(map['certificatePrivateKey'] as String),
      certificateUploadDate: map['certificateUploadDate'] == null ? null : pulumi.Output.create<String>(map['certificateUploadDate'] as String),
      cloudfrontDomainName: map['cloudfrontDomainName'] == null ? null : pulumi.Output.create<String>(map['cloudfrontDomainName'] as String),
      cloudfrontZoneId: map['cloudfrontZoneId'] == null ? null : pulumi.Output.create<String>(map['cloudfrontZoneId'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      domainNameId: map['domainNameId'] == null ? null : pulumi.Output.create<String>(map['domainNameId'] as String),
      endpointAccessMode: map['endpointAccessMode'] == null ? null : pulumi.Output.create<String>(map['endpointAccessMode'] as String),
      endpointConfiguration: map['endpointConfiguration'] == null ? null : pulumi.Output.create<DomainNameEndpointConfiguration>(DomainNameEndpointConfiguration.fromMap((map['endpointConfiguration'] as Map).cast<String, dynamic>())),
      mutualTlsAuthentication: map['mutualTlsAuthentication'] == null ? null : pulumi.Output.create<DomainNameMutualTlsAuthentication>(DomainNameMutualTlsAuthentication.fromMap((map['mutualTlsAuthentication'] as Map).cast<String, dynamic>())),
      ownershipVerificationCertificateArn: map['ownershipVerificationCertificateArn'] == null ? null : pulumi.Output.create<String>(map['ownershipVerificationCertificateArn'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      regionalCertificateArn: map['regionalCertificateArn'] == null ? null : pulumi.Output.create<String>(map['regionalCertificateArn'] as String),
      regionalCertificateName: map['regionalCertificateName'] == null ? null : pulumi.Output.create<String>(map['regionalCertificateName'] as String),
      regionalDomainName: map['regionalDomainName'] == null ? null : pulumi.Output.create<String>(map['regionalDomainName'] as String),
      regionalZoneId: map['regionalZoneId'] == null ? null : pulumi.Output.create<String>(map['regionalZoneId'] as String),
      routingMode: map['routingMode'] == null ? null : pulumi.Output.create<String>(map['routingMode'] as String),
      securityPolicy: map['securityPolicy'] == null ? null : pulumi.Output.create<String>(map['securityPolicy'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

