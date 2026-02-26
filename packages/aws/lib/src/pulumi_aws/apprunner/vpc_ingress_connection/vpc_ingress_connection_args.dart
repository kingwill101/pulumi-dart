// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpc_ingress_connection_ingress_vpc_configuration/vpc_ingress_connection_ingress_vpc_configuration.dart';

/// The set of arguments for VpcIngressConnection.
class VpcIngressConnectionArgs {
  /// Specifications for the customer’s Amazon VPC and the related AWS PrivateLink VPC endpoint that are used to create the VPC Ingress Connection resource. See Ingress VPC Configuration below for more details.
  final Input<VpcIngressConnectionIngressVpcConfiguration>
      ingressVpcConfiguration;

  /// A name for the VPC Ingress Connection resource. It must be unique across all the active VPC Ingress Connections in your AWS account in the AWS Region.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) for this App Runner service that is used to create the VPC Ingress Connection resource.
  final Input<String> serviceArn;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  VpcIngressConnectionArgs({
    required this.ingressVpcConfiguration,
    this.name,
    this.region,
    required this.serviceArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ingressVpcConfiguration'] = Input.mapInputValue<
            VpcIngressConnectionIngressVpcConfiguration, Map<String, dynamic>>(
        ingressVpcConfiguration, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceArn'] = serviceArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory VpcIngressConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpcIngressConnectionArgs(
      ingressVpcConfiguration:
          Input.asInput<VpcIngressConnectionIngressVpcConfiguration>(
              map['ingressVpcConfiguration']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceArn: Input.asInput<String>(map['serviceArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
