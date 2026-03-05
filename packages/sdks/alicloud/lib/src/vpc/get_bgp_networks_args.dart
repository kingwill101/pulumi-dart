// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_bgp_networks_get_bgp_networks_args_doc}
/// Arguments for getBgpNetworks.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_bgp_networks_get_bgp_networks_args_doc}
class GetBgpNetworksArgs {
  /// A list of Bgp Network IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the router to which the route table belongs.
  final pulumi.Input<String>? routerId;
  /// The state of the advertised BGP network. Valid values: `Available`, `Pending`, `Deleting`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetBgpNetworksArgs].
  /// [ids] A list of Bgp Network IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [routerId] The ID of the router to which the route table belongs.
  /// [status] The state of the advertised BGP network. Valid values: `Available`, `Pending`, `Deleting`.
  GetBgpNetworksArgs({
    this.ids,
    this.outputFile,
    this.routerId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'routerId': ?routerId,
      'status': ?status,
    };
  }

  factory GetBgpNetworksArgs.fromMap(Map<String, dynamic> map) {
    return GetBgpNetworksArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routerId: (() { final guardedValue = map['routerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

