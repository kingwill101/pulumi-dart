// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_name_endpoint_configuration/domain_name_endpoint_configuration.dart';
import '../domain_name_mutual_tls_authentication/domain_name_mutual_tls_authentication.dart';

/// The set of arguments for DomainName.
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
  final pulumi.Input<DomainNameMutualTlsAuthentication>?
      mutualTlsAuthentication;

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
    final map = <String, dynamic>{};
    final certificateArnValue = certificateArn;
    if (certificateArnValue != null) {
      map['certificateArn'] = certificateArnValue;
    }
    final certificateBodyValue = certificateBody;
    if (certificateBodyValue != null) {
      map['certificateBody'] = certificateBodyValue;
    }
    final certificateChainValue = certificateChain;
    if (certificateChainValue != null) {
      map['certificateChain'] = certificateChainValue;
    }
    final certificateNameValue = certificateName;
    if (certificateNameValue != null) {
      map['certificateName'] = certificateNameValue;
    }
    final certificatePrivateKeyValue = certificatePrivateKey;
    if (certificatePrivateKeyValue != null) {
      map['certificatePrivateKey'] = certificatePrivateKeyValue;
    }
    map['domainName'] = domainName;
    final endpointAccessModeValue = endpointAccessMode;
    if (endpointAccessModeValue != null) {
      map['endpointAccessMode'] = endpointAccessModeValue;
    }
    final endpointConfigurationValue = endpointConfiguration;
    if (endpointConfigurationValue != null) {
      map['endpointConfiguration'] = pulumi.Input.mapOptionalInputValue<
              DomainNameEndpointConfiguration, Map<String, dynamic>>(
          endpointConfigurationValue, (value) => value.toMap());
    }
    final mutualTlsAuthenticationValue = mutualTlsAuthentication;
    if (mutualTlsAuthenticationValue != null) {
      map['mutualTlsAuthentication'] = pulumi.Input.mapOptionalInputValue<
              DomainNameMutualTlsAuthentication, Map<String, dynamic>>(
          mutualTlsAuthenticationValue, (value) => value.toMap());
    }
    final ownershipVerificationCertificateArnValue =
        ownershipVerificationCertificateArn;
    if (ownershipVerificationCertificateArnValue != null) {
      map['ownershipVerificationCertificateArn'] =
          ownershipVerificationCertificateArnValue;
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final regionalCertificateArnValue = regionalCertificateArn;
    if (regionalCertificateArnValue != null) {
      map['regionalCertificateArn'] = regionalCertificateArnValue;
    }
    final regionalCertificateNameValue = regionalCertificateName;
    if (regionalCertificateNameValue != null) {
      map['regionalCertificateName'] = regionalCertificateNameValue;
    }
    final routingModeValue = routingMode;
    if (routingModeValue != null) {
      map['routingMode'] = routingModeValue;
    }
    final securityPolicyValue = securityPolicy;
    if (securityPolicyValue != null) {
      map['securityPolicy'] = securityPolicyValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DomainNameArgs.fromMap(Map<String, dynamic> map) {
    return DomainNameArgs(
      certificateArn:
          pulumi.Input.asOptionalInput<String>(map['certificateArn']),
      certificateBody:
          pulumi.Input.asOptionalInput<String>(map['certificateBody']),
      certificateChain:
          pulumi.Input.asOptionalInput<String>(map['certificateChain']),
      certificateName:
          pulumi.Input.asOptionalInput<String>(map['certificateName']),
      certificatePrivateKey:
          pulumi.Input.asOptionalInput<String>(map['certificatePrivateKey']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      endpointAccessMode:
          pulumi.Input.asOptionalInput<String>(map['endpointAccessMode']),
      endpointConfiguration:
          pulumi.Input.asOptionalInput<DomainNameEndpointConfiguration>(
              map['endpointConfiguration']),
      mutualTlsAuthentication:
          pulumi.Input.asOptionalInput<DomainNameMutualTlsAuthentication>(
              map['mutualTlsAuthentication']),
      ownershipVerificationCertificateArn: pulumi.Input.asOptionalInput<String>(
          map['ownershipVerificationCertificateArn']),
      policy: pulumi.Input.asOptionalInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      regionalCertificateArn:
          pulumi.Input.asOptionalInput<String>(map['regionalCertificateArn']),
      regionalCertificateName:
          pulumi.Input.asOptionalInput<String>(map['regionalCertificateName']),
      routingMode: pulumi.Input.asOptionalInput<String>(map['routingMode']),
      securityPolicy:
          pulumi.Input.asOptionalInput<String>(map['securityPolicy']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
