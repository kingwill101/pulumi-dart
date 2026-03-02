// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Tag filter information for the VM.
class TagSettingsPropertiesResponse {
  /// Filter VMs by Any or All specified tags.
  final pulumi.Input<String>? filterOperator;
  /// Dictionary of tags with its list of values.
  final pulumi.Input<Map<String, List<String>>>? tags;

  /// Creates a new [TagSettingsPropertiesResponse].
  /// [filterOperator] Filter VMs by Any or All specified tags.
  /// [tags] Dictionary of tags with its list of values.
  TagSettingsPropertiesResponse({
    this.filterOperator,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterOperator': ?filterOperator,
      'tags': ?tags,
    };
  }

  factory TagSettingsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TagSettingsPropertiesResponse(
      filterOperator: map['filterOperator'] == null ? null : (map['filterOperator'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, List<String>>()).input(),
    );
  }
}

