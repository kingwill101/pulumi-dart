// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_vpc_configuration.dart';

/// Input properties used for looking up and filtering Host resources.
class HostState {
  /// The CodeStar Host ARN.
  final pulumi.Input<String>? arn;
  /// The name of the host to be created. The name must be unique in the calling AWS account.
  final pulumi.Input<String>? name;
  /// The endpoint of the infrastructure to be represented by the host after it is created.
  final pulumi.Input<String>? providerEndpoint;
  /// The name of the external provider where your third-party code repository is configured.
  final pulumi.Input<String>? providerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The CodeStar Host status. Possible values are `PENDING`, `AVAILABLE`, `VPC_CONFIG_DELETING`, `VPC_CONFIG_INITIALIZING`, and `VPC_CONFIG_FAILED_INITIALIZATION`.
  final pulumi.Input<String>? status;
  /// The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.
  final pulumi.Input<HostVpcConfiguration>? vpcConfiguration;

  /// Creates a new [HostState].
  /// [arn] The CodeStar Host ARN.
  /// [name] The name of the host to be created. The name must be unique in the calling AWS account.
  /// [providerEndpoint] The endpoint of the infrastructure to be represented by the host after it is created.
  /// [providerType] The name of the external provider where your third-party code repository is configured.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The CodeStar Host status. Possible values are `PENDING`, `AVAILABLE`, `VPC_CONFIG_DELETING`, `VPC_CONFIG_INITIALIZING`, and `VPC_CONFIG_FAILED_INITIALIZATION`.
  /// [vpcConfiguration] The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.
  const HostState({
    this.arn,
    this.name,
    this.providerEndpoint,
    this.providerType,
    this.region,
    this.status,
    this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'providerEndpoint': ?providerEndpoint,
      'providerType': ?providerType,
      'region': ?region,
      'status': ?status,
      'vpcConfiguration': ?pulumi.Input.mapOptionalInputValue<HostVpcConfiguration, Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap()),
    };
  }

  factory HostState.fromMap(Map<String, dynamic> map) {
    return HostState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerEndpoint: (() { final guardedValue = map['providerEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerType: (() { final guardedValue = map['providerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcConfiguration: (() { final guardedValue = map['vpcConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
