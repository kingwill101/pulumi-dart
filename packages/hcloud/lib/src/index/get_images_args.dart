// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_images_get_images_args_doc}
/// Arguments for getImages.
/// {@endtemplate}
/// {@macro pulumi_index_get_images_get_images_args_doc}
class GetImagesArgs {
  /// Also list images that are marked as deprecated.
  final pulumi.Input<bool>? includeDeprecated;
  /// Sorts list by date.
  final pulumi.Input<bool>? mostRecent;
  /// List only images with this architecture, could contain `x86` or `arm`.
  final pulumi.Input<List<String>>? withArchitectures;
  /// [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;
  /// List only images with the specified status, could contain `creating` or `available`.
  final pulumi.Input<List<String>>? withStatuses;

  /// Creates a new [GetImagesArgs].
  /// [includeDeprecated] Also list images that are marked as deprecated.
  /// [mostRecent] Sorts list by date.
  /// [withArchitectures] List only images with this architecture, could contain `x86` or `arm`.
  /// [withSelector] [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  /// [withStatuses] List only images with the specified status, could contain `creating` or `available`.
  GetImagesArgs({
    bool? includeDeprecated,
    bool? mostRecent,
    List<String>? withArchitectures,
    String? withSelector,
    List<String>? withStatuses,
  }) :
      includeDeprecated = pulumi.Input.asOptionalInput<bool>(includeDeprecated),
      mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
      withArchitectures = pulumi.Input.asOptionalInput<List<String>>(withArchitectures),
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector),
      withStatuses = pulumi.Input.asOptionalInput<List<String>>(withStatuses);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeDeprecated': ?includeDeprecated,
      'mostRecent': ?mostRecent,
      'withArchitectures': ?withArchitectures,
      'withSelector': ?withSelector,
      'withStatuses': ?withStatuses,
    };
  }

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      includeDeprecated: map['includeDeprecated'] == null ? null : map['includeDeprecated'] as bool,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      withArchitectures: map['withArchitectures'] == null ? null : (map['withArchitectures'] as List).cast<String>(),
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
      withStatuses: map['withStatuses'] == null ? null : (map['withStatuses'] as List).cast<String>(),
    );
  }
}

