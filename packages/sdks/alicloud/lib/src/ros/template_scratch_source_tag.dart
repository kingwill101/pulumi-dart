// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateScratchSourceTag {
  /// Source label. **NOTE:** A maximum of 10 source labels can be configured.
  final pulumi.Input<Map<String, String>> resourceTags;
  final pulumi.Input<List<String>>? resourceTypeFilters;

  /// Creates a new [TemplateScratchSourceTag].
  /// [resourceTags] Source label. **NOTE:** A maximum of 10 source labels can be configured.
  /// [resourceTypeFilters] Optional.
  TemplateScratchSourceTag({
    required this.resourceTags,
    this.resourceTypeFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTags': resourceTags,
      'resourceTypeFilters': ?resourceTypeFilters,
    };
  }

  factory TemplateScratchSourceTag.fromMap(Map<String, dynamic> map) {
    return TemplateScratchSourceTag(
      resourceTags: ((map['resourceTags'] as Map).cast<String, String>()).input(),
      resourceTypeFilters: map['resourceTypeFilters'] == null ? null : ((map['resourceTypeFilters']! as List).cast<String>()).input(),
    );
  }
}

