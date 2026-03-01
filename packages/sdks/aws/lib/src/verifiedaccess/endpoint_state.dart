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
    pulumi.Output<String>? applicationDomain,
    pulumi.Output<String>? attachmentType,
    pulumi.Output<EndpointCidrOptions>? cidrOptions,
    pulumi.Output<String>? description,
    pulumi.Output<String>? deviceValidationDomain,
    pulumi.Output<String>? domainCertificateArn,
    pulumi.Output<String>? endpointDomain,
    pulumi.Output<String>? endpointDomainPrefix,
    pulumi.Output<String>? endpointType,
    pulumi.Output<EndpointLoadBalancerOptions>? loadBalancerOptions,
    pulumi.Output<EndpointNetworkInterfaceOptions>? networkInterfaceOptions,
    pulumi.Output<String>? policyDocument,
    pulumi.Output<EndpointRdsOptions>? rdsOptions,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<EndpointSseSpecification>? sseSpecification,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? verifiedAccessGroupId,
    pulumi.Output<String>? verifiedAccessInstanceId,
  }) :
      applicationDomain = pulumi.Input.asOptionalInput<String>(applicationDomain),
      attachmentType = pulumi.Input.asOptionalInput<String>(attachmentType),
      cidrOptions = pulumi.Input.asOptionalInput<EndpointCidrOptions>(cidrOptions),
      description = pulumi.Input.asOptionalInput<String>(description),
      deviceValidationDomain = pulumi.Input.asOptionalInput<String>(deviceValidationDomain),
      domainCertificateArn = pulumi.Input.asOptionalInput<String>(domainCertificateArn),
      endpointDomain = pulumi.Input.asOptionalInput<String>(endpointDomain),
      endpointDomainPrefix = pulumi.Input.asOptionalInput<String>(endpointDomainPrefix),
      endpointType = pulumi.Input.asOptionalInput<String>(endpointType),
      loadBalancerOptions = pulumi.Input.asOptionalInput<EndpointLoadBalancerOptions>(loadBalancerOptions),
      networkInterfaceOptions = pulumi.Input.asOptionalInput<EndpointNetworkInterfaceOptions>(networkInterfaceOptions),
      policyDocument = pulumi.Input.asOptionalInput<String>(policyDocument),
      rdsOptions = pulumi.Input.asOptionalInput<EndpointRdsOptions>(rdsOptions),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      sseSpecification = pulumi.Input.asOptionalInput<EndpointSseSpecification>(sseSpecification),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      verifiedAccessGroupId = pulumi.Input.asOptionalInput<String>(verifiedAccessGroupId),
      verifiedAccessInstanceId = pulumi.Input.asOptionalInput<String>(verifiedAccessInstanceId);

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
      applicationDomain: map['applicationDomain'] == null ? null : pulumi.Output.create<String>(map['applicationDomain'] as String),
      attachmentType: map['attachmentType'] == null ? null : pulumi.Output.create<String>(map['attachmentType'] as String),
      cidrOptions: map['cidrOptions'] == null ? null : pulumi.Output.create<EndpointCidrOptions>(EndpointCidrOptions.fromMap((map['cidrOptions'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      deviceValidationDomain: map['deviceValidationDomain'] == null ? null : pulumi.Output.create<String>(map['deviceValidationDomain'] as String),
      domainCertificateArn: map['domainCertificateArn'] == null ? null : pulumi.Output.create<String>(map['domainCertificateArn'] as String),
      endpointDomain: map['endpointDomain'] == null ? null : pulumi.Output.create<String>(map['endpointDomain'] as String),
      endpointDomainPrefix: map['endpointDomainPrefix'] == null ? null : pulumi.Output.create<String>(map['endpointDomainPrefix'] as String),
      endpointType: map['endpointType'] == null ? null : pulumi.Output.create<String>(map['endpointType'] as String),
      loadBalancerOptions: map['loadBalancerOptions'] == null ? null : pulumi.Output.create<EndpointLoadBalancerOptions>(EndpointLoadBalancerOptions.fromMap((map['loadBalancerOptions'] as Map).cast<String, dynamic>())),
      networkInterfaceOptions: map['networkInterfaceOptions'] == null ? null : pulumi.Output.create<EndpointNetworkInterfaceOptions>(EndpointNetworkInterfaceOptions.fromMap((map['networkInterfaceOptions'] as Map).cast<String, dynamic>())),
      policyDocument: map['policyDocument'] == null ? null : pulumi.Output.create<String>(map['policyDocument'] as String),
      rdsOptions: map['rdsOptions'] == null ? null : pulumi.Output.create<EndpointRdsOptions>(EndpointRdsOptions.fromMap((map['rdsOptions'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      sseSpecification: map['sseSpecification'] == null ? null : pulumi.Output.create<EndpointSseSpecification>(EndpointSseSpecification.fromMap((map['sseSpecification'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      verifiedAccessGroupId: map['verifiedAccessGroupId'] == null ? null : pulumi.Output.create<String>(map['verifiedAccessGroupId'] as String),
      verifiedAccessInstanceId: map['verifiedAccessInstanceId'] == null ? null : pulumi.Output.create<String>(map['verifiedAccessInstanceId'] as String),
    );
  }
}

