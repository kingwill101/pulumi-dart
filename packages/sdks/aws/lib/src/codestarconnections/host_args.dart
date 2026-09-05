// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_vpc_configuration.dart';

/// {@template pulumi_codestarconnections_host_host_args_doc}
/// The set of arguments for Host.
/// {@endtemplate}
/// {@macro pulumi_codestarconnections_host_host_args_doc}
class HostArgs {
  /// The name of the host to be created. The name must be unique in the calling AWS account.
  final pulumi.Input<String?>? name;
  /// The endpoint of the infrastructure to be represented by the host after it is created.
  final pulumi.Input<String> providerEndpoint;
  /// The name of the external provider where your third-party code repository is configured.
  final pulumi.Input<String> providerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.
  final pulumi.Input<HostVpcConfiguration?>? vpcConfiguration;

  /// Creates a new [HostArgs].
  /// [name] The name of the host to be created. The name must be unique in the calling AWS account.
  /// [providerEndpoint] The endpoint of the infrastructure to be represented by the host after it is created.
  /// [providerType] The name of the external provider where your third-party code repository is configured.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcConfiguration] The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.
  const HostArgs({
    this.name,
    required this.providerEndpoint,
    required this.providerType,
    this.region,
    this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'providerEndpoint': providerEndpoint,
      'providerType': providerType,
      'region': ?region,
      'vpcConfiguration': ?pulumi.Input.mapOptionalInputValue<HostVpcConfiguration, Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap()),
    };
  }

  factory HostArgs.fromMap(Map<String, dynamic> map) {
    return HostArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerEndpoint: pulumi.Input.fromValue(map['providerEndpoint'] as String),
      providerType: pulumi.Input.fromValue(map['providerType'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcConfiguration: (() { final guardedValue = map['vpcConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
