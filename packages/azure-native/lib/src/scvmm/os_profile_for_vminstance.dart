// ignore_for_file: unused_element, unnecessary_cast


/// Defines the resource properties.
class OsProfileForVMInstance {
  /// Admin password of the virtual machine.
  final String? adminPassword;
  /// Gets or sets computer name.
  final String? computerName;

  /// Creates a new [OsProfileForVMInstance].
  /// [adminPassword] Admin password of the virtual machine.
  /// [computerName] Gets or sets computer name.
  OsProfileForVMInstance({
    this.adminPassword,
    this.computerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'computerName': ?computerName,
    };
  }

  factory OsProfileForVMInstance.fromMap(Map<String, dynamic> map) {
    return OsProfileForVMInstance(
      adminPassword: map['adminPassword'] == null ? null : map['adminPassword'] as String,
      computerName: map['computerName'] == null ? null : map['computerName'] as String,
    );
  }
}

