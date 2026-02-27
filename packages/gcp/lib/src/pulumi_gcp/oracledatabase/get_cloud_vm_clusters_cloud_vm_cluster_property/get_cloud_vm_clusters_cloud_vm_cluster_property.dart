// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cloud_vm_clusters_cloud_vm_cluster_property_diagnostics_data_collection_option/get_cloud_vm_clusters_cloud_vm_cluster_property_diagnostics_data_collection_option.dart';
import '../get_cloud_vm_clusters_cloud_vm_cluster_property_time_zone/get_cloud_vm_clusters_cloud_vm_cluster_property_time_zone.dart';

class GetCloudVmClustersCloudVmClusterProperty {
  /// OCI Cluster name.
  final String clusterName;

  /// Compartment ID of cluster.
  final String compartmentId;

  /// Number of enabled CPU cores.
  final int cpuCoreCount;

  /// The data disk group size to be allocated in TBs.
  final double dataStorageSizeTb;

  /// Local storage per VM
  final int dbNodeStorageSizeGb;

  /// OCID of database servers.
  final List<String> dbServerOcids;

  /// Data collection options for diagnostics.
  final List<
          GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption>
      diagnosticsDataCollectionOptions;

  /// The type of redundancy.
  /// Possible values:
  /// DISK_REDUNDANCY_UNSPECIFIED
  /// HIGH
  /// NORMAL
  final String diskRedundancy;

  /// DNS listener IP.
  final String dnsListenerIp;

  /// Parent DNS domain where SCAN DNS and hosts names are qualified.
  /// ex: ocispdelegated.ocisp10jvnet.oraclevcn.com
  final String domain;

  /// Grid Infrastructure Version.
  final String giVersion;

  /// host name without domain.
  /// format: "-" with some suffix.
  /// ex: sp2-yi0xq where "sp2" is the hostname_prefix.
  final String hostname;

  /// Prefix for VM cluster host names.
  final String hostnamePrefix;

  /// License type of VM Cluster.
  /// Possible values:
  /// LICENSE_TYPE_UNSPECIFIED
  /// LICENSE_INCLUDED
  /// BRING_YOUR_OWN_LICENSE
  final String licenseType;

  /// Use local backup.
  final bool localBackupEnabled;

  /// Memory allocated in GBs.
  final int memorySizeGb;

  /// Number of database servers.
  final int nodeCount;

  /// Deep link to the OCI console to view this resource.
  final String ociUrl;

  /// Oracle Cloud Infrastructure ID of VM Cluster.
  final String ocid;

  /// OCPU count per VM. Minimum is 0.1.
  final double ocpuCount;

  /// SCAN DNS name.
  /// ex: sp2-yi0xq-scan.ocispdelegated.ocisp10jvnet.oraclevcn.com
  final String scanDns;

  /// OCID of scan DNS record.
  final String scanDnsRecordId;

  /// OCIDs of scan IPs.
  final List<String> scanIpIds;

  /// SCAN listener port - TCP
  final int scanListenerPortTcp;

  /// SCAN listener port - TLS
  final int scanListenerPortTcpSsl;

  /// Shape of VM Cluster.
  final String shape;

  /// Use exadata sparse snapshots.
  final bool sparseDiskgroupEnabled;

  /// SSH public keys to be stored with cluster.
  final List<String> sshPublicKeys;

  /// State of the cluster.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// PROVISIONING
  /// AVAILABLE
  /// UPDATING
  /// TERMINATING
  /// TERMINATED
  /// FAILED
  /// MAINTENANCE_IN_PROGRESS
  final String state;

  /// The storage allocation for the disk group, in gigabytes (GB).
  final int storageSizeGb;

  /// Operating system version of the image.
  final String systemVersion;

  /// Represents a time zone from the
  /// [IANA Time Zone Database](https://www.iana.org/time-zones).
  final List<GetCloudVmClustersCloudVmClusterPropertyTimeZone> timeZones;

