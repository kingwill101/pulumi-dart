// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_cidr_options.dart';
import 'endpoint_load_balancer_options.dart';
import 'endpoint_network_interface_options.dart';
import 'endpoint_rds_options.dart';
import 'endpoint_sse_specification.dart';

/// {@template pulumi_verifiedaccess_endpoint_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_verifiedaccess_endpoint_endpoint_args_doc}
class EndpointArgs {
  /// The DNS name for users to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  final pulumi.Input<String>? applicationDomain;

  /// The type of attachment. Currently, only `vpc` is supported.
  final pulumi.Input<String> attachmentType;

  /// The CIDR block details. This parameter is required if the endpoint type is `cidr`.
  final pulumi.Input<EndpointCidrOptions>? cidrOptions;

  /// A description for the Verified Access endpoint.
  final pulumi.Input<String>? description;

  /// The ARN of the public TLS/SSL certificate in AWS Certificate Manager to associate with the endpoint. The CN in the certificate must match the DNS name your end users will use to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  final pulumi.Input<String>? domainCertificateArn;

  /// A custom identifier that is prepended to the DNS name that is generated for the endpoint.
  final pulumi.Input<String>? endpointDomainPrefix;

  /// The type of Verified Access endpoint to create. Currently `load-balancer` or `network-interface` are supported.
  final pulumi.Input<String> endpointType;

  /// The load balancer details. This parameter is required if the endpoint type is `load-balancer`.
  final pulumi.Input<EndpointLoadBalancerOptions>? loadBalancerOptions;

  /// The network interface details. This parameter is required if the endpoint type is `network-interface`.
  final pulumi.Input<EndpointNetworkInterfaceOptions>? networkInterfaceOptions;

  /// The policy document that is associated with this resource.
  final pulumi.Input<String>? policyDocument;
  final pulumi.Input<EndpointRdsOptions>? rdsOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of the the security groups IDs to associate with the Verified Access endpoint.
  final pulumi.Input<List<String>>? securityGroupIds;

  /// The options in use for server side encryption.
  final pulumi.Input<EndpointSseSpecification>? sseSpecification;

  /// Key-value tags for the Verified Access Endpoint. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the Verified Access group to associate the endpoint with.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> verifiedAccessGroupId;

