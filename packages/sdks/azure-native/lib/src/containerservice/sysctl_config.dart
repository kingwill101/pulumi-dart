// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sysctl settings for Linux agent nodes.
class SysctlConfig {
  /// Sysctl setting fs.aio-max-nr.
  final pulumi.Input<int>? fsAioMaxNr;
  /// Sysctl setting fs.file-max.
  final pulumi.Input<int>? fsFileMax;
  /// Sysctl setting fs.inotify.max_user_watches.
  final pulumi.Input<int>? fsInotifyMaxUserWatches;
  /// Sysctl setting fs.nr_open.
  final pulumi.Input<int>? fsNrOpen;
  /// Sysctl setting kernel.threads-max.
  final pulumi.Input<int>? kernelThreadsMax;
  /// Sysctl setting net.core.netdev_max_backlog.
  final pulumi.Input<int>? netCoreNetdevMaxBacklog;
  /// Sysctl setting net.core.optmem_max.
  final pulumi.Input<int>? netCoreOptmemMax;
  /// Sysctl setting net.core.rmem_default.
  final pulumi.Input<int>? netCoreRmemDefault;
  /// Sysctl setting net.core.rmem_max.
  final pulumi.Input<int>? netCoreRmemMax;
  /// Sysctl setting net.core.somaxconn.
  final pulumi.Input<int>? netCoreSomaxconn;
  /// Sysctl setting net.core.wmem_default.
  final pulumi.Input<int>? netCoreWmemDefault;
  /// Sysctl setting net.core.wmem_max.
  final pulumi.Input<int>? netCoreWmemMax;
  /// Sysctl setting net.ipv4.ip_local_port_range.
  final pulumi.Input<String>? netIpv4IpLocalPortRange;
  /// Sysctl setting net.ipv4.neigh.default.gc_thresh1.
  final pulumi.Input<int>? netIpv4NeighDefaultGcThresh1;
  /// Sysctl setting net.ipv4.neigh.default.gc_thresh2.
  final pulumi.Input<int>? netIpv4NeighDefaultGcThresh2;
  /// Sysctl setting net.ipv4.neigh.default.gc_thresh3.
  final pulumi.Input<int>? netIpv4NeighDefaultGcThresh3;
  /// Sysctl setting net.ipv4.tcp_fin_timeout.
  final pulumi.Input<int>? netIpv4TcpFinTimeout;
  /// Sysctl setting net.ipv4.tcp_keepalive_probes.
  final pulumi.Input<int>? netIpv4TcpKeepaliveProbes;
  /// Sysctl setting net.ipv4.tcp_keepalive_time.
  final pulumi.Input<int>? netIpv4TcpKeepaliveTime;
  /// Sysctl setting net.ipv4.tcp_max_syn_backlog.
  final pulumi.Input<int>? netIpv4TcpMaxSynBacklog;
  /// Sysctl setting net.ipv4.tcp_max_tw_buckets.
  final pulumi.Input<int>? netIpv4TcpMaxTwBuckets;
  /// Sysctl setting net.ipv4.tcp_tw_reuse.
  final pulumi.Input<bool>? netIpv4TcpTwReuse;
  /// Sysctl setting net.ipv4.tcp_keepalive_intvl.
  final pulumi.Input<int>? netIpv4TcpkeepaliveIntvl;
  /// Sysctl setting net.netfilter.nf_conntrack_buckets.
  final pulumi.Input<int>? netNetfilterNfConntrackBuckets;
  /// Sysctl setting net.netfilter.nf_conntrack_max.
  final pulumi.Input<int>? netNetfilterNfConntrackMax;
  /// Sysctl setting vm.max_map_count.
  final pulumi.Input<int>? vmMaxMapCount;
  /// Sysctl setting vm.swappiness.
  final pulumi.Input<int>? vmSwappiness;
  /// Sysctl setting vm.vfs_cache_pressure.
  final pulumi.Input<int>? vmVfsCachePressure;

