// ignore_for_file: unused_element, unnecessary_cast

import 'otlp_receiver.dart';
import 'syslog_receiver.dart';
import 'udp_receiver.dart';

/// Receiver Info.
class Receiver {
  /// The name of receiver.
  final String name;
  /// OTLP receiver configurations. This field is mandatory for OTLP and pipelineGroup receivers.
  final OtlpReceiver? otlp;
  /// Syslog configurations. This field is mandatory for syslog type receivers.
  final SyslogReceiver? syslog;
  /// The type of receiver.
  final String type;
  /// UDP receiver configurations. This field is mandatory for UDP receivers.
  final UdpReceiver? udp;

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
      'otlp': ?otlp == null ? null : otlp!.toMap(),
      'syslog': ?syslog == null ? null : syslog!.toMap(),
      'type': type,
      'udp': ?udp == null ? null : udp!.toMap(),
    };
  }

  factory Receiver.fromMap(Map<String, dynamic> map) {
    return Receiver(
      name: map['name'] as String,
      otlp: map['otlp'] == null ? null : OtlpReceiver.fromMap((map['otlp'] as Map).cast<String, dynamic>()),
      syslog: map['syslog'] == null ? null : SyslogReceiver.fromMap((map['syslog'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      udp: map['udp'] == null ? null : UdpReceiver.fromMap((map['udp'] as Map).cast<String, dynamic>()),
    );
  }
}

