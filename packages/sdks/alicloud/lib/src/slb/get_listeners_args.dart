// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_get_listeners_get_listeners_args_doc}
/// Arguments for getListeners.
/// {@endtemplate}
/// {@macro pulumi_slb_get_listeners_get_listeners_args_doc}
class GetListenersArgs {
  /// A regex string to filter results by SLB listener description.
  final pulumi.Input<String>? descriptionRegex;
  /// Filter listeners by the specified frontend port.
  final pulumi.Input<int>? frontendPort;
  /// ID of the SLB with listeners.
  final pulumi.Input<String> loadBalancerId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Filter listeners by the specified protocol. Valid values: `http`, `https`, `tcp` and `udp`.
  final pulumi.Input<String>? protocol;

  /// Creates a new [GetListenersArgs].
  /// [descriptionRegex] A regex string to filter results by SLB listener description.
  /// [frontendPort] Filter listeners by the specified frontend port.
  /// [loadBalancerId] ID of the SLB with listeners.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [protocol] Filter listeners by the specified protocol. Valid values: `http`, `https`, `tcp` and `udp`.
  GetListenersArgs({
    this.descriptionRegex,
    this.frontendPort,
    required this.loadBalancerId,
    this.outputFile,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionRegex': ?descriptionRegex,
      'frontendPort': ?frontendPort,
      'loadBalancerId': loadBalancerId,
      'outputFile': ?outputFile,
      'protocol': ?protocol,
    };
  }

  factory GetListenersArgs.fromMap(Map<String, dynamic> map) {
    return GetListenersArgs(
      descriptionRegex: (() { final guardedValue = map['descriptionRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendPort: (() { final guardedValue = map['frontendPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

