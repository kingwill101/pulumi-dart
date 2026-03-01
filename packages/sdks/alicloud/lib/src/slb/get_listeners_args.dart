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
    pulumi.Output<String>? descriptionRegex,
    pulumi.Output<int>? frontendPort,
    required pulumi.Output<String> loadBalancerId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? protocol,
  }) :
      descriptionRegex = pulumi.Input.asOptionalInput<String>(descriptionRegex),
      frontendPort = pulumi.Input.asOptionalInput<int>(frontendPort),
      loadBalancerId = pulumi.Input.asInput<String>(loadBalancerId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      protocol = pulumi.Input.asOptionalInput<String>(protocol);

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
      descriptionRegex: map['descriptionRegex'] == null ? null : pulumi.Output.create<String>(map['descriptionRegex'] as String),
      frontendPort: map['frontendPort'] == null ? null : pulumi.Output.create<int>(map['frontendPort'] as int),
      loadBalancerId: pulumi.Output.create<String>(map['loadBalancerId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
    );
  }
}

