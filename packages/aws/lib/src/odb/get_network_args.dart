// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_network_get_network_args_doc}
/// Arguments for getNetwork.
/// {@endtemplate}
/// {@macro pulumi_odb_get_network_get_network_args_doc}
class GetNetworkArgs {
  /// Unique identifier of the odb network resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetNetworkArgs].
  /// [id] Unique identifier of the odb network resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetNetworkArgs({
    required String id,
    String? region,
  })  : id = pulumi.Input.asInput<String>(id),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkArgs(
      id: map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
