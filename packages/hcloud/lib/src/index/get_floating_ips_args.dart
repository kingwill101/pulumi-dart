// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_floating_ips_get_floating_ips_args_doc}
/// Arguments for getFloatingIps.
/// {@endtemplate}
/// {@macro pulumi_index_get_floating_ips_get_floating_ips_args_doc}
class GetFloatingIpsArgs {
  /// [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetFloatingIpsArgs].
  /// [withSelector] [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetFloatingIpsArgs({
    String? withSelector,
  }) :
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'withSelector': ?withSelector,
    };
  }

  factory GetFloatingIpsArgs.fromMap(Map<String, dynamic> map) {
    return GetFloatingIpsArgs(
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
    );
  }
}

