// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_cidr_options.dart';
import 'endpoint_load_balancer_options.dart';
import 'endpoint_network_interface_options.dart';
import 'endpoint_rds_options.dart';
import 'endpoint_sse_specification.dart';

/// Input properties used for looking up and filtering Endpoint resources.
class EndpointState {
  /// The DNS name for users to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  final pulumi.Input<String>? applicationDomain;
  /// The type of attachment. Currently, only `vpc` is supported.
  final pulumi.Input<String>? attachmentType;
  /// The CIDR block details. This parameter is required if the endpoint type is `cidr`.
  final pulumi.Input<EndpointCidrOptions>? cidrOptions;
  /// A description for the Verified Access endpoint.
  final pulumi.Input<String>? description;
  /// Returned if endpoint has a device trust provider attached.
  final pulumi.Input<String>? deviceValidationDomain;
  /// The ARN of the public TLS/SSL certificate in AWS Certificate Manager to associate with the endpoint. The CN in the certificate must match the DNS name your end users will use to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  final pulumi.Input<String>? domainCertificateArn;
  /// A DNS name that is generated for the endpoint.
  final pulumi.Input<String>? endpointDomain;
  /// A custom identifier that is prepended to the DNS name that is generated for the endpoint.
  final pulumi.Input<String>? endpointDomainPrefix;
  /// The type of Verified Access endpoint to create. Currently `load-balancer` or `network-interface` are supported.
  final pulumi.Input<String>? endpointType;
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
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ID of the Verified Access group to associate the endpoint with.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? verifiedAccessGroupId;
  final pulumi.Input<String>? verifiedAccessInstanceId;

  /// Creates a new [EndpointState].
  /// [applicationDomain] The DNS name for users to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  /// [attachmentType] The type of attachment. Currently, only `vpc` is supported.
  /// [cidrOptions] The CIDR block details. This parameter is required if the endpoint type is `cidr`.
  /// [description] A description for the Verified Access endpoint.
  /// [deviceValidationDomain] Returned if endpoint has a device trust provider attached.
  /// [domainCertificateArn] The ARN of the public TLS/SSL certificate in AWS Certificate Manager to associate with the endpoint. The CN in the certificate must match the DNS name your end users will use to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  /// [endpointDomain] A DNS name that is generated for the endpoint.
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
  /// [tagsAll] Optional.
  /// [verifiedAccessGroupId] The ID of the Verified Access group to associate the endpoint with.
  /// [verifiedAccessInstanceId] Optional.
  EndpointState({
    this.applicationDomain,
    this.attachmentType,
    this.cidrOptions,
    this.description,
    this.deviceValidationDomain,
    this.domainCertificateArn,
    this.endpointDomain,
    this.endpointDomainPrefix,
    this.endpointType,
    this.loadBalancerOptions,
    this.networkInterfaceOptions,
    this.policyDocument,
    this.rdsOptions,
    this.region,
    this.securityGroupIds,
    this.sseSpecification,
    this.tags,
    this.tagsAll,
    this.verifiedAccessGroupId,
    this.verifiedAccessInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDomain': ?applicationDomain,
      'attachmentType': ?attachmentType,
      'cidrOptions': ?pulumi.Input.mapOptionalInputValue<EndpointCidrOptions, Map<String, dynamic>>(cidrOptions, (value) => value.toMap()),
      'description': ?description,
      'deviceValidationDomain': ?deviceValidationDomain,
      'domainCertificateArn': ?domainCertificateArn,
      'endpointDomain': ?endpointDomain,
      'endpointDomainPrefix': ?endpointDomainPrefix,
      'endpointType': ?endpointType,
      'loadBalancerOptions': ?pulumi.Input.mapOptionalInputValue<EndpointLoadBalancerOptions, Map<String, dynamic>>(loadBalancerOptions, (value) => value.toMap()),
      'networkInterfaceOptions': ?pulumi.Input.mapOptionalInputValue<EndpointNetworkInterfaceOptions, Map<String, dynamic>>(networkInterfaceOptions, (value) => value.toMap()),
      'policyDocument': ?policyDocument,
      'rdsOptions': ?pulumi.Input.mapOptionalInputValue<EndpointRdsOptions, Map<String, dynamic>>(rdsOptions, (value) => value.toMap()),
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'sseSpecification': ?pulumi.Input.mapOptionalInputValue<EndpointSseSpecification, Map<String, dynamic>>(sseSpecification, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'verifiedAccessGroupId': ?verifiedAccessGroupId,
      'verifiedAccessInstanceId': ?verifiedAccessInstanceId,
    };
  }

  factory EndpointState.fromMap(Map<String, dynamic> map) {
    return EndpointState(
      applicationDomain: map['applicationDomain'] == null ? null : ((map['applicationDomain'] as String).input()).input(),
      attachmentType: map['attachmentType'] == null ? null : ((map['attachmentType'] as String).input()).input(),
      cidrOptions: map['cidrOptions'] == null ? null : ((EndpointCidrOptions.fromMap((map['cidrOptions']! as Map).cast<String, dynamic>())).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      deviceValidationDomain: map['deviceValidationDomain'] == null ? null : ((map['deviceValidationDomain'] as String).input()).input(),
      domainCertificateArn: map['domainCertificateArn'] == null ? null : ((map['domainCertificateArn'] as String).input()).input(),
      endpointDomain: map['endpointDomain'] == null ? null : ((map['endpointDomain'] as String).input()).input(),
      endpointDomainPrefix: map['endpointDomainPrefix'] == null ? null : ((map['endpointDomainPrefix'] as String).input()).input(),
      endpointType: map['endpointType'] == null ? null : ((map['endpointType'] as String).input()).input(),
      loadBalancerOptions: map['loadBalancerOptions'] == null ? null : ((EndpointLoadBalancerOptions.fromMap((map['loadBalancerOptions']! as Map).cast<String, dynamic>())).input()).input(),
      networkInterfaceOptions: map['networkInterfaceOptions'] == null ? null : ((EndpointNetworkInterfaceOptions.fromMap((map['networkInterfaceOptions']! as Map).cast<String, dynamic>())).input()).input(),
      policyDocument: map['policyDocument'] == null ? null : ((map['policyDocument'] as String).input()).input(),
      rdsOptions: map['rdsOptions'] == null ? null : ((EndpointRdsOptions.fromMap((map['rdsOptions']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (((map['securityGroupIds'] as List).cast<String>()).input()).input(),
      sseSpecification: map['sseSpecification'] == null ? null : ((EndpointSseSpecification.fromMap((map['sseSpecification']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      verifiedAccessGroupId: map['verifiedAccessGroupId'] == null ? null : ((map['verifiedAccessGroupId'] as String).input()).input(),
      verifiedAccessInstanceId: map['verifiedAccessInstanceId'] == null ? null : ((map['verifiedAccessInstanceId'] as String).input()).input(),
    );
  }
}

