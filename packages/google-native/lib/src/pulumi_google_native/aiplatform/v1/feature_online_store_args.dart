// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1_feature_online_store_bigtable.dart';

/// The set of arguments for FeatureOnlineStore.
class FeatureOnlineStoreArgs {
  /// Contains settings for the Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  final Input<GoogleCloudAiplatformV1FeatureOnlineStoreBigtable>? bigtable;

  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final Input<String>? etag;

  /// Required. The ID to use for this FeatureOnlineStore, which will become the final component of the FeatureOnlineStore's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  final Input<String> featureOnlineStoreId;

  /// Optional. The labels with user-defined metadata to organize your FeatureOnlineStore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  FeatureOnlineStoreArgs({
    this.bigtable,
    this.etag,
    required this.featureOnlineStoreId,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigtableValue = bigtable;
    if (bigtableValue != null) {
      map['bigtable'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1FeatureOnlineStoreBigtable,
          Map<String, dynamic>>(bigtableValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['featureOnlineStoreId'] = featureOnlineStoreId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory FeatureOnlineStoreArgs.fromMap(Map<String, dynamic> map) {
    return FeatureOnlineStoreArgs(
      bigtable: Input.asOptionalInput<
          GoogleCloudAiplatformV1FeatureOnlineStoreBigtable>(map['bigtable']),
      etag: Input.asOptionalInput<String>(map['etag']),
      featureOnlineStoreId: Input.asInput<String>(map['featureOnlineStoreId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
