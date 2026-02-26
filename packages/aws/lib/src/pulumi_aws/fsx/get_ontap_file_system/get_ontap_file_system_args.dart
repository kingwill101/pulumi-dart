// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOntapFileSystem.
class GetOntapFileSystemArgs {
  /// Identifier of the file system (e.g. `fs-12345678`).
  final Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The tags associated with the file system.
  final Input<Map<String, String>>? tags;

  GetOntapFileSystemArgs({
    required this.id,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetOntapFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return GetOntapFileSystemArgs(
      id: Input.asInput<String>(map['id']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
