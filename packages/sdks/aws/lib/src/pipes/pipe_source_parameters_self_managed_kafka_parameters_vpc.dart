// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeSourceParametersSelfManagedKafkaParametersVpc {
  final pulumi.Input<List<String>>? securityGroups;
  final pulumi.Input<List<String>>? subnets;

  /// Creates a new [PipeSourceParametersSelfManagedKafkaParametersVpc].
  /// [securityGroups] Optional.
  /// [subnets] Optional.
  PipeSourceParametersSelfManagedKafkaParametersVpc({
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

