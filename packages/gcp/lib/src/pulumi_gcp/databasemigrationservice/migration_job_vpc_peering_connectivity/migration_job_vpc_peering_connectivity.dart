// ignore_for_file: unused_element, unnecessary_cast

class MigrationJobVpcPeeringConnectivity {
  /// The name of the VPC network to peer with the Cloud SQL private network.
  final String? vpc;

  MigrationJobVpcPeeringConnectivity({
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final vpcValue = vpc;
    if (vpcValue != null) {
      map['vpc'] = vpcValue;
    }
    return map;
  }

  factory MigrationJobVpcPeeringConnectivity.fromMap(Map<String, dynamic> map) {
    return MigrationJobVpcPeeringConnectivity(
      vpc: map['vpc'] == null ? null : map['vpc'] as String,
    );
  }
}
