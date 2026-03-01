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
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> loadBalancerId,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      loadBalancerId = pulumi.Input.asInput<String>(loadBalancerId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'loadBalancerId': loadBalancerId,
      'outputFile': ?outputFile,
    };
  }

  factory GetBackendServersArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendServersArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      loadBalancerId: pulumi.Output.create<String>(map['loadBalancerId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

