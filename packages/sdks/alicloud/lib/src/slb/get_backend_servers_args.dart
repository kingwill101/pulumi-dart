// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_get_backend_servers_get_backend_servers_args_doc}
/// Arguments for getBackendServers.
/// {@endtemplate}
/// {@macro pulumi_slb_get_backend_servers_get_backend_servers_args_doc}
class GetBackendServersArgs {
  /// List of attached ECS instance IDs.
  final pulumi.Input<List<String>>? ids;

  /// ID of the SLB with attachments.
  final pulumi.Input<String> loadBalancerId;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetBackendServersArgs].
  /// [ids] List of attached ECS instance IDs.
  /// [loadBalancerId] ID of the SLB with attachments.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetBackendServersArgs({
    this.ids,
    required this.loadBalancerId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'loadBalancerId': loadBalancerId,
      'outputFile': ?outputFile,
    };
  }

  factory GetBackendServersArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendServersArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
