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
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      loadBalancerId: (map['loadBalancerId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

