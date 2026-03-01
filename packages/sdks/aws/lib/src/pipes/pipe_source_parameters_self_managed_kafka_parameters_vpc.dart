// ignore_for_file: unused_element, unnecessary_cast


class PipeSourceParametersSelfManagedKafkaParametersVpc {
  final List<String>? securityGroups;
  final List<String>? subnets;

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
      securityGroups: map['securityGroups'] == null ? null : (map['securityGroups'] as List).cast<String>(),
      subnets: map['subnets'] == null ? null : (map['subnets'] as List).cast<String>(),
    );
  }
}

