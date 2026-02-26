// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_mapping_status_condition/domain_mapping_status_condition.dart';
import '../domain_mapping_status_resource_record/domain_mapping_status_resource_record.dart';

class DomainMappingStatus {
  /// (Output)
  /// Array of observed DomainMappingConditions, indicating the current state
  /// of the DomainMapping.
  /// Structure is documented below.
  final List<DomainMappingStatusCondition>? conditions;

  /// (Output)
  /// The name of the route that the mapping currently points to.
  final String? mappedRouteName;

  /// (Output)
  /// ObservedGeneration is the 'Generation' of the DomainMapping that
  /// was last processed by the controller.
  final int? observedGeneration;

  /// The resource records required to configure this domain mapping. These
  /// records must be added to the domain's DNS configuration in order to
  /// serve the application via this domain mapping.
  /// Structure is documented below.
  final List<DomainMappingStatusResourceRecord>? resourceRecords;

  DomainMappingStatus({
    this.conditions,
    this.mappedRouteName,
    this.observedGeneration,
    this.resourceRecords,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] =
          Input.encodeList<DomainMappingStatusCondition, Map<String, dynamic>>(
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
      map['resourceRecords'] = Input.encodeList<
          DomainMappingStatusResourceRecord,
          Map<String, dynamic>>(resourceRecordsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainMappingStatus.fromMap(Map<String, dynamic> map) {
    return DomainMappingStatus(
      conditions: map['conditions'] == null
          ? null
          : Input.decodeList<DomainMappingStatusCondition>(
              map['conditions'],
              (value) => DomainMappingStatusCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      mappedRouteName: map['mappedRouteName'] == null
          ? null
          : map['mappedRouteName'] as String,
      observedGeneration: map['observedGeneration'] == null
          ? null
          : map['observedGeneration'] as int,
      resourceRecords: map['resourceRecords'] == null
          ? null
          : Input.decodeList<DomainMappingStatusResourceRecord>(
              map['resourceRecords'],
              (value) => DomainMappingStatusResourceRecord.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