  GetCloudVmClustersCloudVmClusterProperty({
    required this.clusterName,
    required this.compartmentId,
    required this.cpuCoreCount,
    required this.dataStorageSizeTb,
    required this.dbNodeStorageSizeGb,
    required this.dbServerOcids,
    required this.diagnosticsDataCollectionOptions,
    required this.diskRedundancy,
    required this.dnsListenerIp,
    required this.domain,
    required this.giVersion,
    required this.hostname,
    required this.hostnamePrefix,
    required this.licenseType,
    required this.localBackupEnabled,
    required this.memorySizeGb,
    required this.nodeCount,
    required this.ociUrl,
    required this.ocid,
    required this.ocpuCount,
    required this.scanDns,
    required this.scanDnsRecordId,
    required this.scanIpIds,
    required this.scanListenerPortTcp,
    required this.scanListenerPortTcpSsl,
    required this.shape,
    required this.sparseDiskgroupEnabled,
    required this.sshPublicKeys,
    required this.state,
    required this.storageSizeGb,
    required this.systemVersion,
    required this.timeZones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    map['compartmentId'] = compartmentId;
    map['cpuCoreCount'] = cpuCoreCount;
    map['dataStorageSizeTb'] = dataStorageSizeTb;
    map['dbNodeStorageSizeGb'] = dbNodeStorageSizeGb;
    map['dbServerOcids'] = dbServerOcids;
    map['diagnosticsDataCollectionOptions'] = pulumi.Input.encodeList<
        GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption,
        Map<String,
            dynamic>>(diagnosticsDataCollectionOptions, (value) => value.toMap());
    map['diskRedundancy'] = diskRedundancy;
    map['dnsListenerIp'] = dnsListenerIp;
    map['domain'] = domain;
    map['giVersion'] = giVersion;
    map['hostname'] = hostname;
    map['hostnamePrefix'] = hostnamePrefix;
    map['licenseType'] = licenseType;
    map['localBackupEnabled'] = localBackupEnabled;
    map['memorySizeGb'] = memorySizeGb;
    map['nodeCount'] = nodeCount;
    map['ociUrl'] = ociUrl;
    map['ocid'] = ocid;
    map['ocpuCount'] = ocpuCount;
    map['scanDns'] = scanDns;
    map['scanDnsRecordId'] = scanDnsRecordId;
    map['scanIpIds'] = scanIpIds;
    map['scanListenerPortTcp'] = scanListenerPortTcp;
    map['scanListenerPortTcpSsl'] = scanListenerPortTcpSsl;
    map['shape'] = shape;
    map['sparseDiskgroupEnabled'] = sparseDiskgroupEnabled;
    map['sshPublicKeys'] = sshPublicKeys;
    map['state'] = state;
    map['storageSizeGb'] = storageSizeGb;
    map['systemVersion'] = systemVersion;
    map['timeZones'] = pulumi.Input.encodeList<
        GetCloudVmClustersCloudVmClusterPropertyTimeZone,
        Map<String, dynamic>>(timeZones, (value) => value.toMap());
    return map;
  }

  factory GetCloudVmClustersCloudVmClusterProperty.fromMap(
      Map<String, dynamic> map) {
    return GetCloudVmClustersCloudVmClusterProperty(
      clusterName: map['clusterName'] as String,
      compartmentId: map['compartmentId'] as String,
      cpuCoreCount: map['cpuCoreCount'] as int,
      dataStorageSizeTb: map['dataStorageSizeTb'] as double,
      dbNodeStorageSizeGb: map['dbNodeStorageSizeGb'] as int,
      dbServerOcids: (map['dbServerOcids'] as List).cast<String>(),
      diagnosticsDataCollectionOptions: pulumi.Input.decodeList<
              GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption>(
          map['diagnosticsDataCollectionOptions'],
          (value) =>
              GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption
                  .fromMap((value as Map).cast<String, dynamic>())),
      diskRedundancy: map['diskRedundancy'] as String,
      dnsListenerIp: map['dnsListenerIp'] as String,
      domain: map['domain'] as String,
      giVersion: map['giVersion'] as String,
      hostname: map['hostname'] as String,
      hostnamePrefix: map['hostnamePrefix'] as String,
      licenseType: map['licenseType'] as String,
      localBackupEnabled: map['localBackupEnabled'] as bool,
      memorySizeGb: map['memorySizeGb'] as int,
      nodeCount: map['nodeCount'] as int,
      ociUrl: map['ociUrl'] as String,
      ocid: map['ocid'] as String,
      ocpuCount: map['ocpuCount'] as double,
      scanDns: map['scanDns'] as String,
      scanDnsRecordId: map['scanDnsRecordId'] as String,
      scanIpIds: (map['scanIpIds'] as List).cast<String>(),
      scanListenerPortTcp: map['scanListenerPortTcp'] as int,
      scanListenerPortTcpSsl: map['scanListenerPortTcpSsl'] as int,
      shape: map['shape'] as String,
      sparseDiskgroupEnabled: map['sparseDiskgroupEnabled'] as bool,
      sshPublicKeys: (map['sshPublicKeys'] as List).cast<String>(),
      state: map['state'] as String,
      storageSizeGb: map['storageSizeGb'] as int,
      systemVersion: map['systemVersion'] as String,
      timeZones: pulumi.Input.decodeList<
              GetCloudVmClustersCloudVmClusterPropertyTimeZone>(
          map['timeZones'],
          (value) => GetCloudVmClustersCloudVmClusterPropertyTimeZone.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
