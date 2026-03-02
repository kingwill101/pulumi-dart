// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterDbClusterIpArray {
  /// The name of the IP whitelist group. The group name must be 2 to 120 characters in length and consists of lowercase letters and digits. It must start with a letter, and end with a letter or a digit.
  /// **NOTE:** If the specified whitelist group name does not exist, the whitelist group is created. If the specified whitelist group name exists, the whitelist group is modified. If you do not specify this parameter, the default group is modified. You can create a maximum of 50 IP whitelist groups for a cluster.
  final pulumi.Input<String>? dbClusterIpArrayName;
  /// The method for modifying the IP whitelist. Valid values are `Cover`, `Append`, `Delete`.
  /// **NOTE:** There does not recommend setting modify_mode to `Append` or `Delete` and it will bring a potential diff error.
  final pulumi.Input<String>? modifyMode;
  /// List of IP addresses allowed to access all databases of a cluster. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  final pulumi.Input<List<String>>? securityIps;

  /// Creates a new [ClusterDbClusterIpArray].
  /// [dbClusterIpArrayName] The name of the IP whitelist group. The group name must be 2 to 120 characters in length and consists of lowercase letters and digits. It must start with a letter, and end with a letter or a digit.
  /// [modifyMode] The method for modifying the IP whitelist. Valid values are `Cover`, `Append`, `Delete`.
  /// [securityIps] List of IP addresses allowed to access all databases of a cluster. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  ClusterDbClusterIpArray({
    this.dbClusterIpArrayName,
    this.modifyMode,
    this.securityIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterIpArrayName': ?dbClusterIpArrayName,
      'modifyMode': ?modifyMode,
      'securityIps': ?securityIps,
    };
  }

  factory ClusterDbClusterIpArray.fromMap(Map<String, dynamic> map) {
    return ClusterDbClusterIpArray(
      dbClusterIpArrayName: map['dbClusterIpArrayName'] == null ? null : (map['dbClusterIpArrayName'] as String).input(),
      modifyMode: map['modifyMode'] == null ? null : (map['modifyMode'] as String).input(),
      securityIps: map['securityIps'] == null ? null : ((map['securityIps'] as List).cast<String>()).input(),
    );
  }
}

