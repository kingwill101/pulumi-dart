// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_vpc_configuration.dart';

/// {@template pulumi_codestarconnections_host_host_args_doc}
/// The set of arguments for Host.
/// {@endtemplate}
/// {@macro pulumi_codestarconnections_host_host_args_doc}
class HostArgs {
  /// The name of the host to be created. The name must be unique in the calling AWS account.
  final pulumi.Input<String>? name;
  /// The endpoint of the infrastructure to be represented by the host after it is created.
  final pulumi.Input<String> providerEndpoint;
  /// The name of the external provider where your third-party code repository is configured.
  final pulumi.Input<String> providerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.
  final pulumi.Input<HostVpcConfiguration>? vpcConfiguration;

  /// Creates a new [HostArgs].
  /// [name] The name of the host to be created. The name must be unique in the calling AWS account.
  /// [providerEndpoint] The endpoint of the infrastructure to be represented by the host after it is created.
  /// [providerType] The name of the external provider where your third-party code repository is configured.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcConfiguration] The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.
  HostArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> providerEndpoint,
    required pulumi.Output<String> providerType,
    pulumi.Output<String>? region,
    pulumi.Output<HostVpcConfiguration>? vpcConfiguration,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      providerEndpoint = pulumi.Input.asInput<String>(providerEndpoint),
      providerType = pulumi.Input.asInput<String>(providerType),
      region = pulumi.Input.asOptionalInput<String>(region),
      vpcConfiguration = pulumi.Input.asOptionalInput<HostVpcConfiguration>(vpcConfiguration);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      providerEndpoint: pulumi.Output.create<String>(map['providerEndpoint'] as String),
      providerType: pulumi.Output.create<String>(map['providerType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      vpcConfiguration: map['vpcConfiguration'] == null ? null : pulumi.Output.create<HostVpcConfiguration>(HostVpcConfiguration.fromMap((map['vpcConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

