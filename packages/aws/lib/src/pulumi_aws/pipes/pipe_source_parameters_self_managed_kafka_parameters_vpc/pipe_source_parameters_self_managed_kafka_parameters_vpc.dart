// ignore_for_file: unused_element, unnecessary_cast

class PipeSourceParametersSelfManagedKafkaParametersVpc {
  final List<String>? securityGroups;
  final List<String>? subnets;

  PipeSourceParametersSelfManagedKafkaParametersVpc({
    this.securityGroups,
    this.subnets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    final subnetsValue = subnets;
    if (subnetsValue != null) {
      map['subnets'] = subnetsValue;
    }
    return map;
  }

  factory PipeSourceParametersSelfManagedKafkaParametersVpc.fromMap(
      Map<String, dynamic> map) {
    return PipeSourceParametersSelfManagedKafkaParametersVpc(
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      subnets: map['subnets'] == null
          ? null
          : (map['subnets'] as List).cast<String>(),
    );
  }
}
