// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_vm_cluster_properties_diagnostics_data_collection_options.dart';
import 'cloud_vm_cluster_properties_time_zone.dart';

class CloudVmClusterProperties {
  /// OCI Cluster name.
  final String? clusterName;

  /// (Output)
  /// Compartment ID of cluster.
  final String? compartmentId;

  /// Number of enabled CPU cores.
  final int cpuCoreCount;

  /// The data disk group size to be allocated in TBs.
  final double? dataStorageSizeTb;

  /// Local storage per VM
  final int? dbNodeStorageSizeGb;

  /// OCID of database servers.
  final List<String>? dbServerOcids;

  /// Data collection options for diagnostics.
  /// Structure is documented below.
  final CloudVmClusterPropertiesDiagnosticsDataCollectionOptions?
      diagnosticsDataCollectionOptions;

  /// The type of redundancy.
  /// Possible values:
  /// DISK_REDUNDANCY_UNSPECIFIED
  /// HIGH
  /// NORMAL
  final String? diskRedundancy;

  /// (Output)
  /// DNS listener IP.
  final String? dnsListenerIp;

  /// (Output)
  /// Parent DNS domain where SCAN DNS and hosts names are qualified.
  /// ex: ocispdelegated.ocisp10jvnet.oraclevcn.com
  final String? domain;

  /// Grid Infrastructure Version.
  final String? giVersion;

  /// (Output)
  /// host name without domain.
  /// format: "-" with some suffix.
  /// ex: sp2-yi0xq where "sp2" is the hostname_prefix.
  final String? hostname;

  /// Prefix for VM cluster host names.
  final String? hostnamePrefix;

  /// License type of VM Cluster.
  /// Possible values:
  /// LICENSE_TYPE_UNSPECIFIED
  /// LICENSE_INCLUDED
  /// BRING_YOUR_OWN_LICENSE
  final String licenseType;

  /// Use local backup.
  final bool? localBackupEnabled;

  /// Memory allocated in GBs.
  final int? memorySizeGb;

  /// Number of database servers.
  final int? nodeCount;

  /// (Output)
  /// Deep link to the OCI console to view this resource.
  final String? ociUrl;

  /// (Output)
  /// Oracle Cloud Infrastructure ID of VM Cluster.
  final String? ocid;

  /// OCPU count per VM. Minimum is 0.1.
  final double? ocpuCount;

  /// (Output)
  /// SCAN DNS name.
  /// ex: sp2-yi0xq-scan.ocispdelegated.ocisp10jvnet.oraclevcn.com
  final String? scanDns;

  /// (Output)
  /// OCID of scan DNS record.
  final String? scanDnsRecordId;

  /// (Output)
  /// OCIDs of scan IPs.
  final List<String>? scanIpIds;

  /// (Output)
  /// SCAN listener port - TCP
  final int? scanListenerPortTcp;

  /// (Output)
  /// SCAN listener port - TLS
  final int? scanListenerPortTcpSsl;

  /// (Output)
  /// Shape of VM Cluster.
  final String? shape;

  /// Use exadata sparse snapshots.
  final bool? sparseDiskgroupEnabled;

  /// SSH public keys to be stored with cluster.
  final List<String>? sshPublicKeys;

  /// (Output)
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
  final String? state;

  /// (Output)
  /// The storage allocation for the disk group, in gigabytes (GB).
  final int? storageSizeGb;

  /// (Output)
  /// Operating system version of the image.
  final String? systemVersion;

  /// Represents a time zone from the
  /// [IANA Time Zone Database](https://www.iana.org/time-zones).
  /// Structure is documented below.
  final CloudVmClusterPropertiesTimeZone? timeZone;

