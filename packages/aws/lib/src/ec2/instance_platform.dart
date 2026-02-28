enum InstancePlatform {
  linuxUnix("Linux/UNIX"),
  redHatEnterpriseLinux("Red Hat Enterprise Linux"),
  suseLinux("SUSE Linux"),
  windows("Windows"),
  windowsWithSqlServer("Windows with SQL Server"),
  windowsWithSqlServerEnterprise("Windows with SQL Server Enterprise"),
  windowsWithSqlServerStandard("Windows with SQL Server Standard"),
  windowsWithSqlServerWeb("Windows with SQL Server Web");

  const InstancePlatform(this.value);
  final String value;

  static InstancePlatform fromValue(String value) {
    for (final item in InstancePlatform.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstancePlatform value: $value');
  }
}

