// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_specific_skureservation_compute_v1.dart';
import 'share_settings_compute_v1.dart';

/// {@template pulumi_compute_v1_reservation_compute_v1_args_doc}
/// The set of arguments for Reservation.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_reservation_compute_v1_args_doc}
class ReservationComputeV1Args {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  final pulumi.Input<Map<String, String>>? resourcePolicies;
  /// Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  final pulumi.Input<ShareSettingsComputeV1>? shareSettings;
  /// Reservation for instances with specific machine shapes.
  final pulumi.Input<AllocationSpecificSKUReservationComputeV1>? specificReservation;
  /// Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  final pulumi.Input<bool>? specificReservationRequired;
  /// Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  final pulumi.Input<String>? zone;

  /// Creates a new [ReservationComputeV1Args].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [resourcePolicies] Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  /// [shareSettings] Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  /// [specificReservation] Reservation for instances with specific machine shapes.
  /// [specificReservationRequired] Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  /// [zone] Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  ReservationComputeV1Args({
    String? description,
    String? name,
    String? project,
    String? requestId,
    Map<String, String>? resourcePolicies,
    ShareSettingsComputeV1? shareSettings,
    AllocationSpecificSKUReservationComputeV1? specificReservation,
    bool? specificReservationRequired,
    String? zone,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      resourcePolicies = pulumi.Input.asOptionalInput<Map<String, String>>(resourcePolicies),
      shareSettings = pulumi.Input.asOptionalInput<ShareSettingsComputeV1>(shareSettings),
      specificReservation = pulumi.Input.asOptionalInput<AllocationSpecificSKUReservationComputeV1>(specificReservation),
      specificReservationRequired = pulumi.Input.asOptionalInput<bool>(specificReservationRequired),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'resourcePolicies': ?resourcePolicies,
      'shareSettings': ?pulumi.Input.mapOptionalInputValue<ShareSettingsComputeV1, Map<String, dynamic>>(shareSettings, (value) => value.toMap()),
      'specificReservation': ?pulumi.Input.mapOptionalInputValue<AllocationSpecificSKUReservationComputeV1, Map<String, dynamic>>(specificReservation, (value) => value.toMap()),
      'specificReservationRequired': ?specificReservationRequired,
      'zone': ?zone,
    };
  }

  factory ReservationComputeV1Args.fromMap(Map<String, dynamic> map) {
    return ReservationComputeV1Args(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      resourcePolicies: map['resourcePolicies'] == null ? null : (map['resourcePolicies'] as Map).cast<String, String>(),
      shareSettings: map['shareSettings'] == null ? null : ShareSettingsComputeV1.fromMap((map['shareSettings'] as Map).cast<String, dynamic>()),
      specificReservation: map['specificReservation'] == null ? null : AllocationSpecificSKUReservationComputeV1.fromMap((map['specificReservation'] as Map).cast<String, dynamic>()),
      specificReservationRequired: map['specificReservationRequired'] == null ? null : map['specificReservationRequired'] as bool,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