  /// Creates a new [SysctlConfig].
  /// [fsAioMaxNr] Sysctl setting fs.aio-max-nr.
  /// [fsFileMax] Sysctl setting fs.file-max.
  /// [fsInotifyMaxUserWatches] Sysctl setting fs.inotify.max_user_watches.
  /// [fsNrOpen] Sysctl setting fs.nr_open.
  /// [kernelThreadsMax] Sysctl setting kernel.threads-max.
  /// [netCoreNetdevMaxBacklog] Sysctl setting net.core.netdev_max_backlog.
  /// [netCoreOptmemMax] Sysctl setting net.core.optmem_max.
  /// [netCoreRmemDefault] Sysctl setting net.core.rmem_default.
  /// [netCoreRmemMax] Sysctl setting net.core.rmem_max.
  /// [netCoreSomaxconn] Sysctl setting net.core.somaxconn.
  /// [netCoreWmemDefault] Sysctl setting net.core.wmem_default.
  /// [netCoreWmemMax] Sysctl setting net.core.wmem_max.
  /// [netIpv4IpLocalPortRange] Sysctl setting net.ipv4.ip_local_port_range.
  /// [netIpv4NeighDefaultGcThresh1] Sysctl setting net.ipv4.neigh.default.gc_thresh1.
  /// [netIpv4NeighDefaultGcThresh2] Sysctl setting net.ipv4.neigh.default.gc_thresh2.
  /// [netIpv4NeighDefaultGcThresh3] Sysctl setting net.ipv4.neigh.default.gc_thresh3.
  /// [netIpv4TcpFinTimeout] Sysctl setting net.ipv4.tcp_fin_timeout.
  /// [netIpv4TcpKeepaliveProbes] Sysctl setting net.ipv4.tcp_keepalive_probes.
  /// [netIpv4TcpKeepaliveTime] Sysctl setting net.ipv4.tcp_keepalive_time.
  /// [netIpv4TcpMaxSynBacklog] Sysctl setting net.ipv4.tcp_max_syn_backlog.
  /// [netIpv4TcpMaxTwBuckets] Sysctl setting net.ipv4.tcp_max_tw_buckets.
  /// [netIpv4TcpTwReuse] Sysctl setting net.ipv4.tcp_tw_reuse.
  /// [netIpv4TcpkeepaliveIntvl] Sysctl setting net.ipv4.tcp_keepalive_intvl.
  /// [netNetfilterNfConntrackBuckets] Sysctl setting net.netfilter.nf_conntrack_buckets.
  /// [netNetfilterNfConntrackMax] Sysctl setting net.netfilter.nf_conntrack_max.
  /// [vmMaxMapCount] Sysctl setting vm.max_map_count.
  /// [vmSwappiness] Sysctl setting vm.swappiness.
  /// [vmVfsCachePressure] Sysctl setting vm.vfs_cache_pressure.
  SysctlConfig({
    this.fsAioMaxNr,
    this.fsFileMax,
    this.fsInotifyMaxUserWatches,
    this.fsNrOpen,
    this.kernelThreadsMax,
    this.netCoreNetdevMaxBacklog,
    this.netCoreOptmemMax,
    this.netCoreRmemDefault,
    this.netCoreRmemMax,
    this.netCoreSomaxconn,
    this.netCoreWmemDefault,
    this.netCoreWmemMax,
    this.netIpv4IpLocalPortRange,
    this.netIpv4NeighDefaultGcThresh1,
    this.netIpv4NeighDefaultGcThresh2,
    this.netIpv4NeighDefaultGcThresh3,
    this.netIpv4TcpFinTimeout,
    this.netIpv4TcpKeepaliveProbes,
    this.netIpv4TcpKeepaliveTime,
    this.netIpv4TcpMaxSynBacklog,
    this.netIpv4TcpMaxTwBuckets,
    this.netIpv4TcpTwReuse,
    this.netIpv4TcpkeepaliveIntvl,
    this.netNetfilterNfConntrackBuckets,
    this.netNetfilterNfConntrackMax,
    this.vmMaxMapCount,
    this.vmSwappiness,
    this.vmVfsCachePressure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsAioMaxNr': ?fsAioMaxNr,
      'fsFileMax': ?fsFileMax,
      'fsInotifyMaxUserWatches': ?fsInotifyMaxUserWatches,
      'fsNrOpen': ?fsNrOpen,
      'kernelThreadsMax': ?kernelThreadsMax,
      'netCoreNetdevMaxBacklog': ?netCoreNetdevMaxBacklog,
      'netCoreOptmemMax': ?netCoreOptmemMax,
      'netCoreRmemDefault': ?netCoreRmemDefault,
      'netCoreRmemMax': ?netCoreRmemMax,
      'netCoreSomaxconn': ?netCoreSomaxconn,
      'netCoreWmemDefault': ?netCoreWmemDefault,
      'netCoreWmemMax': ?netCoreWmemMax,
      'netIpv4IpLocalPortRange': ?netIpv4IpLocalPortRange,
      'netIpv4NeighDefaultGcThresh1': ?netIpv4NeighDefaultGcThresh1,
      'netIpv4NeighDefaultGcThresh2': ?netIpv4NeighDefaultGcThresh2,
      'netIpv4NeighDefaultGcThresh3': ?netIpv4NeighDefaultGcThresh3,
      'netIpv4TcpFinTimeout': ?netIpv4TcpFinTimeout,
      'netIpv4TcpKeepaliveProbes': ?netIpv4TcpKeepaliveProbes,
      'netIpv4TcpKeepaliveTime': ?netIpv4TcpKeepaliveTime,
      'netIpv4TcpMaxSynBacklog': ?netIpv4TcpMaxSynBacklog,
      'netIpv4TcpMaxTwBuckets': ?netIpv4TcpMaxTwBuckets,
      'netIpv4TcpTwReuse': ?netIpv4TcpTwReuse,
      'netIpv4TcpkeepaliveIntvl': ?netIpv4TcpkeepaliveIntvl,
      'netNetfilterNfConntrackBuckets': ?netNetfilterNfConntrackBuckets,
      'netNetfilterNfConntrackMax': ?netNetfilterNfConntrackMax,
      'vmMaxMapCount': ?vmMaxMapCount,
      'vmSwappiness': ?vmSwappiness,
      'vmVfsCachePressure': ?vmVfsCachePressure,
    };
  }

