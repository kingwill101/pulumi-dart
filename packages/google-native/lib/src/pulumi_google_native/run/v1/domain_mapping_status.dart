// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_run_v1_condition.dart';
import 'resource_record.dart';

/// The current state of the Domain Mapping.
class DomainMappingStatus {
  /// Array of observed DomainMappingConditions, indicating the current state of the DomainMapping.
  final List<GoogleCloudRunV1Condition>? conditions;

  /// The name of the route that the mapping currently points to.
  final String? mappedRouteName;

  /// ObservedGeneration is the 'Generation' of the DomainMapping that was last processed by the controller. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation and the Ready condition's status is True or False.
  final int? observedGeneration;

  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  final List<ResourceRecord>? resourceRecords;

  /// Optional. Not supported by Cloud Run.
  final String? url;

  DomainMappingStatus({
    this.conditions,
    this.mappedRouteName,
    this.observedGeneration,
    this.resourceRecords,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] =
          Input.encodeList<GoogleCloudRunV1Condition, Map<String, dynamic>>(
              conditionsValue, (value) => value.toMap());
    }
    final mappedRouteNameValue = mappedRouteName;
    if (mappedRouteNameValue != null) {
      map['mappedRouteName'] = mappedRouteNameValue;
    }
    final observedGenerationValue = observedGeneration;
    if (observedGenerationValue != null) {
      map['observedGeneration'] = observedGenerationValue;
    }
    final resourceRecordsValue = resourceRecords;
    if (resourceRecordsValue != null) {
      map['resourceRecords'] =
          Input.encodeList<ResourceRecord, Map<String, dynamic>>(
              resourceRecordsValue, (value) => value.toMap());
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory DomainMappingStatus.fromMap(Map<String, dynamic> map) {
    return DomainMappingStatus(
      conditions: map['conditions'] == null
          ? null
          : Input.decodeList<GoogleCloudRunV1Condition>(
              map['conditions'],
              (value) => GoogleCloudRunV1Condition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      mappedRouteName: map['mappedRouteName'] == null
          ? null
          : map['mappedRouteName'] as String,
      observedGeneration: map['observedGeneration'] == null
          ? null
          : map['observedGeneration'] as int,
      resourceRecords: map['resourceRecords'] == null
          ? null
          : Input.decodeList<ResourceRecord>(
              map['resourceRecords'],
              (value) => ResourceRecord.fromMap(
                  (value as Map).cast<String, dynamic>())),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