  /// Creates a new [CloudVmClusterProperties].
  /// [clusterName] OCI Cluster name.
  /// [compartmentId] (Output)
  /// [cpuCoreCount] Number of enabled CPU cores.
  /// [dataStorageSizeTb] The data disk group size to be allocated in TBs.
  /// [dbNodeStorageSizeGb] Local storage per VM
  /// [dbServerOcids] OCID of database servers.
  /// [diagnosticsDataCollectionOptions] Data collection options for diagnostics.
  /// [diskRedundancy] The type of redundancy.
  /// [dnsListenerIp] (Output)
  /// [domain] (Output)
  /// [giVersion] Grid Infrastructure Version.
  /// [hostname] (Output)
  /// [hostnamePrefix] Prefix for VM cluster host names.
  /// [licenseType] License type of VM Cluster.
  /// [localBackupEnabled] Use local backup.
  /// [memorySizeGb] Memory allocated in GBs.
  /// [nodeCount] Number of database servers.
  /// [ociUrl] (Output)
  /// [ocid] (Output)
  /// [ocpuCount] OCPU count per VM. Minimum is 0.1.
  /// [scanDns] (Output)
  /// [scanDnsRecordId] (Output)
  /// [scanIpIds] (Output)
  /// [scanListenerPortTcp] (Output)
  /// [scanListenerPortTcpSsl] (Output)
  /// [shape] (Output)
  /// [sparseDiskgroupEnabled] Use exadata sparse snapshots.
  /// [sshPublicKeys] SSH public keys to be stored with cluster.
  /// [state] (Output)
  /// [storageSizeGb] (Output)
  /// [systemVersion] (Output)
  /// [timeZone] Represents a time zone from the
  CloudVmClusterProperties({
    this.clusterName,
    this.compartmentId,
    required this.cpuCoreCount,
    this.dataStorageSizeTb,
    this.dbNodeStorageSizeGb,
    this.dbServerOcids,
    this.diagnosticsDataCollectionOptions,
    this.diskRedundancy,
    this.dnsListenerIp,
    this.domain,
    this.giVersion,
    this.hostname,
    this.hostnamePrefix,
    required this.licenseType,
    this.localBackupEnabled,
    this.memorySizeGb,
    this.nodeCount,
    this.ociUrl,
    this.ocid,
    this.ocpuCount,
    this.scanDns,
    this.scanDnsRecordId,
    this.scanIpIds,
    this.scanListenerPortTcp,
    this.scanListenerPortTcpSsl,
    this.shape,
    this.sparseDiskgroupEnabled,
    this.sshPublicKeys,
    this.state,
    this.storageSizeGb,
    this.systemVersion,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterNameValue = clusterName;
    if (clusterNameValue != null) {
      map['clusterName'] = clusterNameValue;
    }
    final compartmentIdValue = compartmentId;
    if (compartmentIdValue != null) {
      map['compartmentId'] = compartmentIdValue;
    }
    map['cpuCoreCount'] = cpuCoreCount;
    final dataStorageSizeTbValue = dataStorageSizeTb;
    if (dataStorageSizeTbValue != null) {
      map['dataStorageSizeTb'] = dataStorageSizeTbValue;
    }
    final dbNodeStorageSizeGbValue = dbNodeStorageSizeGb;
    if (dbNodeStorageSizeGbValue != null) {
      map['dbNodeStorageSizeGb'] = dbNodeStorageSizeGbValue;
    }
    final dbServerOcidsValue = dbServerOcids;
    if (dbServerOcidsValue != null) {
      map['dbServerOcids'] = dbServerOcidsValue;
    }
    final diagnosticsDataCollectionOptionsValue =
        diagnosticsDataCollectionOptions;
    if (diagnosticsDataCollectionOptionsValue != null) {
      map['diagnosticsDataCollectionOptions'] =
          diagnosticsDataCollectionOptionsValue.toMap();
    }
    final diskRedundancyValue = diskRedundancy;
    if (diskRedundancyValue != null) {
      map['diskRedundancy'] = diskRedundancyValue;
    }
    final dnsListenerIpValue = dnsListenerIp;
    if (dnsListenerIpValue != null) {
      map['dnsListenerIp'] = dnsListenerIpValue;
    }
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final giVersionValue = giVersion;
    if (giVersionValue != null) {
      map['giVersion'] = giVersionValue;
    }
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue;
    }
    final hostnamePrefixValue = hostnamePrefix;
    if (hostnamePrefixValue != null) {
      map['hostnamePrefix'] = hostnamePrefixValue;
    }
    map['licenseType'] = licenseType;
    final localBackupEnabledValue = localBackupEnabled;
    if (localBackupEnabledValue != null) {
      map['localBackupEnabled'] = localBackupEnabledValue;
    }
    final memorySizeGbValue = memorySizeGb;
    if (memorySizeGbValue != null) {
      map['memorySizeGb'] = memorySizeGbValue;
    }
    final nodeCountValue = nodeCount;
    if (nodeCountValue != null) {
      map['nodeCount'] = nodeCountValue;
    }
    final ociUrlValue = ociUrl;
    if (ociUrlValue != null) {
      map['ociUrl'] = ociUrlValue;
    }
    final ocidValue = ocid;
    if (ocidValue != null) {
      map['ocid'] = ocidValue;
    }
    final ocpuCountValue = ocpuCount;
    if (ocpuCountValue != null) {
      map['ocpuCount'] = ocpuCountValue;
    }
    final scanDnsValue = scanDns;
    if (scanDnsValue != null) {
      map['scanDns'] = scanDnsValue;
    }
    final scanDnsRecordIdValue = scanDnsRecordId;
    if (scanDnsRecordIdValue != null) {
      map['scanDnsRecordId'] = scanDnsRecordIdValue;
    }
    final scanIpIdsValue = scanIpIds;
    if (scanIpIdsValue != null) {
      map['scanIpIds'] = scanIpIdsValue;
    }
    final scanListenerPortTcpValue = scanListenerPortTcp;
    if (scanListenerPortTcpValue != null) {
      map['scanListenerPortTcp'] = scanListenerPortTcpValue;
    }
    final scanListenerPortTcpSslValue = scanListenerPortTcpSsl;
    if (scanListenerPortTcpSslValue != null) {
      map['scanListenerPortTcpSsl'] = scanListenerPortTcpSslValue;
    }
    final shapeValue = shape;
    if (shapeValue != null) {
      map['shape'] = shapeValue;
    }
    final sparseDiskgroupEnabledValue = sparseDiskgroupEnabled;
    if (sparseDiskgroupEnabledValue != null) {
      map['sparseDiskgroupEnabled'] = sparseDiskgroupEnabledValue;
    }
    final sshPublicKeysValue = sshPublicKeys;
    if (sshPublicKeysValue != null) {
      map['sshPublicKeys'] = sshPublicKeysValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final storageSizeGbValue = storageSizeGb;
    if (storageSizeGbValue != null) {
      map['storageSizeGb'] = storageSizeGbValue;
    }
    final systemVersionValue = systemVersion;
    if (systemVersionValue != null) {
      map['systemVersion'] = systemVersionValue;
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue.toMap();
    }
    return map;
  }

  factory CloudVmClusterProperties.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterProperties(
      clusterName:
          map['clusterName'] == null ? null : map['clusterName'] as String,
      compartmentId:
          map['compartmentId'] == null ? null : map['compartmentId'] as String,
      cpuCoreCount: map['cpuCoreCount'] as int,
      dataStorageSizeTb: map['dataStorageSizeTb'] == null
          ? null
          : map['dataStorageSizeTb'] as double,
      dbNodeStorageSizeGb: map['dbNodeStorageSizeGb'] == null
          ? null
          : map['dbNodeStorageSizeGb'] as int,
      dbServerOcids: map['dbServerOcids'] == null
          ? null
          : (map['dbServerOcids'] as List).cast<String>(),
      diagnosticsDataCollectionOptions:
          map['diagnosticsDataCollectionOptions'] == null
              ? null
              : CloudVmClusterPropertiesDiagnosticsDataCollectionOptions
                  .fromMap((map['diagnosticsDataCollectionOptions'] as Map)
                      .cast<String, dynamic>()),
      diskRedundancy: map['diskRedundancy'] == null
          ? null
          : map['diskRedundancy'] as String,
      dnsListenerIp:
          map['dnsListenerIp'] == null ? null : map['dnsListenerIp'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      giVersion: map['giVersion'] == null ? null : map['giVersion'] as String,
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      hostnamePrefix: map['hostnamePrefix'] == null
          ? null
          : map['hostnamePrefix'] as String,
      licenseType: map['licenseType'] as String,
      localBackupEnabled: map['localBackupEnabled'] == null
          ? null
          : map['localBackupEnabled'] as bool,
      memorySizeGb:
          map['memorySizeGb'] == null ? null : map['memorySizeGb'] as int,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      ociUrl: map['ociUrl'] == null ? null : map['ociUrl'] as String,
      ocid: map['ocid'] == null ? null : map['ocid'] as String,
      ocpuCount: map['ocpuCount'] == null ? null : map['ocpuCount'] as double,
      scanDns: map['scanDns'] == null ? null : map['scanDns'] as String,
      scanDnsRecordId: map['scanDnsRecordId'] == null
          ? null
          : map['scanDnsRecordId'] as String,
      scanIpIds: map['scanIpIds'] == null
          ? null
          : (map['scanIpIds'] as List).cast<String>(),
      scanListenerPortTcp: map['scanListenerPortTcp'] == null
          ? null
          : map['scanListenerPortTcp'] as int,
      scanListenerPortTcpSsl: map['scanListenerPortTcpSsl'] == null
          ? null
          : map['scanListenerPortTcpSsl'] as int,
      shape: map['shape'] == null ? null : map['shape'] as String,
      sparseDiskgroupEnabled: map['sparseDiskgroupEnabled'] == null
          ? null
          : map['sparseDiskgroupEnabled'] as bool,
      sshPublicKeys: map['sshPublicKeys'] == null
          ? null
          : (map['sshPublicKeys'] as List).cast<String>(),
      state: map['state'] == null ? null : map['state'] as String,
      storageSizeGb:
          map['storageSizeGb'] == null ? null : map['storageSizeGb'] as int,
      systemVersion:
          map['systemVersion'] == null ? null : map['systemVersion'] as String,
      timeZone: map['timeZone'] == null
          ? null
          : CloudVmClusterPropertiesTimeZone.fromMap(
              (map['timeZone'] as Map).cast<String, dynamic>()),
    );
  }
}
