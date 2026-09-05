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
  final pulumi.Input<String?>? applicationDomain;
  /// The type of attachment. Currently, only `vpc` is supported.
  final pulumi.Input<String> attachmentType;
  /// The CIDR block details. This parameter is required if the endpoint type is `cidr`.
  final pulumi.Input<EndpointCidrOptions?>? cidrOptions;
  /// A description for the Verified Access endpoint.
  final pulumi.Input<String?>? description;
  /// The ARN of the public TLS/SSL certificate in AWS Certificate Manager to associate with the endpoint. The CN in the certificate must match the DNS name your end users will use to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  final pulumi.Input<String?>? domainCertificateArn;
  /// A custom identifier that is prepended to the DNS name that is generated for the endpoint.
  final pulumi.Input<String?>? endpointDomainPrefix;
  /// The type of Verified Access endpoint to create. Currently `load-balancer` or `network-interface` are supported.
  final pulumi.Input<String> endpointType;
  /// The load balancer details. This parameter is required if the endpoint type is `load-balancer`.
  final pulumi.Input<EndpointLoadBalancerOptions?>? loadBalancerOptions;
  /// The network interface details. This parameter is required if the endpoint type is `network-interface`.
  final pulumi.Input<EndpointNetworkInterfaceOptions?>? networkInterfaceOptions;
  /// The policy document that is associated with this resource.
  final pulumi.Input<String?>? policyDocument;
  final pulumi.Input<EndpointRdsOptions?>? rdsOptions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// List of the the security groups IDs to associate with the Verified Access endpoint.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// The options in use for server side encryption.
  final pulumi.Input<EndpointSseSpecification?>? sseSpecification;
  /// Key-value tags for the Verified Access Endpoint. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
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
  /// [tags] Key-value tags for the Verified Access Endpoint. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [verifiedAccessGroupId] The ID of the Verified Access group to associate the endpoint with.
  const EndpointArgs({
    this.applicationDomain,
    required this.attachmentType,
    this.cidrOptions,
    this.description,
    this.domainCertificateArn,
    this.endpointDomainPrefix,
    required this.endpointType,
    this.loadBalancerOptions,
    this.networkInterfaceOptions,
    this.policyDocument,
    this.rdsOptions,
    this.region,
    this.securityGroupIds,
    this.sseSpecification,
    this.tags,
    required this.verifiedAccessGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDomain': ?applicationDomain,
      'attachmentType': attachmentType,
      'cidrOptions': ?pulumi.Input.mapOptionalInputValue<EndpointCidrOptions, Map<String, dynamic>>(cidrOptions, (value) => value.toMap()),
      'description': ?description,
      'domainCertificateArn': ?domainCertificateArn,
      'endpointDomainPrefix': ?endpointDomainPrefix,
      'endpointType': endpointType,
      'loadBalancerOptions': ?pulumi.Input.mapOptionalInputValue<EndpointLoadBalancerOptions, Map<String, dynamic>>(loadBalancerOptions, (value) => value.toMap()),
      'networkInterfaceOptions': ?pulumi.Input.mapOptionalInputValue<EndpointNetworkInterfaceOptions, Map<String, dynamic>>(networkInterfaceOptions, (value) => value.toMap()),
      'policyDocument': ?policyDocument,
      'rdsOptions': ?pulumi.Input.mapOptionalInputValue<EndpointRdsOptions, Map<String, dynamic>>(rdsOptions, (value) => value.toMap()),
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'sseSpecification': ?pulumi.Input.mapOptionalInputValue<EndpointSseSpecification, Map<String, dynamic>>(sseSpecification, (value) => value.toMap()),
      'tags': ?tags,
      'verifiedAccessGroupId': verifiedAccessGroupId,
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      applicationDomain: (() { final guardedValue = map['applicationDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attachmentType: pulumi.Input.fromValue(map['attachmentType'] as String),
      cidrOptions: (() { final guardedValue = map['cidrOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointCidrOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainCertificateArn: (() { final guardedValue = map['domainCertificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointDomainPrefix: (() { final guardedValue = map['endpointDomainPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      loadBalancerOptions: (() { final guardedValue = map['loadBalancerOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointLoadBalancerOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkInterfaceOptions: (() { final guardedValue = map['networkInterfaceOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointNetworkInterfaceOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyDocument: (() { final guardedValue = map['policyDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdsOptions: (() { final guardedValue = map['rdsOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointRdsOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sseSpecification: (() { final guardedValue = map['sseSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointSseSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      verifiedAccessGroupId: pulumi.Input.fromValue(map['verifiedAccessGroupId'] as String),
    );
  }
}
