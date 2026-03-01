// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synthetics_get_private_location_get_private_location_args_doc}
/// Arguments for getPrivateLocation.
/// {@endtemplate}
/// {@macro pulumi_synthetics_get_private_location_get_private_location_args_doc}
class GetPrivateLocationArgs {
  /// The New Relic account ID of the associated private location. If left empty will default to account ID specified in provider level configuration.
  final pulumi.Input<String>? accountId;
  /// The key of the private location.
  final pulumi.Input<List<String>>? keys;
  /// The name of the Synthetics monitor private location.
  final pulumi.Input<String> name;

  /// Creates a new [GetPrivateLocationArgs].
  /// [accountId] The New Relic account ID of the associated private location. If left empty will default to account ID specified in provider level configuration.
  /// [keys] The key of the private location.
  /// [name] The name of the Synthetics monitor private location.
  GetPrivateLocationArgs({
    String? accountId,
    List<String>? keys,
    required String name,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      keys = pulumi.Input.asOptionalInput<List<String>>(keys),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'keys': ?keys,
      'name': name,
    };
  }

  factory GetPrivateLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLocationArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      keys: map['keys'] == null ? null : (map['keys'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}

