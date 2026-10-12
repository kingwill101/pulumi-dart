// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeSourceParametersSelfManagedKafkaParametersVpc {
  /// List of security groups associated with the stream. These security groups must all be in the same VPC. You can specify as many as five security groups. If you do not specify a security group, the default security group for the VPC is used.
  final pulumi.Input<List<String>?>? securityGroups;
  /// List of the subnets associated with the stream. These subnets must all be in the same VPC. You can specify as many as 16 subnets.
  final pulumi.Input<List<String>?>? subnets;

  /// Creates a new [PipeSourceParametersSelfManagedKafkaParametersVpc].
  /// [securityGroups] List of security groups associated with the stream. These security groups must all be in the same VPC. You can specify as many as five security groups. If you do not specify a security group, the default security group for the VPC is used.
  /// [subnets] List of the subnets associated with the stream. These subnets must all be in the same VPC. You can specify as many as 16 subnets.
  const PipeSourceParametersSelfManagedKafkaParametersVpc({
    this.securityGroups,
    this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroups': ?securityGroups,
      'subnets': ?subnets,
    };
  }

  factory PipeSourceParametersSelfManagedKafkaParametersVpc.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersSelfManagedKafkaParametersVpc(
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
