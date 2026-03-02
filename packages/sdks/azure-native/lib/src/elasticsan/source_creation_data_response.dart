// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data source used when creating the volume.
class SourceCreationDataResponse {
  /// This enumerates the possible sources of a volume creation.
  final pulumi.Input<String>? createSource;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String>? sourceId;

  /// Creates a new [SourceCreationDataResponse].
  /// [createSource] This enumerates the possible sources of a volume creation.
  /// [sourceId] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  SourceCreationDataResponse({
    this.createSource,
    this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createSource': ?createSource,
      'sourceId': ?sourceId,
    };
  }

  factory SourceCreationDataResponse.fromMap(Map<String, dynamic> map) {
    return SourceCreationDataResponse(
      createSource: map['createSource'] == null ? null : (map['createSource'] as String).input(),
      sourceId: map['sourceId'] == null ? null : (map['sourceId'] as String).input(),
    );
  }
}

