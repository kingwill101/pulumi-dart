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
  HDInsightProperties({this.address, this.administratorAccount, this.sshPort});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'administratorAccount':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineSshCredentials,
            Map<String, dynamic>
          >(administratorAccount, (value) => value.toMap()),
      'sshPort': ?sshPort,
    };
  }

  factory HDInsightProperties.fromMap(Map<String, dynamic> map) {
    return HDInsightProperties(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      administratorAccount: (() {
        final guardedValue = map['administratorAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineSshCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sshPort: (() {
        final guardedValue = map['sshPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
