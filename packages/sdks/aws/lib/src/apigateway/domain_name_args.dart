// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_name_endpoint_configuration.dart';
import 'domain_name_mutual_tls_authentication.dart';

/// {@template pulumi_apigateway_domain_name_domain_name_args_doc}
/// The set of arguments for DomainName.
/// {@endtemplate}
/// {@macro pulumi_apigateway_domain_name_domain_name_args_doc}
class DomainNameArgs {
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
  /// Fully-qualified domain name to register.
  final pulumi.Input<String> domainName;
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
  /// Mode to route traffic for the domain name. Valid values: `BASE_PATH_MAPPING_ONLY`, `ROUTING_RULE_ONLY`, `ROUTING_RULE_THEN_BASE_PATH_MAPPING`.
  final pulumi.Input<String>? routingMode;
  /// Transport Layer Security (TLS) version + cipher suite for this DomainName. Must be configured to perform drift detection. For a list of valid security policies, see [DomainName](https://docs.aws.amazon.com/apigateway/latest/api/API_DomainName.html) in the Amazon API Gateway API Reference.
  final pulumi.Input<String>? securityPolicy;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// When referencing an AWS-managed certificate, the following arguments are supported:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DomainNameArgs].
  /// [certificateArn] ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when an edge-optimized domain name is desired. Conflicts with `certificate_name`, `certificate_body`, `certificate_chain`, `certificate_private_key`, `regional_certificate_arn`, and `regional_certificate_name`.
  /// [certificateBody] Certificate issued for the domain name being registered, in PEM format. Only valid for `EDGE` endpoint configuration type. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`.
  /// [certificateChain] Certificate for the CA that issued the certificate, along with any intermediate CA certificates required to create an unbroken chain to a certificate trusted by the intended API clients. Only valid for `EDGE` endpoint configuration type. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`.
  /// [certificateName] Unique name to use when registering this certificate as an IAM server certificate. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`. Required if `certificate_arn` is not set.
  /// [certificatePrivateKey] Private key associated with the domain certificate given in `certificate_body`. Only valid for `EDGE` endpoint configuration type. Conflicts with `certificate_arn`, `regional_certificate_arn`, and `regional_certificate_name`.
  /// [domainName] Fully-qualified domain name to register.
  /// [endpointAccessMode] Endpoint access mode of the DomainName. Only available for domain names that use security policies that start with `SecurityPolicy_`. Valid values: `BASIC`, `STRICT`.
  /// [endpointConfiguration] Configuration block defining API endpoint information including type. See below.
  /// [mutualTlsAuthentication] Mutual TLS authentication configuration for the domain name. See below.
  /// [ownershipVerificationCertificateArn] ARN of the AWS-issued certificate used to validate custom domain ownership (when `certificate_arn` is issued via an ACM Private CA or `mutual_tls_authentication` is configured with an ACM-imported certificate.)
  /// [policy] A stringified JSON policy document that applies to the execute-api service for this DomainName regardless of the caller and Method configuration. Supported only for private custom domain names.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regionalCertificateArn] ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when a regional domain name is desired. Conflicts with `certificate_arn`, `certificate_name`, `certificate_body`, `certificate_chain`, and `certificate_private_key`.
  /// [regionalCertificateName] User-friendly name of the certificate that will be used by regional endpoint for this domain name. Conflicts with `certificate_arn`, `certificate_name`, `certificate_body`, `certificate_chain`, and `certificate_private_key`.
  /// [routingMode] Mode to route traffic for the domain name. Valid values: `BASE_PATH_MAPPING_ONLY`, `ROUTING_RULE_ONLY`, `ROUTING_RULE_THEN_BASE_PATH_MAPPING`.
  /// [securityPolicy] Transport Layer Security (TLS) version + cipher suite for this DomainName. Must be configured to perform drift detection. For a list of valid security policies, see [DomainName](https://docs.aws.amazon.com/apigateway/latest/api/API_DomainName.html) in the Amazon API Gateway API Reference.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DomainNameArgs({
    this.certificateArn,
    this.certificateBody,
    this.certificateChain,
    this.certificateName,
    this.certificatePrivateKey,
    required this.domainName,
    this.endpointAccessMode,
    this.endpointConfiguration,
    this.mutualTlsAuthentication,
    this.ownershipVerificationCertificateArn,
    this.policy,
    this.region,
    this.regionalCertificateArn,
    this.regionalCertificateName,
    this.routingMode,
    this.securityPolicy,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'certificateBody': ?certificateBody,
      'certificateChain': ?certificateChain,
      'certificateName': ?certificateName,
      'certificatePrivateKey': ?certificatePrivateKey,
      'domainName': domainName,
      'endpointAccessMode': ?endpointAccessMode,
      'endpointConfiguration': ?pulumi.Input.mapOptionalInputValue<DomainNameEndpointConfiguration, Map<String, dynamic>>(endpointConfiguration, (value) => value.toMap()),
      'mutualTlsAuthentication': ?pulumi.Input.mapOptionalInputValue<DomainNameMutualTlsAuthentication, Map<String, dynamic>>(mutualTlsAuthentication, (value) => value.toMap()),
      'ownershipVerificationCertificateArn': ?ownershipVerificationCertificateArn,
      'policy': ?policy,
      'region': ?region,
      'regionalCertificateArn': ?regionalCertificateArn,
      'regionalCertificateName': ?regionalCertificateName,
      'routingMode': ?routingMode,
      'securityPolicy': ?securityPolicy,
      'tags': ?tags,
    };
  }

  factory DomainNameArgs.fromMap(Map<String, dynamic> map) {
    return DomainNameArgs(
      certificateArn: map['certificateArn'] == null ? null : ((map['certificateArn'] as String).input()).input(),
      certificateBody: map['certificateBody'] == null ? null : ((map['certificateBody'] as String).input()).input(),
      certificateChain: map['certificateChain'] == null ? null : ((map['certificateChain'] as String).input()).input(),
      certificateName: map['certificateName'] == null ? null : ((map['certificateName'] as String).input()).input(),
      certificatePrivateKey: map['certificatePrivateKey'] == null ? null : ((map['certificatePrivateKey'] as String).input()).input(),
      domainName: (map['domainName'] as String).input(),
      endpointAccessMode: map['endpointAccessMode'] == null ? null : ((map['endpointAccessMode'] as String).input()).input(),
      endpointConfiguration: map['endpointConfiguration'] == null ? null : ((DomainNameEndpointConfiguration.fromMap((map['endpointConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      mutualTlsAuthentication: map['mutualTlsAuthentication'] == null ? null : ((DomainNameMutualTlsAuthentication.fromMap((map['mutualTlsAuthentication']! as Map).cast<String, dynamic>())).input()).input(),
      ownershipVerificationCertificateArn: map['ownershipVerificationCertificateArn'] == null ? null : ((map['ownershipVerificationCertificateArn'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      regionalCertificateArn: map['regionalCertificateArn'] == null ? null : ((map['regionalCertificateArn'] as String).input()).input(),
      regionalCertificateName: map['regionalCertificateName'] == null ? null : ((map['regionalCertificateName'] as String).input()).input(),
      routingMode: map['routingMode'] == null ? null : ((map['routingMode'] as String).input()).input(),
      securityPolicy: map['securityPolicy'] == null ? null : ((map['securityPolicy'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

