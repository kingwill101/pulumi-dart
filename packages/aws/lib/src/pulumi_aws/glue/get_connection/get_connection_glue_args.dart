// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConnection.
class GetConnectionGlueArgs {
  /// Concatenation of the catalog ID and connection name. For example, if your account ID is
  /// `123456789123` and the connection name is `conn` then the ID is `123456789123:conn`.
  final pulumi.Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags assigned to the resource
  final pulumi.Input<Map<String, String>>? tags;

  GetConnectionGlueArgs({
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

  factory GetConnectionGlueArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionGlueArgs(
      id: pulumi.Input.asInput<String>(map['id']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
