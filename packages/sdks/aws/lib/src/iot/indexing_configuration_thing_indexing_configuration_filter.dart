// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexingConfigurationThingIndexingConfigurationFilter {
  /// List of shadow names that you select to index.
  final pulumi.Input<List<String>>? namedShadowNames;

  /// Creates a new [IndexingConfigurationThingIndexingConfigurationFilter].
  /// [namedShadowNames] List of shadow names that you select to index.
  IndexingConfigurationThingIndexingConfigurationFilter({
    this.namedShadowNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namedShadowNames': ?namedShadowNames,
    };
  }

  factory IndexingConfigurationThingIndexingConfigurationFilter.fromMap(Map<String, dynamic> map) {
    return IndexingConfigurationThingIndexingConfigurationFilter(
      namedShadowNames: map['namedShadowNames'] == null ? null : (((map['namedShadowNames'] as List).cast<String>()).input()).input(),
    );
  }
}

