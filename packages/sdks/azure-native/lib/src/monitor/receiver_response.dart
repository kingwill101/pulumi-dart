// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'otlp_receiver_response.dart';
import 'syslog_receiver_response.dart';
import 'udp_receiver_response.dart';

/// Receiver Info.
class ReceiverResponse {
  /// The name of receiver.
  final pulumi.Input<String> name;
  /// OTLP receiver configurations. This field is mandatory for OTLP and pipelineGroup receivers.
  final pulumi.Input<OtlpReceiverResponse>? otlp;
  /// Syslog configurations. This field is mandatory for syslog type receivers.
  final pulumi.Input<SyslogReceiverResponse>? syslog;
  /// The type of receiver.
  final pulumi.Input<String> type;
  /// UDP receiver configurations. This field is mandatory for UDP receivers.
  final pulumi.Input<UdpReceiverResponse>? udp;

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
      'otlp': ?pulumi.Input.mapOptionalInputValue<OtlpReceiverResponse, Map<String, dynamic>>(otlp, (value) => value.toMap()),
      'syslog': ?pulumi.Input.mapOptionalInputValue<SyslogReceiverResponse, Map<String, dynamic>>(syslog, (value) => value.toMap()),
      'type': type,
      'udp': ?pulumi.Input.mapOptionalInputValue<UdpReceiverResponse, Map<String, dynamic>>(udp, (value) => value.toMap()),
    };
  }

  factory ReceiverResponse.fromMap(Map<String, dynamic> map) {
    return ReceiverResponse(
      name: (map['name'] as String).input(),
      otlp: map['otlp'] == null ? null : (OtlpReceiverResponse.fromMap((map['otlp'] as Map).cast<String, dynamic>())).input(),
      syslog: map['syslog'] == null ? null : (SyslogReceiverResponse.fromMap((map['syslog'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      udp: map['udp'] == null ? null : (UdpReceiverResponse.fromMap((map['udp'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

