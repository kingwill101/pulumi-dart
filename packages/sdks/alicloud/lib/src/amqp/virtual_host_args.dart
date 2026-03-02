// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amqp_virtual_host_virtual_host_args_doc}
/// The set of arguments for VirtualHost.
/// {@endtemplate}
/// {@macro pulumi_amqp_virtual_host_virtual_host_args_doc}
class VirtualHostArgs {
  /// InstanceId.
  final pulumi.Input<String> instanceId;
  /// VirtualHostName.
  final pulumi.Input<String> virtualHostName;

  /// Creates a new [VirtualHostArgs].
  /// [instanceId] InstanceId.
  /// [virtualHostName] VirtualHostName.
  VirtualHostArgs({
    required this.instanceId,
    required this.virtualHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'virtualHostName': virtualHostName,
    };
  }

  factory VirtualHostArgs.fromMap(Map<String, dynamic> map) {
    return VirtualHostArgs(
      instanceId: (map['instanceId'] as String).input(),
      virtualHostName: (map['virtualHostName'] as String).input(),
    );
  }
}

