// ignore_for_file: unused_element, unnecessary_cast


class MigrationJobReverseSshConnectivity {
  /// The name of the virtual machine (Compute Engine) used as the bastion server
  /// for the SSH tunnel.
  final String? vm;
  /// The IP of the virtual machine (Compute Engine) used as the bastion server
  /// for the SSH tunnel.
  final String? vmIp;
  /// The forwarding port of the virtual machine (Compute Engine) used as the
  /// bastion server for the SSH tunnel.
  final int? vmPort;
  /// The name of the VPC to peer with the Cloud SQL private network.
  final String? vpc;

  /// Creates a new [MigrationJobReverseSshConnectivity].
  /// [vm] The name of the virtual machine (Compute Engine) used as the bastion server
  /// [vmIp] The IP of the virtual machine (Compute Engine) used as the bastion server
  /// [vmPort] The forwarding port of the virtual machine (Compute Engine) used as the
  /// [vpc] The name of the VPC to peer with the Cloud SQL private network.
  MigrationJobReverseSshConnectivity({
    this.vm,
    this.vmIp,
    this.vmPort,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vm': ?vm,
      'vmIp': ?vmIp,
      'vmPort': ?vmPort,
      'vpc': ?vpc,
    };
  }

  factory MigrationJobReverseSshConnectivity.fromMap(Map<String, dynamic> map) {
    return MigrationJobReverseSshConnectivity(
      vm: map['vm'] == null ? null : map['vm'] as String,
      vmIp: map['vmIp'] == null ? null : map['vmIp'] as String,
      vmPort: map['vmPort'] == null ? null : map['vmPort'] as int,
      vpc: map['vpc'] == null ? null : map['vpc'] as String,
    );
  }
}

