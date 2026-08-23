// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ingress_connection_ingress_vpc_configuration.dart';

/// Input properties used for looking up and filtering VpcIngressConnection resources.
class VpcIngressConnectionState {
  /// Amazon Resource Name (ARN) of the VPC Ingress Connection.
  final pulumi.Input<String>? arn;
  /// Domain name associated with the VPC Ingress Connection resource.
  final pulumi.Input<String>? domainName;
  /// Specifications for the customer’s Amazon VPC and the related AWS PrivateLink VPC endpoint that are used to create the VPC Ingress Connection resource. See `ingressVpcConfiguration` Block below for more details.
  final pulumi.Input<VpcIngressConnectionIngressVpcConfiguration>? ingressVpcConfiguration;
  /// Name for the VPC Ingress Connection resource. It must be unique across all the active VPC Ingress Connections in your AWS account in the AWS Region.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) for this App Runner service that is used to create the VPC Ingress Connection resource.
  final pulumi.Input<String>? serviceArn;
  /// Current status of the VPC Ingress Connection.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [VpcIngressConnectionState].
  /// [arn] Amazon Resource Name (ARN) of the VPC Ingress Connection.
  /// [domainName] Domain name associated with the VPC Ingress Connection resource.
  /// [ingressVpcConfiguration] Specifications for the customer’s Amazon VPC and the related AWS PrivateLink VPC endpoint that are used to create the VPC Ingress Connection resource. See `ingressVpcConfiguration` Block below for more details.
  /// [name] Name for the VPC Ingress Connection resource. It must be unique across all the active VPC Ingress Connections in your AWS account in the AWS Region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] Amazon Resource Name (ARN) for this App Runner service that is used to create the VPC Ingress Connection resource.
  /// [status] Current status of the VPC Ingress Connection.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const VpcIngressConnectionState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressVpcConfiguration: (() { final guardedValue = map['ingressVpcConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcIngressConnectionIngressVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceArn: (() { final guardedValue = map['serviceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
