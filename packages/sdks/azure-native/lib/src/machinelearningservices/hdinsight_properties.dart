// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_ssh_credentials.dart';

/// HDInsight compute properties
class HDInsightProperties {
  /// Public IP address of the master node of the cluster.
  final pulumi.Input<String>? address;
  /// Admin credentials for master node of the cluster
  final pulumi.Input<VirtualMachineSshCredentials>? administratorAccount;
  /// Port open for ssh connections on the master node of the cluster.
  final pulumi.Input<int>? sshPort;

  /// Creates a new [HDInsightProperties].
  /// [address] Public IP address of the master node of the cluster.
  /// [administratorAccount] Admin credentials for master node of the cluster
  /// [sshPort] Port open for ssh connections on the master node of the cluster.
  HDInsightProperties({
    this.address,
    this.administratorAccount,
    this.sshPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'administratorAccount': ?pulumi.Input.mapOptionalInputValue<VirtualMachineSshCredentials, Map<String, dynamic>>(administratorAccount, (value) => value.toMap()),
      'sshPort': ?sshPort,
    };
  }

  factory HDInsightProperties.fromMap(Map<String, dynamic> map) {
    return HDInsightProperties(
      address: map['address'] == null ? null : (map['address']! as String).input(),
      administratorAccount: map['administratorAccount'] == null ? null : (VirtualMachineSshCredentials.fromMap((map['administratorAccount']! as Map).cast<String, dynamic>())).input(),
      sshPort: map['sshPort'] == null ? null : (map['sshPort']! as int).input(),
    );
  }
}

