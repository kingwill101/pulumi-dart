// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_reference_response.dart';
import 'linked_service_reference_response.dart';

/// Reference objects for custom activity
class CustomActivityReferenceObjectResponse {
  /// Dataset references.
  final pulumi.Input<List<DatasetReferenceResponse>>? datasets;

  /// Linked service references.
  final pulumi.Input<List<LinkedServiceReferenceResponse>>? linkedServices;

  /// Creates a new [CustomActivityReferenceObjectResponse].
  /// [datasets] Dataset references.
  /// [linkedServices] Linked service references.
  CustomActivityReferenceObjectResponse({this.datasets, this.linkedServices});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasets':
          ?pulumi.Input.mapOptionalInputValue<
            List<DatasetReferenceResponse>,
            List<Map<String, dynamic>>
          >(
            datasets,
            (value) =>
                pulumi.Input.encodeList<
                  DatasetReferenceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'linkedServices':
          ?pulumi.Input.mapOptionalInputValue<
            List<LinkedServiceReferenceResponse>,
            List<Map<String, dynamic>>
          >(
            linkedServices,
            (value) =>
                pulumi.Input.encodeList<
                  LinkedServiceReferenceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory CustomActivityReferenceObjectResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CustomActivityReferenceObjectResponse(
      datasets: (() {
        final guardedValue = map['datasets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DatasetReferenceResponse>(
            guardedValue,
            (value) => DatasetReferenceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      linkedServices: (() {
        final guardedValue = map['linkedServices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LinkedServiceReferenceResponse>(
            guardedValue,
            (value) => LinkedServiceReferenceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
