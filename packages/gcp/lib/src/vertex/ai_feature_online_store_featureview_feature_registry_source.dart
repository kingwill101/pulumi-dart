// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_online_store_featureview_feature_registry_source_feature_group.dart';

class AiFeatureOnlineStoreFeatureviewFeatureRegistrySource {
  /// List of features that need to be synced to Online Store.
  /// Structure is documented below.
  final List<AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup>
  featureGroups;

  /// The project number of the parent project of the feature Groups.
  final String? projectNumber;

  /// Creates a new [AiFeatureOnlineStoreFeatureviewFeatureRegistrySource].
  /// [featureGroups] List of features that need to be synced to Online Store.
  /// [projectNumber] The project number of the parent project of the feature Groups.
  AiFeatureOnlineStoreFeatureviewFeatureRegistrySource({
    required this.featureGroups,
    this.projectNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureGroups':
          pulumi.Input.encodeList<
            AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup,
            Map<String, dynamic>
          >(featureGroups, (value) => value.toMap()),
      'projectNumber': ?projectNumber,
    };
  }

  factory AiFeatureOnlineStoreFeatureviewFeatureRegistrySource.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiFeatureOnlineStoreFeatureviewFeatureRegistrySource(
      featureGroups:
          pulumi.Input.decodeList<
            AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup
          >(
            map['featureGroups'],
            (value) =>
                AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      projectNumber: map['projectNumber'] == null
          ? null
          : map['projectNumber'] as String,
    );
  }
}
