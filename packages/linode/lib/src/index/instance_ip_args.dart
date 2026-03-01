// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_instance_ip_instance_ip_args_doc}
/// The set of arguments for InstanceIp.
/// {@endtemplate}
/// {@macro pulumi_index_instance_ip_instance_ip_args_doc}
class InstanceIpArgs {
  /// If true, the instance will be rebooted to update network interfaces.
  final pulumi.Input<bool>? applyImmediately;
  /// The ID of the Linode to allocate an IPv4 address for.
  final pulumi.Input<int> linodeId;
  /// Whether the IPv4 address is public or private. Defaults to true.
  final pulumi.Input<bool>? public;
  /// The reverse DNS assigned to this address.
  final pulumi.Input<String>? rdns;

  /// Creates a new [InstanceIpArgs].
  /// [applyImmediately] If true, the instance will be rebooted to update network interfaces.
  /// [linodeId] The ID of the Linode to allocate an IPv4 address for.
  /// [public] Whether the IPv4 address is public or private. Defaults to true.
  /// [rdns] The reverse DNS assigned to this address.
  InstanceIpArgs({
    bool? applyImmediately,
    required int linodeId,
    bool? public,
    String? rdns,
  }) :
      applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
      linodeId = pulumi.Input.asInput<int>(linodeId),
      public = pulumi.Input.asOptionalInput<bool>(public),
      rdns = pulumi.Input.asOptionalInput<String>(rdns);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyImmediately': ?applyImmediately,
      'linodeId': linodeId,
      'public': ?public,
      'rdns': ?rdns,
    };
  }

  factory InstanceIpArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIpArgs(
      applyImmediately: map['applyImmediately'] == null ? null : map['applyImmediately'] as bool,
      linodeId: map['linodeId'] as int,
      public: map['public'] == null ? null : map['public'] as bool,
      rdns: map['rdns'] == null ? null : map['rdns'] as String,
    );
  }
}