  /// Creates a new [EndpointArgs].
  /// [applicationDomain] The DNS name for users to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  /// [attachmentType] The type of attachment. Currently, only `vpc` is supported.
  /// [cidrOptions] The CIDR block details. This parameter is required if the endpoint type is `cidr`.
  /// [description] A description for the Verified Access endpoint.
  /// [domainCertificateArn] The ARN of the public TLS/SSL certificate in AWS Certificate Manager to associate with the endpoint. The CN in the certificate must match the DNS name your end users will use to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  /// [endpointDomainPrefix] A custom identifier that is prepended to the DNS name that is generated for the endpoint.
  /// [endpointType] The type of Verified Access endpoint to create. Currently `load-balancer` or `network-interface` are supported.
  /// [loadBalancerOptions] The load balancer details. This parameter is required if the endpoint type is `load-balancer`.
  /// [networkInterfaceOptions] The network interface details. This parameter is required if the endpoint type is `network-interface`.
  /// [policyDocument] The policy document that is associated with this resource.
  /// [rdsOptions] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] List of the the security groups IDs to associate with the Verified Access endpoint.
  /// [sseSpecification] The options in use for server side encryption.
  /// [tags] Key-value tags for the Verified Access Endpoint. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [verifiedAccessGroupId] The ID of the Verified Access group to associate the endpoint with.
  EndpointArgs({
    String? applicationDomain,
    required String attachmentType,
    EndpointCidrOptions? cidrOptions,
    String? description,
    String? domainCertificateArn,
    String? endpointDomainPrefix,
    required String endpointType,
    EndpointLoadBalancerOptions? loadBalancerOptions,
    EndpointNetworkInterfaceOptions? networkInterfaceOptions,
    String? policyDocument,
    EndpointRdsOptions? rdsOptions,
    String? region,
    List<String>? securityGroupIds,
    EndpointSseSpecification? sseSpecification,
    Map<String, String>? tags,
    required String verifiedAccessGroupId,
  })  : applicationDomain =
            pulumi.Input.asOptionalInput<String>(applicationDomain),
        attachmentType = pulumi.Input.asInput<String>(attachmentType),
        cidrOptions =
            pulumi.Input.asOptionalInput<EndpointCidrOptions>(cidrOptions),
        description = pulumi.Input.asOptionalInput<String>(description),
        domainCertificateArn =
            pulumi.Input.asOptionalInput<String>(domainCertificateArn),
        endpointDomainPrefix =
            pulumi.Input.asOptionalInput<String>(endpointDomainPrefix),
        endpointType = pulumi.Input.asInput<String>(endpointType),
        loadBalancerOptions =
            pulumi.Input.asOptionalInput<EndpointLoadBalancerOptions>(
                loadBalancerOptions),
        networkInterfaceOptions =
            pulumi.Input.asOptionalInput<EndpointNetworkInterfaceOptions>(
                networkInterfaceOptions),
        policyDocument = pulumi.Input.asOptionalInput<String>(policyDocument),
        rdsOptions =
            pulumi.Input.asOptionalInput<EndpointRdsOptions>(rdsOptions),
        region = pulumi.Input.asOptionalInput<String>(region),
        securityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
        sseSpecification =
            pulumi.Input.asOptionalInput<EndpointSseSpecification>(
                sseSpecification),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        verifiedAccessGroupId =
            pulumi.Input.asInput<String>(verifiedAccessGroupId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationDomainValue = applicationDomain;
    if (applicationDomainValue != null) {
      map['applicationDomain'] = applicationDomainValue;
    }
    map['attachmentType'] = attachmentType;
    final cidrOptionsValue = cidrOptions;
    if (cidrOptionsValue != null) {
      map['cidrOptions'] = pulumi.Input.mapOptionalInputValue<
          EndpointCidrOptions,
          Map<String, dynamic>>(cidrOptionsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final domainCertificateArnValue = domainCertificateArn;
    if (domainCertificateArnValue != null) {
      map['domainCertificateArn'] = domainCertificateArnValue;
    }
    final endpointDomainPrefixValue = endpointDomainPrefix;
    if (endpointDomainPrefixValue != null) {
      map['endpointDomainPrefix'] = endpointDomainPrefixValue;
    }
    map['endpointType'] = endpointType;
    final loadBalancerOptionsValue = loadBalancerOptions;
    if (loadBalancerOptionsValue != null) {
      map['loadBalancerOptions'] = pulumi.Input.mapOptionalInputValue<
              EndpointLoadBalancerOptions, Map<String, dynamic>>(
          loadBalancerOptionsValue, (value) => value.toMap());
    }
    final networkInterfaceOptionsValue = networkInterfaceOptions;
    if (networkInterfaceOptionsValue != null) {
      map['networkInterfaceOptions'] = pulumi.Input.mapOptionalInputValue<
              EndpointNetworkInterfaceOptions, Map<String, dynamic>>(
          networkInterfaceOptionsValue, (value) => value.toMap());
    }
    final policyDocumentValue = policyDocument;
    if (policyDocumentValue != null) {
      map['policyDocument'] = policyDocumentValue;
    }
    final rdsOptionsValue = rdsOptions;
    if (rdsOptionsValue != null) {
      map['rdsOptions'] = pulumi.Input.mapOptionalInputValue<EndpointRdsOptions,
          Map<String, dynamic>>(rdsOptionsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final sseSpecificationValue = sseSpecification;
    if (sseSpecificationValue != null) {
      map['sseSpecification'] = pulumi.Input.mapOptionalInputValue<
              EndpointSseSpecification, Map<String, dynamic>>(
          sseSpecificationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['verifiedAccessGroupId'] = verifiedAccessGroupId;
    return map;
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      applicationDomain: map['applicationDomain'] == null
          ? null
          : map['applicationDomain'] as String,
      attachmentType: map['attachmentType'] as String,
      cidrOptions: map['cidrOptions'] == null
          ? null
          : EndpointCidrOptions.fromMap(
              (map['cidrOptions'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      domainCertificateArn: map['domainCertificateArn'] == null
          ? null
          : map['domainCertificateArn'] as String,
      endpointDomainPrefix: map['endpointDomainPrefix'] == null
          ? null
          : map['endpointDomainPrefix'] as String,
      endpointType: map['endpointType'] as String,
      loadBalancerOptions: map['loadBalancerOptions'] == null
          ? null
          : EndpointLoadBalancerOptions.fromMap(
              (map['loadBalancerOptions'] as Map).cast<String, dynamic>()),
      networkInterfaceOptions: map['networkInterfaceOptions'] == null
          ? null
          : EndpointNetworkInterfaceOptions.fromMap(
              (map['networkInterfaceOptions'] as Map).cast<String, dynamic>()),
      policyDocument: map['policyDocument'] == null
          ? null
          : map['policyDocument'] as String,
      rdsOptions: map['rdsOptions'] == null
          ? null
          : EndpointRdsOptions.fromMap(
              (map['rdsOptions'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      sseSpecification: map['sseSpecification'] == null
          ? null
          : EndpointSseSpecification.fromMap(
              (map['sseSpecification'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      verifiedAccessGroupId: map['verifiedAccessGroupId'] as String,
    );
  }
}
