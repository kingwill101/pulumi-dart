// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'otlp_receiver.dart';
import 'syslog_receiver.dart';
import 'udp_receiver.dart';

/// Receiver Info.
class Receiver {
  /// The name of receiver.
  final pulumi.Input<String> name;
  /// OTLP receiver configurations. This field is mandatory for OTLP and pipelineGroup receivers.
  final pulumi.Input<OtlpReceiver>? otlp;
  /// Syslog configurations. This field is mandatory for syslog type receivers.
  final pulumi.Input<SyslogReceiver>? syslog;
  /// The type of receiver.
  final pulumi.Input<String> type;
  /// UDP receiver configurations. This field is mandatory for UDP receivers.
  final pulumi.Input<UdpReceiver>? udp;

  /// Creates a new [Receiver].
  /// [name] The name of receiver.
  /// [otlp] OTLP receiver configurations. This field is mandatory for OTLP and pipelineGroup receivers.
  /// [syslog] Syslog configurations. This field is mandatory for syslog type receivers.
  /// [type] The type of receiver.
  /// [udp] UDP receiver configurations. This field is mandatory for UDP receivers.
  Receiver({
    required this.name,
    this.otlp,
    this.syslog,
    required this.type,
    this.udp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'otlp': ?pulumi.Input.mapOptionalInputValue<OtlpReceiver, Map<String, dynamic>>(otlp, (value) => value.toMap()),
      'syslog': ?pulumi.Input.mapOptionalInputValue<SyslogReceiver, Map<String, dynamic>>(syslog, (value) => value.toMap()),
      'type': type,
      'udp': ?pulumi.Input.mapOptionalInputValue<UdpReceiver, Map<String, dynamic>>(udp, (value) => value.toMap()),
    };
  }

  factory Receiver.fromMap(Map<String, dynamic> map) {
    return Receiver(
      name: (map['name'] as String).input(),
      otlp: map['otlp'] == null ? null : (OtlpReceiver.fromMap((map['otlp']! as Map).cast<String, dynamic>())).input(),
      syslog: map['syslog'] == null ? null : (SyslogReceiver.fromMap((map['syslog']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      udp: map['udp'] == null ? null : (UdpReceiver.fromMap((map['udp']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

