// ignore_for_file: unused_element, unnecessary_cast


class ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDisk {
  /// A list of full names of Data Disks per Volume. Changing this forces a new resource to be created.
  final List<String> names;
  /// The name of the Volume. Possible values are `default`, `hanaData`, `hanaLog`, `hanaShared` and `usrSap`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Possible value for Application Server and Central Server is `default`.
  ///
  /// > **Note:** Possible values for Database Server are `hanaData`, `hanaLog`, `hanaShared` and `usrSap`.
  final String volumeName;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDisk].
  /// [names] A list of full names of Data Disks per Volume. Changing this forces a new resource to be created.
  /// [volumeName] The name of the Volume. Possible values are `default`, `hanaData`, `hanaLog`, `hanaShared` and `usrSap`. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDisk({
    required this.names,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': names,
      'volumeName': volumeName,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDisk.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDisk(
      names: (map['names'] as List).cast<String>(),
      volumeName: map['volumeName'] as String,
    );
  }
}

