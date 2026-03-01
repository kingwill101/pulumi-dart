// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_timeouts.dart';
import 'host_vpc_configuration.dart';

/// {@template pulumi_codeconnections_host_host_args_doc}
/// The set of arguments for Host.
/// {@endtemplate}
/// {@macro pulumi_codeconnections_host_host_args_doc}
class HostArgs {
  /// The name of the host to be created. The name must be unique in the calling AWS account.
  final pulumi.Input<String>? name;
  /// The endpoint of the infrastructure to be represented by the host after it is created.
  final pulumi.Input<String> providerEndpoint;
  /// The name of the external provider where your third-party code repository is configured.
  final pulumi.Input<String> providerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<HostTimeouts>? timeouts;
  /// The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.
  final pulumi.Input<HostVpcConfiguration>? vpcConfiguration;

  /// Creates a new [HostArgs].
  /// [name] The name of the host to be created. The name must be unique in the calling AWS account.
  /// [providerEndpoint] The endpoint of the infrastructure to be represented by the host after it is created.
  /// [providerType] The name of the external provider where your third-party code repository is configured.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  /// [timeouts] Optional.
  /// [vpcConfiguration] The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.
  HostArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> providerEndpoint,
    required pulumi.Output<String> providerType,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<HostTimeouts>? timeouts,
    pulumi.Output<HostVpcConfiguration>? vpcConfiguration,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      providerEndpoint = pulumi.Input.asInput<String>(providerEndpoint),
      providerType = pulumi.Input.asInput<String>(providerType),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<HostTimeouts>(timeouts),
      vpcConfiguration = pulumi.Input.asOptionalInput<HostVpcConfiguration>(vpcConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'providerEndpoint': providerEndpoint,
      'providerType': providerType,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<HostTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcConfiguration': ?pulumi.Input.mapOptionalInputValue<HostVpcConfiguration, Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap()),
    };
  }

  factory HostArgs.fromMap(Map<String, dynamic> map) {
    return HostArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      providerEndpoint: pulumi.Output.create<String>(map['providerEndpoint'] as String),
      providerType: pulumi.Output.create<String>(map['providerType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<HostTimeouts>(HostTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      vpcConfiguration: map['vpcConfiguration'] == null ? null : pulumi.Output.create<HostVpcConfiguration>(HostVpcConfiguration.fromMap((map['vpcConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

