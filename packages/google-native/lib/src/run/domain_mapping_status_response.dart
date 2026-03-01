// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v1_condition_response.dart';
import 'resource_record_response.dart';

/// The current state of the Domain Mapping.
class DomainMappingStatusResponse {
  /// Array of observed DomainMappingConditions, indicating the current state of the DomainMapping.
  final List<GoogleCloudRunV1ConditionResponse> conditions;

  /// The name of the route that the mapping currently points to.
  final String mappedRouteName;

  /// ObservedGeneration is the 'Generation' of the DomainMapping that was last processed by the controller. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation and the Ready condition's status is True or False.
  final int observedGeneration;

  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  final List<ResourceRecordResponse> resourceRecords;

  /// Optional. Not supported by Cloud Run.
  final String url;

  /// Creates a new [DomainMappingStatusResponse].
  /// [conditions] Array of observed DomainMappingConditions, indicating the current state of the DomainMapping.
  /// [mappedRouteName] The name of the route that the mapping currently points to.
  /// [observedGeneration] ObservedGeneration is the 'Generation' of the DomainMapping that was last processed by the controller. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation and the Ready condition's status is True or False.
  /// [resourceRecords] The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  /// [url] Optional. Not supported by Cloud Run.
  DomainMappingStatusResponse({
    required this.conditions,
    required this.mappedRouteName,
    required this.observedGeneration,
    required this.resourceRecords,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions':
          pulumi.Input.encodeList<
            GoogleCloudRunV1ConditionResponse,
            Map<String, dynamic>
          >(conditions, (value) => value.toMap()),
      'mappedRouteName': mappedRouteName,
      'observedGeneration': observedGeneration,
      'resourceRecords':
          pulumi.Input.encodeList<ResourceRecordResponse, Map<String, dynamic>>(
            resourceRecords,
            (value) => value.toMap(),
          ),
      'url': url,
    };
  }

  factory DomainMappingStatusResponse.fromMap(Map<String, dynamic> map) {
    return DomainMappingStatusResponse(
      conditions: pulumi.Input.decodeList<GoogleCloudRunV1ConditionResponse>(
        map['conditions'],
        (value) => GoogleCloudRunV1ConditionResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      mappedRouteName: map['mappedRouteName'] as String,
      observedGeneration: map['observedGeneration'] as int,
      resourceRecords: pulumi.Input.decodeList<ResourceRecordResponse>(
        map['resourceRecords'],
        (value) => ResourceRecordResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      url: map['url'] as String,
    );
  }
}
