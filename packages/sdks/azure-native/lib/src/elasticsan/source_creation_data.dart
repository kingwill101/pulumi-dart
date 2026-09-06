// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data source used when creating the volume.
class SourceCreationData {
  /// This enumerates the possible sources of a volume creation.
  final pulumi.Input<dynamic>? createSource;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String?>? sourceId;

  /// Creates a new [SourceCreationData].
  /// [createSource] This enumerates the possible sources of a volume creation.
  /// [sourceId] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  const SourceCreationData({
    this.createSource,
    this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createSource': ?createSource,
      'sourceId': ?sourceId,
    };
  }

  factory SourceCreationData.fromMap(Map<String, dynamic> map) {
    return SourceCreationData(
      createSource: (() { final guardedValue = map['createSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceId: (() { final guardedValue = map['sourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
