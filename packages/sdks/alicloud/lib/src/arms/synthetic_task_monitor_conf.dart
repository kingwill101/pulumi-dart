// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synthetic_task_monitor_conf_api_http.dart';
import 'synthetic_task_monitor_conf_file_download.dart';
import 'synthetic_task_monitor_conf_net_dns.dart';
import 'synthetic_task_monitor_conf_net_icmp.dart';
import 'synthetic_task_monitor_conf_net_tcp.dart';
import 'synthetic_task_monitor_conf_stream.dart';
import 'synthetic_task_monitor_conf_website.dart';

class SyntheticTaskMonitorConf {
  /// HTTP(S) task configuration information. See `api_http` below.
  final pulumi.Input<SyntheticTaskMonitorConfApiHttp>? apiHttp;
  /// File download type task configuration. See `file_download` below.
  final pulumi.Input<SyntheticTaskMonitorConfFileDownload>? fileDownload;
  /// The configuration parameters of the DNS dial test. Required when TaskType is 3. See `net_dns` below.
  final pulumi.Input<SyntheticTaskMonitorConfNetDns>? netDns;
  /// ICMP dialing configuration parameters. Required when TaskType is 1. See `net_icmp` below.
  final pulumi.Input<SyntheticTaskMonitorConfNetIcmp>? netIcmp;
  /// The configuration parameters of TCP dial test. Required when TaskType is 2. See `net_tcp` below.
  final pulumi.Input<SyntheticTaskMonitorConfNetTcp>? netTcp;
  /// Streaming Media Dial Test Configuration. See `stream` below.
  final pulumi.Input<SyntheticTaskMonitorConfStream>? stream;
  /// Website speed measurement type task configuration. See `website` below.
  final pulumi.Input<SyntheticTaskMonitorConfWebsite>? website;

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
      'apiHttp': ?pulumi.Input.mapOptionalInputValue<SyntheticTaskMonitorConfApiHttp, Map<String, dynamic>>(apiHttp, (value) => value.toMap()),
      'fileDownload': ?pulumi.Input.mapOptionalInputValue<SyntheticTaskMonitorConfFileDownload, Map<String, dynamic>>(fileDownload, (value) => value.toMap()),
      'netDns': ?pulumi.Input.mapOptionalInputValue<SyntheticTaskMonitorConfNetDns, Map<String, dynamic>>(netDns, (value) => value.toMap()),
      'netIcmp': ?pulumi.Input.mapOptionalInputValue<SyntheticTaskMonitorConfNetIcmp, Map<String, dynamic>>(netIcmp, (value) => value.toMap()),
      'netTcp': ?pulumi.Input.mapOptionalInputValue<SyntheticTaskMonitorConfNetTcp, Map<String, dynamic>>(netTcp, (value) => value.toMap()),
      'stream': ?pulumi.Input.mapOptionalInputValue<SyntheticTaskMonitorConfStream, Map<String, dynamic>>(stream, (value) => value.toMap()),
      'website': ?pulumi.Input.mapOptionalInputValue<SyntheticTaskMonitorConfWebsite, Map<String, dynamic>>(website, (value) => value.toMap()),
    };
  }

  factory SyntheticTaskMonitorConf.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskMonitorConf(
      apiHttp: (() { final guardedValue = map['apiHttp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SyntheticTaskMonitorConfApiHttp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileDownload: (() { final guardedValue = map['fileDownload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SyntheticTaskMonitorConfFileDownload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      netDns: (() { final guardedValue = map['netDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SyntheticTaskMonitorConfNetDns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      netIcmp: (() { final guardedValue = map['netIcmp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SyntheticTaskMonitorConfNetIcmp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      netTcp: (() { final guardedValue = map['netTcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SyntheticTaskMonitorConfNetTcp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stream: (() { final guardedValue = map['stream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SyntheticTaskMonitorConfStream.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      website: (() { final guardedValue = map['website']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SyntheticTaskMonitorConfWebsite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

