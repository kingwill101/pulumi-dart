// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_storage_box_get_storage_box_args_doc}
/// Arguments for getStorageBox.
/// {@endtemplate}
/// {@macro pulumi_index_get_storage_box_get_storage_box_args_doc}
class GetStorageBoxArgs {
  /// ID of the Storage Box.
  final pulumi.Input<int>? id;
  /// Name of the Storage Box.
  final pulumi.Input<String>? name;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetStorageBoxArgs].
  /// [id] ID of the Storage Box.
  /// [name] Name of the Storage Box.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  GetStorageBoxArgs({
    int? id,
    String? name,
    String? withSelector,
  }) :
      id = pulumi.Input.asOptionalInput<int>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxArgs(
      id: map['id'] == null ? null : map['id'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
    );
  }
}

