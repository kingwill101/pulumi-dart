// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocationHdfsQopConfiguration {
  /// The data transfer protection setting configured on the HDFS cluster. This setting corresponds to your dfs.data.transfer.protection setting in the hdfs-site.xml file on your Hadoop cluster. Valid values are `DISABLED`, `AUTHENTICATION`, `INTEGRITY` and `PRIVACY`.
  final pulumi.Input<String>? dataTransferProtection;

  /// The RPC protection setting configured on the HDFS cluster. This setting corresponds to your hadoop.rpc.protection setting in your core-site.xml file on your Hadoop cluster. Valid values are `DISABLED`, `AUTHENTICATION`, `INTEGRITY` and `PRIVACY`.
  final pulumi.Input<String>? rpcProtection;

  /// Creates a new [LocationHdfsQopConfiguration].
  /// [dataTransferProtection] The data transfer protection setting configured on the HDFS cluster. This setting corresponds to your dfs.data.transfer.protection setting in the hdfs-site.xml file on your Hadoop cluster. Valid values are `DISABLED`, `AUTHENTICATION`, `INTEGRITY` and `PRIVACY`.
  /// [rpcProtection] The RPC protection setting configured on the HDFS cluster. This setting corresponds to your hadoop.rpc.protection setting in your core-site.xml file on your Hadoop cluster. Valid values are `DISABLED`, `AUTHENTICATION`, `INTEGRITY` and `PRIVACY`.
  LocationHdfsQopConfiguration({
    this.dataTransferProtection,
    this.rpcProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTransferProtection': ?dataTransferProtection,
      'rpcProtection': ?rpcProtection,
    };
  }

  factory LocationHdfsQopConfiguration.fromMap(Map<String, dynamic> map) {
    return LocationHdfsQopConfiguration(
      dataTransferProtection: (() {
        final guardedValue = map['dataTransferProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rpcProtection: (() {
        final guardedValue = map['rpcProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
