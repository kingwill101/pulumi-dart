// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_reference.dart';
import 'linked_service_reference.dart';

/// Reference objects for custom activity
class CustomActivityReferenceObject {
  /// Dataset references.
  final pulumi.Input<List<DatasetReference>>? datasets;
  /// Linked service references.
  final pulumi.Input<List<LinkedServiceReference>>? linkedServices;

  /// Creates a new [CustomActivityReferenceObject].
  /// [datasets] Dataset references.
  /// [linkedServices] Linked service references.
  CustomActivityReferenceObject({
    this.datasets,
    this.linkedServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasets': ?pulumi.Input.mapOptionalInputValue<List<DatasetReference>, List<Map<String, dynamic>>>(datasets, (value) => pulumi.Input.encodeList<DatasetReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linkedServices': ?pulumi.Input.mapOptionalInputValue<List<LinkedServiceReference>, List<Map<String, dynamic>>>(linkedServices, (value) => pulumi.Input.encodeList<LinkedServiceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomActivityReferenceObject.fromMap(Map<String, dynamic> map) {
    return CustomActivityReferenceObject(
      datasets: map['datasets'] == null ? null : (pulumi.Input.decodeList<DatasetReference>(map['datasets'], (value) => DatasetReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      linkedServices: map['linkedServices'] == null ? null : (pulumi.Input.decodeList<LinkedServiceReference>(map['linkedServices'], (value) => LinkedServiceReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

