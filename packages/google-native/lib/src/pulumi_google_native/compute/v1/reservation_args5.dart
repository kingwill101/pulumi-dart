// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'allocation_specific_skureservation3.dart';
import 'share_settings3.dart';

/// The set of arguments for Reservation.
class ReservationArgs5 {
  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;
  final Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  final Input<Map<String, String>>? resourcePolicies;

  /// Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  final Input<ShareSettings3>? shareSettings;

  /// Reservation for instances with specific machine shapes.
  final Input<AllocationSpecificSKUReservation3>? specificReservation;

  /// Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  final Input<bool>? specificReservationRequired;

  /// Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  final Input<String>? zone;

  ReservationArgs5({
    this.description,
    this.name,
    this.project,
    this.requestId,
    this.resourcePolicies,
    this.shareSettings,
    this.specificReservation,
    this.specificReservationRequired,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final resourcePoliciesValue = resourcePolicies;
    if (resourcePoliciesValue != null) {
      map['resourcePolicies'] = resourcePoliciesValue;
    }
    final shareSettingsValue = shareSettings;
    if (shareSettingsValue != null) {
      map['shareSettings'] =
          Input.mapOptionalInputValue<ShareSettings3, Map<String, dynamic>>(
              shareSettingsValue, (value) => value.toMap());
    }
    final specificReservationValue = specificReservation;
    if (specificReservationValue != null) {
      map['specificReservation'] = Input.mapOptionalInputValue<
              AllocationSpecificSKUReservation3, Map<String, dynamic>>(
          specificReservationValue, (value) => value.toMap());
    }
    final specificReservationRequiredValue = specificReservationRequired;
    if (specificReservationRequiredValue != null) {
      map['specificReservationRequired'] = specificReservationRequiredValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory ReservationArgs5.fromMap(Map<String, dynamic> map) {
    return ReservationArgs5(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      resourcePolicies:
          Input.asOptionalInput<Map<String, String>>(map['resourcePolicies']),
      shareSettings:
          Input.asOptionalInput<ShareSettings3>(map['shareSettings']),
      specificReservation:
          Input.asOptionalInput<AllocationSpecificSKUReservation3>(
              map['specificReservation']),
      specificReservationRequired:
          Input.asOptionalInput<bool>(map['specificReservationRequired']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
