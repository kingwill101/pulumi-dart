// ignore_for_file: unused_element, unnecessary_cast


/// Sysctl settings for Linux agent nodes.
class SysctlConfigResponse {
  /// Sysctl setting fs.aio-max-nr.
  final int? fsAioMaxNr;
  /// Sysctl setting fs.file-max.
  final int? fsFileMax;
  /// Sysctl setting fs.inotify.max_user_watches.
  final int? fsInotifyMaxUserWatches;
  /// Sysctl setting fs.nr_open.
  final int? fsNrOpen;
  /// Sysctl setting kernel.threads-max.
  final int? kernelThreadsMax;
  /// Sysctl setting net.core.netdev_max_backlog.
  final int? netCoreNetdevMaxBacklog;
  /// Sysctl setting net.core.optmem_max.
  final int? netCoreOptmemMax;
  /// Sysctl setting net.core.rmem_default.
  final int? netCoreRmemDefault;
  /// Sysctl setting net.core.rmem_max.
  final int? netCoreRmemMax;
  /// Sysctl setting net.core.somaxconn.
  final int? netCoreSomaxconn;
  /// Sysctl setting net.core.wmem_default.
  final int? netCoreWmemDefault;
  /// Sysctl setting net.core.wmem_max.
  final int? netCoreWmemMax;
  /// Sysctl setting net.ipv4.ip_local_port_range.
  final String? netIpv4IpLocalPortRange;
  /// Sysctl setting net.ipv4.neigh.default.gc_thresh1.
  final int? netIpv4NeighDefaultGcThresh1;
  /// Sysctl setting net.ipv4.neigh.default.gc_thresh2.
  final int? netIpv4NeighDefaultGcThresh2;
  /// Sysctl setting net.ipv4.neigh.default.gc_thresh3.
  final int? netIpv4NeighDefaultGcThresh3;
  /// Sysctl setting net.ipv4.tcp_fin_timeout.
  final int? netIpv4TcpFinTimeout;
  /// Sysctl setting net.ipv4.tcp_keepalive_probes.
  final int? netIpv4TcpKeepaliveProbes;
  /// Sysctl setting net.ipv4.tcp_keepalive_time.
  final int? netIpv4TcpKeepaliveTime;
  /// Sysctl setting net.ipv4.tcp_max_syn_backlog.
  final int? netIpv4TcpMaxSynBacklog;
  /// Sysctl setting net.ipv4.tcp_max_tw_buckets.
  final int? netIpv4TcpMaxTwBuckets;
  /// Sysctl setting net.ipv4.tcp_tw_reuse.
  final bool? netIpv4TcpTwReuse;
  /// Sysctl setting net.ipv4.tcp_keepalive_intvl.
  final int? netIpv4TcpkeepaliveIntvl;
  /// Sysctl setting net.netfilter.nf_conntrack_buckets.
  final int? netNetfilterNfConntrackBuckets;
  /// Sysctl setting net.netfilter.nf_conntrack_max.
  final int? netNetfilterNfConntrackMax;
  /// Sysctl setting vm.max_map_count.
  final int? vmMaxMapCount;
  /// Sysctl setting vm.swappiness.
  final int? vmSwappiness;
  /// Sysctl setting vm.vfs_cache_pressure.
  final int? vmVfsCachePressure;

  /// Creates a new [SysctlConfigResponse].
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
  SysctlConfigResponse({
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

  factory SysctlConfigResponse.fromMap(Map<String, dynamic> map) {
    return SysctlConfigResponse(
      fsAioMaxNr: map['fsAioMaxNr'] == null ? null : map['fsAioMaxNr'] as int,
      fsFileMax: map['fsFileMax'] == null ? null : map['fsFileMax'] as int,
      fsInotifyMaxUserWatches: map['fsInotifyMaxUserWatches'] == null ? null : map['fsInotifyMaxUserWatches'] as int,
      fsNrOpen: map['fsNrOpen'] == null ? null : map['fsNrOpen'] as int,
      kernelThreadsMax: map['kernelThreadsMax'] == null ? null : map['kernelThreadsMax'] as int,
      netCoreNetdevMaxBacklog: map['netCoreNetdevMaxBacklog'] == null ? null : map['netCoreNetdevMaxBacklog'] as int,
      netCoreOptmemMax: map['netCoreOptmemMax'] == null ? null : map['netCoreOptmemMax'] as int,
      netCoreRmemDefault: map['netCoreRmemDefault'] == null ? null : map['netCoreRmemDefault'] as int,
      netCoreRmemMax: map['netCoreRmemMax'] == null ? null : map['netCoreRmemMax'] as int,
      netCoreSomaxconn: map['netCoreSomaxconn'] == null ? null : map['netCoreSomaxconn'] as int,
      netCoreWmemDefault: map['netCoreWmemDefault'] == null ? null : map['netCoreWmemDefault'] as int,
      netCoreWmemMax: map['netCoreWmemMax'] == null ? null : map['netCoreWmemMax'] as int,
      netIpv4IpLocalPortRange: map['netIpv4IpLocalPortRange'] == null ? null : map['netIpv4IpLocalPortRange'] as String,
      netIpv4NeighDefaultGcThresh1: map['netIpv4NeighDefaultGcThresh1'] == null ? null : map['netIpv4NeighDefaultGcThresh1'] as int,
      netIpv4NeighDefaultGcThresh2: map['netIpv4NeighDefaultGcThresh2'] == null ? null : map['netIpv4NeighDefaultGcThresh2'] as int,
      netIpv4NeighDefaultGcThresh3: map['netIpv4NeighDefaultGcThresh3'] == null ? null : map['netIpv4NeighDefaultGcThresh3'] as int,
      netIpv4TcpFinTimeout: map['netIpv4TcpFinTimeout'] == null ? null : map['netIpv4TcpFinTimeout'] as int,
      netIpv4TcpKeepaliveProbes: map['netIpv4TcpKeepaliveProbes'] == null ? null : map['netIpv4TcpKeepaliveProbes'] as int,
      netIpv4TcpKeepaliveTime: map['netIpv4TcpKeepaliveTime'] == null ? null : map['netIpv4TcpKeepaliveTime'] as int,
      netIpv4TcpMaxSynBacklog: map['netIpv4TcpMaxSynBacklog'] == null ? null : map['netIpv4TcpMaxSynBacklog'] as int,
      netIpv4TcpMaxTwBuckets: map['netIpv4TcpMaxTwBuckets'] == null ? null : map['netIpv4TcpMaxTwBuckets'] as int,
      netIpv4TcpTwReuse: map['netIpv4TcpTwReuse'] == null ? null : map['netIpv4TcpTwReuse'] as bool,
      netIpv4TcpkeepaliveIntvl: map['netIpv4TcpkeepaliveIntvl'] == null ? null : map['netIpv4TcpkeepaliveIntvl'] as int,
      netNetfilterNfConntrackBuckets: map['netNetfilterNfConntrackBuckets'] == null ? null : map['netNetfilterNfConntrackBuckets'] as int,
      netNetfilterNfConntrackMax: map['netNetfilterNfConntrackMax'] == null ? null : map['netNetfilterNfConntrackMax'] as int,
      vmMaxMapCount: map['vmMaxMapCount'] == null ? null : map['vmMaxMapCount'] as int,
      vmSwappiness: map['vmSwappiness'] == null ? null : map['vmSwappiness'] as int,
      vmVfsCachePressure: map['vmVfsCachePressure'] == null ? null : map['vmVfsCachePressure'] as int,
    );
  }
}

