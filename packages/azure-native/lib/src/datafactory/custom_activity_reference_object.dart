// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_reference.dart';
import 'linked_service_reference.dart';

/// Reference objects for custom activity
class CustomActivityReferenceObject {
  /// Dataset references.
  final List<DatasetReference>? datasets;
  /// Linked service references.
  final List<LinkedServiceReference>? linkedServices;

  /// Creates a new [CustomActivityReferenceObject].
  /// [datasets] Dataset references.
  /// [linkedServices] Linked service references.
  CustomActivityReferenceObject({
    this.datasets,
    this.linkedServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasets': ?datasets == null ? null : pulumi.Input.encodeList<DatasetReference, Map<String, dynamic>>(datasets!, (value) => value.toMap()),
      'linkedServices': ?linkedServices == null ? null : pulumi.Input.encodeList<LinkedServiceReference, Map<String, dynamic>>(linkedServices!, (value) => value.toMap()),
    };
  }

  factory CustomActivityReferenceObject.fromMap(Map<String, dynamic> map) {
    return CustomActivityReferenceObject(
      datasets: map['datasets'] == null ? null : pulumi.Input.decodeList<DatasetReference>(map['datasets'], (value) => DatasetReference.fromMap((value as Map).cast<String, dynamic>())),
      linkedServices: map['linkedServices'] == null ? null : pulumi.Input.decodeList<LinkedServiceReference>(map['linkedServices'], (value) => LinkedServiceReference.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

