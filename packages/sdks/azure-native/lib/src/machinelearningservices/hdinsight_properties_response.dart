// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_ssh_credentials_response.dart';

/// HDInsight compute properties
class HDInsightPropertiesResponse {
  /// Public IP address of the master node of the cluster.
  final String? address;
  /// Admin credentials for master node of the cluster
  final VirtualMachineSshCredentialsResponse? administratorAccount;
  /// Port open for ssh connections on the master node of the cluster.
  final int? sshPort;

  /// Creates a new [HDInsightPropertiesResponse].
  /// [address] Public IP address of the master node of the cluster.
  /// [administratorAccount] Admin credentials for master node of the cluster
  /// [sshPort] Port open for ssh connections on the master node of the cluster.
  HDInsightPropertiesResponse({
    this.address,
    this.administratorAccount,
    this.sshPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'administratorAccount': ?administratorAccount == null ? null : administratorAccount!.toMap(),
      'sshPort': ?sshPort,
    };
  }

  factory HDInsightPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HDInsightPropertiesResponse(
      address: map['address'] == null ? null : map['address'] as String,
      administratorAccount: map['administratorAccount'] == null ? null : VirtualMachineSshCredentialsResponse.fromMap((map['administratorAccount'] as Map).cast<String, dynamic>()),
      sshPort: map['sshPort'] == null ? null : map['sshPort'] as int,
    );
  }
}

