// ignore_for_file: unused_element, unnecessary_cast

class LocationHdfsQopConfiguration {
  /// The data transfer protection setting configured on the HDFS cluster. This setting corresponds to your dfs.data.transfer.protection setting in the hdfs-site.xml file on your Hadoop cluster. Valid values are `DISABLED`, `AUTHENTICATION`, `INTEGRITY` and `PRIVACY`.
  final String? dataTransferProtection;

  /// The RPC protection setting configured on the HDFS cluster. This setting corresponds to your hadoop.rpc.protection setting in your core-site.xml file on your Hadoop cluster. Valid values are `DISABLED`, `AUTHENTICATION`, `INTEGRITY` and `PRIVACY`.
  final String? rpcProtection;

  LocationHdfsQopConfiguration({
    this.dataTransferProtection,
    this.rpcProtection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataTransferProtectionValue = dataTransferProtection;
    if (dataTransferProtectionValue != null) {
      map['dataTransferProtection'] = dataTransferProtectionValue;
    }
    final rpcProtectionValue = rpcProtection;
    if (rpcProtectionValue != null) {
      map['rpcProtection'] = rpcProtectionValue;
    }
    return map;
  }

  factory LocationHdfsQopConfiguration.fromMap(Map<String, dynamic> map) {
    return LocationHdfsQopConfiguration(
      dataTransferProtection: map['dataTransferProtection'] == null
          ? null
          : map['dataTransferProtection'] as String,
      rpcProtection:
          map['rpcProtection'] == null ? null : map['rpcProtection'] as String,
    );
  }
}
