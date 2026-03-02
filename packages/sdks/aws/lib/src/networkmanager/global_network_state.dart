// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GlobalNetwork resources.
class GlobalNetworkState {
  /// Global Network ARN.
  final pulumi.Input<String>? arn;
  /// Description of the Global Network.
  final pulumi.Input<String>? description;
  /// Key-value tags for the Global Network. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [GlobalNetworkState].
  /// [arn] Global Network ARN.
  /// [description] Description of the Global Network.
  /// [tags] Key-value tags for the Global Network. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  GlobalNetworkState({
    this.arn,
    this.description,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory GlobalNetworkState.fromMap(Map<String, dynamic> map) {
    return GlobalNetworkState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

