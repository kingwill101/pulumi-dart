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
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

