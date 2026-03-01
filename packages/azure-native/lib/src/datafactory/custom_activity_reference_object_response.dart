// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_reference_response.dart';
import 'linked_service_reference_response.dart';

/// Reference objects for custom activity
class CustomActivityReferenceObjectResponse {
  /// Dataset references.
  final List<DatasetReferenceResponse>? datasets;
  /// Linked service references.
  final List<LinkedServiceReferenceResponse>? linkedServices;

  /// Creates a new [CustomActivityReferenceObjectResponse].
  /// [datasets] Dataset references.
  /// [linkedServices] Linked service references.
  CustomActivityReferenceObjectResponse({
    this.datasets,
    this.linkedServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasets': ?datasets == null ? null : pulumi.Input.encodeList<DatasetReferenceResponse, Map<String, dynamic>>(datasets!, (value) => value.toMap()),
      'linkedServices': ?linkedServices == null ? null : pulumi.Input.encodeList<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServices!, (value) => value.toMap()),
    };
  }

  factory CustomActivityReferenceObjectResponse.fromMap(Map<String, dynamic> map) {
    return CustomActivityReferenceObjectResponse(
      datasets: map['datasets'] == null ? null : pulumi.Input.decodeList<DatasetReferenceResponse>(map['datasets'], (value) => DatasetReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      linkedServices: map['linkedServices'] == null ? null : pulumi.Input.decodeList<LinkedServiceReferenceResponse>(map['linkedServices'], (value) => LinkedServiceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

