// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ingress_connection_ingress_vpc_configuration.dart';

/// {@template pulumi_apprunner_vpc_ingress_connection_vpc_ingress_connection_args_doc}
/// The set of arguments for VpcIngressConnection.
/// {@endtemplate}
/// {@macro pulumi_apprunner_vpc_ingress_connection_vpc_ingress_connection_args_doc}
class VpcIngressConnectionArgs {
  /// Specifications for the customer’s Amazon VPC and the related AWS PrivateLink VPC endpoint that are used to create the VPC Ingress Connection resource. See Ingress VPC Configuration below for more details.
  final pulumi.Input<VpcIngressConnectionIngressVpcConfiguration> ingressVpcConfiguration;
  /// A name for the VPC Ingress Connection resource. It must be unique across all the active VPC Ingress Connections in your AWS account in the AWS Region.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) for this App Runner service that is used to create the VPC Ingress Connection resource.
  final pulumi.Input<String> serviceArn;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VpcIngressConnectionArgs].
  /// [ingressVpcConfiguration] Specifications for the customer’s Amazon VPC and the related AWS PrivateLink VPC endpoint that are used to create the VPC Ingress Connection resource. See Ingress VPC Configuration below for more details.
  /// [name] A name for the VPC Ingress Connection resource. It must be unique across all the active VPC Ingress Connections in your AWS account in the AWS Region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] The Amazon Resource Name (ARN) for this App Runner service that is used to create the VPC Ingress Connection resource.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  VpcIngressConnectionArgs({
    required VpcIngressConnectionIngressVpcConfiguration ingressVpcConfiguration,
    String? name,
    String? region,
    required String serviceArn,
    Map<String, String>? tags,
  }) :
      ingressVpcConfiguration = pulumi.Input.asInput<VpcIngressConnectionIngressVpcConfiguration>(ingressVpcConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceArn = pulumi.Input.asInput<String>(serviceArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingressVpcConfiguration': pulumi.Input.mapInputValue<VpcIngressConnectionIngressVpcConfiguration, Map<String, dynamic>>(ingressVpcConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'serviceArn': serviceArn,
      'tags': ?tags,
    };
  }

  factory VpcIngressConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpcIngressConnectionArgs(
      ingressVpcConfiguration: VpcIngressConnectionIngressVpcConfiguration.fromMap((map['ingressVpcConfiguration'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serviceArn: map['serviceArn'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

