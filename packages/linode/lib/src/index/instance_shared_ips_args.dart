// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_instance_shared_ips_instance_shared_ips_args_doc}
/// The set of arguments for InstanceSharedIps.
/// {@endtemplate}
/// {@macro pulumi_index_instance_shared_ips_instance_shared_ips_args_doc}
class InstanceSharedIpsArgs {
  /// The set of IPs to share with the Linode.
  final pulumi.Input<List<String>> addresses;
  /// The ID of the Linode to share the IPs to.
  final pulumi.Input<int> linodeId;

  /// Creates a new [InstanceSharedIpsArgs].
  /// [addresses] The set of IPs to share with the Linode.
  /// [linodeId] The ID of the Linode to share the IPs to.
  InstanceSharedIpsArgs({
    required List<String> addresses,
    required int linodeId,
  }) :
      addresses = pulumi.Input.asInput<List<String>>(addresses),
      linodeId = pulumi.Input.asInput<int>(linodeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': addresses,
      'linodeId': linodeId,
    };
  }

  factory InstanceSharedIpsArgs.fromMap(Map<String, dynamic> map) {
    return InstanceSharedIpsArgs(
      addresses: (map['addresses'] as List).cast<String>(),
      linodeId: map['linodeId'] as int,
    );
  }
}

