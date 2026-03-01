// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineGroupWsfcDomainProfile {
  /// The account name used for creating cluster. Changing this forces a new resource to be created.
  final String? clusterBootstrapAccountName;
  /// The account name used for operating cluster. Changing this forces a new resource to be created.
  final String? clusterOperatorAccountName;
  /// The subnet type of the SQL Virtual Machine cluster. Possible values are `MultiSubnet` and `SingleSubnet`. Changing this forces a new resource to be created.
  final String clusterSubnetType;
  /// The fully qualified name of the domain. Changing this forces a new resource to be created.
  final String fqdn;
  /// The organizational Unit path in which the nodes and cluster will be present. Changing this forces a new resource to be created.
  final String? organizationalUnitPath;
  /// The account name under which SQL service will run on all participating SQL virtual machines in the cluster. Changing this forces a new resource to be created.
  final String? sqlServiceAccountName;
  /// The primary key of the Storage Account.
  final String? storageAccountPrimaryKey;
  /// The SAS URL to the Storage Container of the witness storage account. Changing this forces a new resource to be created.
  final String? storageAccountUrl;

  /// Creates a new [VirtualMachineGroupWsfcDomainProfile].
  /// [clusterBootstrapAccountName] The account name used for creating cluster. Changing this forces a new resource to be created.
  /// [clusterOperatorAccountName] The account name used for operating cluster. Changing this forces a new resource to be created.
  /// [clusterSubnetType] The subnet type of the SQL Virtual Machine cluster. Possible values are `MultiSubnet` and `SingleSubnet`. Changing this forces a new resource to be created.
  /// [fqdn] The fully qualified name of the domain. Changing this forces a new resource to be created.
  /// [organizationalUnitPath] The organizational Unit path in which the nodes and cluster will be present. Changing this forces a new resource to be created.
  /// [sqlServiceAccountName] The account name under which SQL service will run on all participating SQL virtual machines in the cluster. Changing this forces a new resource to be created.
  /// [storageAccountPrimaryKey] The primary key of the Storage Account.
  /// [storageAccountUrl] The SAS URL to the Storage Container of the witness storage account. Changing this forces a new resource to be created.
  VirtualMachineGroupWsfcDomainProfile({
    this.clusterBootstrapAccountName,
    this.clusterOperatorAccountName,
    required this.clusterSubnetType,
    required this.fqdn,
    this.organizationalUnitPath,
    this.sqlServiceAccountName,
    this.storageAccountPrimaryKey,
    this.storageAccountUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterBootstrapAccountName': ?clusterBootstrapAccountName,
      'clusterOperatorAccountName': ?clusterOperatorAccountName,
      'clusterSubnetType': clusterSubnetType,
      'fqdn': fqdn,
      'organizationalUnitPath': ?organizationalUnitPath,
      'sqlServiceAccountName': ?sqlServiceAccountName,
      'storageAccountPrimaryKey': ?storageAccountPrimaryKey,
      'storageAccountUrl': ?storageAccountUrl,
    };
  }

  factory VirtualMachineGroupWsfcDomainProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineGroupWsfcDomainProfile(
      clusterBootstrapAccountName: map['clusterBootstrapAccountName'] == null ? null : map['clusterBootstrapAccountName'] as String,
      clusterOperatorAccountName: map['clusterOperatorAccountName'] == null ? null : map['clusterOperatorAccountName'] as String,
      clusterSubnetType: map['clusterSubnetType'] as String,
      fqdn: map['fqdn'] as String,
      organizationalUnitPath: map['organizationalUnitPath'] == null ? null : map['organizationalUnitPath'] as String,
      sqlServiceAccountName: map['sqlServiceAccountName'] == null ? null : map['sqlServiceAccountName'] as String,
      storageAccountPrimaryKey: map['storageAccountPrimaryKey'] == null ? null : map['storageAccountPrimaryKey'] as String,
      storageAccountUrl: map['storageAccountUrl'] == null ? null : map['storageAccountUrl'] as String,
    );
  }
}

