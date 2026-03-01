// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_timeouts.dart';
import 'host_vpc_configuration.dart';

/// Input properties used for looking up and filtering Host resources.
class HostState {
  /// The CodeConnections Host ARN.
  final pulumi.Input<String>? arn;
  /// The name of the host to be created. The name must be unique in the calling AWS account.
  final pulumi.Input<String>? name;
  /// The endpoint of the infrastructure to be represented by the host after it is created.
  final pulumi.Input<String>? providerEndpoint;
  /// The name of the external provider where your third-party code repository is configured.
  final pulumi.Input<String>? providerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<HostTimeouts>? timeouts;
  /// The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.
  final pulumi.Input<HostVpcConfiguration>? vpcConfiguration;

  /// Creates a new [HostState].
  /// [arn] The CodeConnections Host ARN.
  /// [name] The name of the host to be created. The name must be unique in the calling AWS account.
  /// [providerEndpoint] The endpoint of the infrastructure to be represented by the host after it is created.
  /// [providerType] The name of the external provider where your third-party code repository is configured.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  /// [vpcConfiguration] The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.
  HostState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? providerEndpoint,
    pulumi.Output<String>? providerType,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<HostTimeouts>? timeouts,
    pulumi.Output<HostVpcConfiguration>? vpcConfiguration,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      providerEndpoint = pulumi.Input.asOptionalInput<String>(providerEndpoint),
      providerType = pulumi.Input.asOptionalInput<String>(providerType),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<HostTimeouts>(timeouts),
      vpcConfiguration = pulumi.Input.asOptionalInput<HostVpcConfiguration>(vpcConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'providerEndpoint': ?providerEndpoint,
      'providerType': ?providerType,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<HostTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcConfiguration': ?pulumi.Input.mapOptionalInputValue<HostVpcConfiguration, Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap()),
    };
  }

  factory HostState.fromMap(Map<String, dynamic> map) {
    return HostState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      providerEndpoint: map['providerEndpoint'] == null ? null : pulumi.Output.create<String>(map['providerEndpoint'] as String),
      providerType: map['providerType'] == null ? null : pulumi.Output.create<String>(map['providerType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<HostTimeouts>(HostTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      vpcConfiguration: map['vpcConfiguration'] == null ? null : pulumi.Output.create<HostVpcConfiguration>(HostVpcConfiguration.fromMap((map['vpcConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

