// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amqp_get_virtual_hosts_get_virtual_hosts_args_doc}
/// Arguments for getVirtualHosts.
/// {@endtemplate}
/// {@macro pulumi_amqp_get_virtual_hosts_get_virtual_hosts_args_doc}
class GetVirtualHostsArgs {
  /// A list of Virtual Host IDs. Its element value is same as Virtual Host Name.
  final pulumi.Input<List<String>>? ids;
  /// InstanceId.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by Virtual Host name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetVirtualHostsArgs].
  /// [ids] A list of Virtual Host IDs. Its element value is same as Virtual Host Name.
  /// [instanceId] InstanceId.
  /// [nameRegex] A regex string to filter results by Virtual Host name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetVirtualHostsArgs({
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetVirtualHostsArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualHostsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

