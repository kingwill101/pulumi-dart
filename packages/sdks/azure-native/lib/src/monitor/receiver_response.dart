// ignore_for_file: unused_element, unnecessary_cast

import 'otlp_receiver_response.dart';
import 'syslog_receiver_response.dart';
import 'udp_receiver_response.dart';

/// Receiver Info.
class ReceiverResponse {
  /// The name of receiver.
  final String name;
  /// OTLP receiver configurations. This field is mandatory for OTLP and pipelineGroup receivers.
  final OtlpReceiverResponse? otlp;
  /// Syslog configurations. This field is mandatory for syslog type receivers.
  final SyslogReceiverResponse? syslog;
  /// The type of receiver.
  final String type;
  /// UDP receiver configurations. This field is mandatory for UDP receivers.
  final UdpReceiverResponse? udp;

  /// Creates a new [ReceiverResponse].
  /// [name] The name of receiver.
  /// [otlp] OTLP receiver configurations. This field is mandatory for OTLP and pipelineGroup receivers.
  /// [syslog] Syslog configurations. This field is mandatory for syslog type receivers.
  /// [type] The type of receiver.
  /// [udp] UDP receiver configurations. This field is mandatory for UDP receivers.
  ReceiverResponse({
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

  factory ReceiverResponse.fromMap(Map<String, dynamic> map) {
    return ReceiverResponse(
      name: map['name'] as String,
      otlp: map['otlp'] == null ? null : OtlpReceiverResponse.fromMap((map['otlp'] as Map).cast<String, dynamic>()),
      syslog: map['syslog'] == null ? null : SyslogReceiverResponse.fromMap((map['syslog'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      udp: map['udp'] == null ? null : UdpReceiverResponse.fromMap((map['udp'] as Map).cast<String, dynamic>()),
    );
  }
}

