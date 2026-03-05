// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sysctl settings for Linux agent nodes.
class SysctlConfigResponse {
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
      fsAioMaxNr: (() { final guardedValue = map['fsAioMaxNr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fsFileMax: (() { final guardedValue = map['fsFileMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fsInotifyMaxUserWatches: (() { final guardedValue = map['fsInotifyMaxUserWatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fsNrOpen: (() { final guardedValue = map['fsNrOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kernelThreadsMax: (() { final guardedValue = map['kernelThreadsMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netCoreNetdevMaxBacklog: (() { final guardedValue = map['netCoreNetdevMaxBacklog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netCoreOptmemMax: (() { final guardedValue = map['netCoreOptmemMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netCoreRmemDefault: (() { final guardedValue = map['netCoreRmemDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netCoreRmemMax: (() { final guardedValue = map['netCoreRmemMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netCoreSomaxconn: (() { final guardedValue = map['netCoreSomaxconn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netCoreWmemDefault: (() { final guardedValue = map['netCoreWmemDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netCoreWmemMax: (() { final guardedValue = map['netCoreWmemMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netIpv4IpLocalPortRange: (() { final guardedValue = map['netIpv4IpLocalPortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      netIpv4NeighDefaultGcThresh1: (() { final guardedValue = map['netIpv4NeighDefaultGcThresh1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netIpv4NeighDefaultGcThresh2: (() { final guardedValue = map['netIpv4NeighDefaultGcThresh2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netIpv4NeighDefaultGcThresh3: (() { final guardedValue = map['netIpv4NeighDefaultGcThresh3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netIpv4TcpFinTimeout: (() { final guardedValue = map['netIpv4TcpFinTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netIpv4TcpKeepaliveProbes: (() { final guardedValue = map['netIpv4TcpKeepaliveProbes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netIpv4TcpKeepaliveTime: (() { final guardedValue = map['netIpv4TcpKeepaliveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netIpv4TcpMaxSynBacklog: (() { final guardedValue = map['netIpv4TcpMaxSynBacklog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netIpv4TcpMaxTwBuckets: (() { final guardedValue = map['netIpv4TcpMaxTwBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netIpv4TcpTwReuse: (() { final guardedValue = map['netIpv4TcpTwReuse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      netIpv4TcpkeepaliveIntvl: (() { final guardedValue = map['netIpv4TcpkeepaliveIntvl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netNetfilterNfConntrackBuckets: (() { final guardedValue = map['netNetfilterNfConntrackBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netNetfilterNfConntrackMax: (() { final guardedValue = map['netNetfilterNfConntrackMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vmMaxMapCount: (() { final guardedValue = map['vmMaxMapCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vmSwappiness: (() { final guardedValue = map['vmSwappiness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vmVfsCachePressure: (() { final guardedValue = map['vmVfsCachePressure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

