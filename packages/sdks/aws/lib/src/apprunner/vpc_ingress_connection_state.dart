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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? domainName,
    pulumi.Output<VpcIngressConnectionIngressVpcConfiguration>? ingressVpcConfiguration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceArn,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      ingressVpcConfiguration = pulumi.Input.asOptionalInput<VpcIngressConnectionIngressVpcConfiguration>(ingressVpcConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceArn = pulumi.Input.asOptionalInput<String>(serviceArn),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      ingressVpcConfiguration: map['ingressVpcConfiguration'] == null ? null : pulumi.Output.create<VpcIngressConnectionIngressVpcConfiguration>(VpcIngressConnectionIngressVpcConfiguration.fromMap((map['ingressVpcConfiguration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceArn: map['serviceArn'] == null ? null : pulumi.Output.create<String>(map['serviceArn'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

