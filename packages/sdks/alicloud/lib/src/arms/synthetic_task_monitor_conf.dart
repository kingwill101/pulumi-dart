// ignore_for_file: unused_element, unnecessary_cast

import 'synthetic_task_monitor_conf_api_http.dart';
import 'synthetic_task_monitor_conf_file_download.dart';
import 'synthetic_task_monitor_conf_net_dns.dart';
import 'synthetic_task_monitor_conf_net_icmp.dart';
import 'synthetic_task_monitor_conf_net_tcp.dart';
import 'synthetic_task_monitor_conf_stream.dart';
import 'synthetic_task_monitor_conf_website.dart';

class SyntheticTaskMonitorConf {
  /// HTTP(S) task configuration information. See `api_http` below.
  final SyntheticTaskMonitorConfApiHttp? apiHttp;
  /// File download type task configuration. See `file_download` below.
  final SyntheticTaskMonitorConfFileDownload? fileDownload;
  /// The configuration parameters of the DNS dial test. Required when TaskType is 3. See `net_dns` below.
  final SyntheticTaskMonitorConfNetDns? netDns;
  /// ICMP dialing configuration parameters. Required when TaskType is 1. See `net_icmp` below.
  final SyntheticTaskMonitorConfNetIcmp? netIcmp;
  /// The configuration parameters of TCP dial test. Required when TaskType is 2. See `net_tcp` below.
  final SyntheticTaskMonitorConfNetTcp? netTcp;
  /// Streaming Media Dial Test Configuration. See `stream` below.
  final SyntheticTaskMonitorConfStream? stream;
  /// Website speed measurement type task configuration. See `website` below.
  final SyntheticTaskMonitorConfWebsite? website;

  /// Creates a new [SyntheticTaskMonitorConf].
  /// [apiHttp] HTTP(S) task configuration information. See `api_http` below.
  /// [fileDownload] File download type task configuration. See `file_download` below.
  /// [netDns] The configuration parameters of the DNS dial test. Required when TaskType is 3. See `net_dns` below.
  /// [netIcmp] ICMP dialing configuration parameters. Required when TaskType is 1. See `net_icmp` below.
  /// [netTcp] The configuration parameters of TCP dial test. Required when TaskType is 2. See `net_tcp` below.
  /// [stream] Streaming Media Dial Test Configuration. See `stream` below.
  /// [website] Website speed measurement type task configuration. See `website` below.
  SyntheticTaskMonitorConf({
    this.apiHttp,
    this.fileDownload,
    this.netDns,
    this.netIcmp,
    this.netTcp,
    this.stream,
    this.website,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiHttp': ?apiHttp == null ? null : apiHttp!.toMap(),
      'fileDownload': ?fileDownload == null ? null : fileDownload!.toMap(),
      'netDns': ?netDns == null ? null : netDns!.toMap(),
      'netIcmp': ?netIcmp == null ? null : netIcmp!.toMap(),
      'netTcp': ?netTcp == null ? null : netTcp!.toMap(),
      'stream': ?stream == null ? null : stream!.toMap(),
      'website': ?website == null ? null : website!.toMap(),
    };
  }

  factory SyntheticTaskMonitorConf.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskMonitorConf(
      apiHttp: map['apiHttp'] == null ? null : SyntheticTaskMonitorConfApiHttp.fromMap((map['apiHttp'] as Map).cast<String, dynamic>()),
      fileDownload: map['fileDownload'] == null ? null : SyntheticTaskMonitorConfFileDownload.fromMap((map['fileDownload'] as Map).cast<String, dynamic>()),
      netDns: map['netDns'] == null ? null : SyntheticTaskMonitorConfNetDns.fromMap((map['netDns'] as Map).cast<String, dynamic>()),
      netIcmp: map['netIcmp'] == null ? null : SyntheticTaskMonitorConfNetIcmp.fromMap((map['netIcmp'] as Map).cast<String, dynamic>()),
      netTcp: map['netTcp'] == null ? null : SyntheticTaskMonitorConfNetTcp.fromMap((map['netTcp'] as Map).cast<String, dynamic>()),
      stream: map['stream'] == null ? null : SyntheticTaskMonitorConfStream.fromMap((map['stream'] as Map).cast<String, dynamic>()),
      website: map['website'] == null ? null : SyntheticTaskMonitorConfWebsite.fromMap((map['website'] as Map).cast<String, dynamic>()),
    );
  }
}

