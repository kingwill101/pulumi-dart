// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ssh_key_get_ssh_key_args_doc}
/// Arguments for getSshKey.
/// {@endtemplate}
/// {@macro pulumi_index_get_ssh_key_get_ssh_key_args_doc}
class GetSshKeyArgs {
  /// Fingerprint of the SSH Key.
  final pulumi.Input<String>? fingerprint;
  /// ID of the SSH Key.
  final pulumi.Input<int>? id;
  /// Name of the SSH Key.
  final pulumi.Input<String>? name;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final pulumi.Input<String>? selector;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetSshKeyArgs].
  /// [fingerprint] Fingerprint of the SSH Key.
  /// [id] ID of the SSH Key.
  /// [name] Name of the SSH Key.
  /// [selector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  GetSshKeyArgs({
    String? fingerprint,
    int? id,
    String? name,
    String? selector,
    String? withSelector,
  }) :
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      id = pulumi.Input.asOptionalInput<int>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      selector = pulumi.Input.asOptionalInput<String>(selector),
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': ?fingerprint,
      'id': ?id,
      'name': ?name,
      'selector': ?selector,
      'withSelector': ?withSelector,
    };
  }

  factory GetSshKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetSshKeyArgs(
      fingerprint: map['fingerprint'] == null ? null : map['fingerprint'] as String,
      id: map['id'] == null ? null : map['id'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      selector: map['selector'] == null ? null : map['selector'] as String,
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
    );
  }
}

