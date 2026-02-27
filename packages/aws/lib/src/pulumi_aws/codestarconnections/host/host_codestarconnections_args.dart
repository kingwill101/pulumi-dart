// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../host_vpc_configuration/host_vpc_configuration_codestarconnections.dart';

/// The set of arguments for Host.
class HostCodestarconnectionsArgs {
  /// The name of the host to be created. The name must be unique in the calling AWS account.
  final pulumi.Input<String>? name;

  /// The endpoint of the infrastructure to be represented by the host after it is created.
  final pulumi.Input<String> providerEndpoint;

  /// The name of the external provider where your third-party code repository is configured.
  final pulumi.Input<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.
  final pulumi.Input<HostVpcConfigurationCodestarconnections>? vpcConfiguration;

  HostCodestarconnectionsArgs({
    this.name,
    required this.providerEndpoint,
    required this.providerType,
    this.region,
    this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['providerEndpoint'] = providerEndpoint;
    map['providerType'] = providerType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final vpcConfigurationValue = vpcConfiguration;
    if (vpcConfigurationValue != null) {
      map['vpcConfiguration'] = pulumi.Input.mapOptionalInputValue<
              HostVpcConfigurationCodestarconnections, Map<String, dynamic>>(
          vpcConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory HostCodestarconnectionsArgs.fromMap(Map<String, dynamic> map) {
    return HostCodestarconnectionsArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      providerEndpoint: pulumi.Input.asInput<String>(map['providerEndpoint']),
      providerType: pulumi.Input.asInput<String>(map['providerType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpcConfiguration:
          pulumi.Input.asOptionalInput<HostVpcConfigurationCodestarconnections>(
              map['vpcConfiguration']),
    );
  }
}
