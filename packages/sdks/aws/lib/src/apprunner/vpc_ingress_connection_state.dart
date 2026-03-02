// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ingress_connection_ingress_vpc_configuration.dart';

/// Input properties used for looking up and filtering VpcIngressConnection resources.
class VpcIngressConnectionState {
  /// The Amazon Resource Name (ARN) of the VPC Ingress Connection.
  final pulumi.Input<String>? arn;
  /// The domain name associated with the VPC Ingress Connection resource.
  final pulumi.Input<String>? domainName;
  /// Specifications for the customer’s Amazon VPC and the related AWS PrivateLink VPC endpoint that are used to create the VPC Ingress Connection resource. See Ingress VPC Configuration below for more details.
  final pulumi.Input<VpcIngressConnectionIngressVpcConfiguration>? ingressVpcConfiguration;
  /// A name for the VPC Ingress Connection resource. It must be unique across all the active VPC Ingress Connections in your AWS account in the AWS Region.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) for this App Runner service that is used to create the VPC Ingress Connection resource.
  final pulumi.Input<String>? serviceArn;
  /// The current status of the VPC Ingress Connection.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [VpcIngressConnectionState].
  /// [arn] The Amazon Resource Name (ARN) of the VPC Ingress Connection.
  /// [domainName] The domain name associated with the VPC Ingress Connection resource.
  /// [ingressVpcConfiguration] Specifications for the customer’s Amazon VPC and the related AWS PrivateLink VPC endpoint that are used to create the VPC Ingress Connection resource. See Ingress VPC Configuration below for more details.
  /// [name] A name for the VPC Ingress Connection resource. It must be unique across all the active VPC Ingress Connections in your AWS account in the AWS Region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] The Amazon Resource Name (ARN) for this App Runner service that is used to create the VPC Ingress Connection resource.
  /// [status] The current status of the VPC Ingress Connection.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  VpcIngressConnectionState({
    this.arn,
    this.domainName,
    this.ingressVpcConfiguration,
    this.name,
    this.region,
    this.serviceArn,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'domainName': ?domainName,
      'ingressVpcConfiguration': ?pulumi.Input.mapOptionalInputValue<VpcIngressConnectionIngressVpcConfiguration, Map<String, dynamic>>(ingressVpcConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'serviceArn': ?serviceArn,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory VpcIngressConnectionState.fromMap(Map<String, dynamic> map) {
    return VpcIngressConnectionState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      domainName: map['domainName'] == null ? null : ((map['domainName'] as String).input()).input(),
      ingressVpcConfiguration: map['ingressVpcConfiguration'] == null ? null : ((VpcIngressConnectionIngressVpcConfiguration.fromMap((map['ingressVpcConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serviceArn: map['serviceArn'] == null ? null : ((map['serviceArn'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

