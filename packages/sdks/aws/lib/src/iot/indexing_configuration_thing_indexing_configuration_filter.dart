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
    return <String, dynamic>{'namedShadowNames': ?namedShadowNames};
  }

  factory IndexingConfigurationThingIndexingConfigurationFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return IndexingConfigurationThingIndexingConfigurationFilter(
      namedShadowNames: (() {
        final guardedValue = map['namedShadowNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
