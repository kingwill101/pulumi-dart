// ignore_for_file: unused_element, unnecessary_cast

/// The details needed to configure a reverse SSH tunnel between the source and destination databases. These details will be used when calling the generateSshScript method (see https://cloud.google.com/database-migration/docs/reference/rest/v1beta1/projects.locations.migrationJobs/generateSshScript) to produce the script that will help set up the reverse SSH tunnel, and to set up the VPC peering between the Cloud SQL private network and the VPC.
class ReverseSshConnectivityDatamigrationV1beta1 {
  /// The name of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  final String? vm;

  /// The IP of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  final String vmIp;

  /// The forwarding port of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  final int vmPort;

  /// The name of the VPC to peer with the Cloud SQL private network.
  final String? vpc;

  /// Creates a new [ReverseSshConnectivityDatamigrationV1beta1].
  /// [vm] The name of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  /// [vmIp] The IP of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  /// [vmPort] The forwarding port of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  /// [vpc] The name of the VPC to peer with the Cloud SQL private network.
  ReverseSshConnectivityDatamigrationV1beta1({
    this.vm,
    required this.vmIp,
    required this.vmPort,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vm': ?vm,
      'vmIp': vmIp,
      'vmPort': vmPort,
      'vpc': ?vpc,
    };
  }

  factory ReverseSshConnectivityDatamigrationV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReverseSshConnectivityDatamigrationV1beta1(
      vm: map['vm'] == null ? null : map['vm'] as String,
      vmIp: map['vmIp'] as String,
      vmPort: map['vmPort'] as int,
      vpc: map['vpc'] == null ? null : map['vpc'] as String,
    );
  }
}
