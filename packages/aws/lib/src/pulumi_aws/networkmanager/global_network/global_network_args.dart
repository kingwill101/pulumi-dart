// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GlobalNetwork.
class GlobalNetworkArgs {
  /// Description of the Global Network.
  final Input<String>? description;

  /// Key-value tags for the Global Network. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  GlobalNetworkArgs({
    this.description,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GlobalNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GlobalNetworkArgs(
      description: Input.asOptionalInput<String>(map['description']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
