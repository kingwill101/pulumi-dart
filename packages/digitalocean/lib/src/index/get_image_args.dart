// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_image_get_image_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_index_get_image_get_image_args_doc}
class GetImageArgs {
  /// The id of the image
  final pulumi.Input<int>? id;
  /// The name of the image.
  final pulumi.Input<String>? name;
  /// The slug of the official image.
  ///
  /// If `name` is specified, you may also specify:
  final pulumi.Input<String>? slug;
  /// Restrict the search to one of the following categories of images:
  final pulumi.Input<String>? source;

  /// Creates a new [GetImageArgs].
  /// [id] The id of the image
  /// [name] The name of the image.
  /// [slug] The slug of the official image.
  /// [source] Restrict the search to one of the following categories of images:
  GetImageArgs({
    int? id,
    String? name,
    String? slug,
    String? source,
  }) :
      id = pulumi.Input.asOptionalInput<int>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      slug = pulumi.Input.asOptionalInput<String>(slug),
      source = pulumi.Input.asOptionalInput<String>(source);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'slug': ?slug,
      'source': ?source,
    };
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      id: map['id'] == null ? null : map['id'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      slug: map['slug'] == null ? null : map['slug'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