  factory SysctlConfig.fromMap(Map<String, dynamic> map) {
    return SysctlConfig(
      fsAioMaxNr: map['fsAioMaxNr'] == null ? null : (map['fsAioMaxNr'] as int).input(),
      fsFileMax: map['fsFileMax'] == null ? null : (map['fsFileMax'] as int).input(),
      fsInotifyMaxUserWatches: map['fsInotifyMaxUserWatches'] == null ? null : (map['fsInotifyMaxUserWatches'] as int).input(),
      fsNrOpen: map['fsNrOpen'] == null ? null : (map['fsNrOpen'] as int).input(),
      kernelThreadsMax: map['kernelThreadsMax'] == null ? null : (map['kernelThreadsMax'] as int).input(),
      netCoreNetdevMaxBacklog: map['netCoreNetdevMaxBacklog'] == null ? null : (map['netCoreNetdevMaxBacklog'] as int).input(),
      netCoreOptmemMax: map['netCoreOptmemMax'] == null ? null : (map['netCoreOptmemMax'] as int).input(),
      netCoreRmemDefault: map['netCoreRmemDefault'] == null ? null : (map['netCoreRmemDefault'] as int).input(),
      netCoreRmemMax: map['netCoreRmemMax'] == null ? null : (map['netCoreRmemMax'] as int).input(),
      netCoreSomaxconn: map['netCoreSomaxconn'] == null ? null : (map['netCoreSomaxconn'] as int).input(),
      netCoreWmemDefault: map['netCoreWmemDefault'] == null ? null : (map['netCoreWmemDefault'] as int).input(),
      netCoreWmemMax: map['netCoreWmemMax'] == null ? null : (map['netCoreWmemMax'] as int).input(),
      netIpv4IpLocalPortRange: map['netIpv4IpLocalPortRange'] == null ? null : (map['netIpv4IpLocalPortRange'] as String).input(),
      netIpv4NeighDefaultGcThresh1: map['netIpv4NeighDefaultGcThresh1'] == null ? null : (map['netIpv4NeighDefaultGcThresh1'] as int).input(),
      netIpv4NeighDefaultGcThresh2: map['netIpv4NeighDefaultGcThresh2'] == null ? null : (map['netIpv4NeighDefaultGcThresh2'] as int).input(),
      netIpv4NeighDefaultGcThresh3: map['netIpv4NeighDefaultGcThresh3'] == null ? null : (map['netIpv4NeighDefaultGcThresh3'] as int).input(),
      netIpv4TcpFinTimeout: map['netIpv4TcpFinTimeout'] == null ? null : (map['netIpv4TcpFinTimeout'] as int).input(),
      netIpv4TcpKeepaliveProbes: map['netIpv4TcpKeepaliveProbes'] == null ? null : (map['netIpv4TcpKeepaliveProbes'] as int).input(),
      netIpv4TcpKeepaliveTime: map['netIpv4TcpKeepaliveTime'] == null ? null : (map['netIpv4TcpKeepaliveTime'] as int).input(),
      netIpv4TcpMaxSynBacklog: map['netIpv4TcpMaxSynBacklog'] == null ? null : (map['netIpv4TcpMaxSynBacklog'] as int).input(),
      netIpv4TcpMaxTwBuckets: map['netIpv4TcpMaxTwBuckets'] == null ? null : (map['netIpv4TcpMaxTwBuckets'] as int).input(),
      netIpv4TcpTwReuse: map['netIpv4TcpTwReuse'] == null ? null : (map['netIpv4TcpTwReuse'] as bool).input(),
      netIpv4TcpkeepaliveIntvl: map['netIpv4TcpkeepaliveIntvl'] == null ? null : (map['netIpv4TcpkeepaliveIntvl'] as int).input(),
      netNetfilterNfConntrackBuckets: map['netNetfilterNfConntrackBuckets'] == null ? null : (map['netNetfilterNfConntrackBuckets'] as int).input(),
      netNetfilterNfConntrackMax: map['netNetfilterNfConntrackMax'] == null ? null : (map['netNetfilterNfConntrackMax'] as int).input(),
      vmMaxMapCount: map['vmMaxMapCount'] == null ? null : (map['vmMaxMapCount'] as int).input(),
      vmSwappiness: map['vmSwappiness'] == null ? null : (map['vmSwappiness'] as int).input(),
      vmVfsCachePressure: map['vmVfsCachePressure'] == null ? null : (map['vmVfsCachePressure'] as int).input(),
    );
  }
}

