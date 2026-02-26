import 'package:pulumi/pulumi.dart';
import 'allocation_aggregate_reservation_response2.dart';
import 'allocation_resource_status_response2.dart';
import 'allocation_specific_skureservation_response2.dart';
import 'duration_response2.dart';
import 'reservation_args4.dart';
import 'share_settings_response2.dart';

/// Creates a new reservation. For more information, read Reserving zonal resources.
class Reservation7 extends CustomResource {
  /// Reservation for aggregated resources, providing shape flexibility.
  late final Output<AllocationAggregateReservationResponse2>
      aggregateReservation;

  /// Full or partial URL to a parent commitment. This field displays for reservations that are tied to a commitment.
  late final Output<String> commitment;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// Duration time relative to reservation creation when GCE will automatically delete this resource.
  late final Output<DurationResponse2> deleteAfterDuration;

  /// Absolute time in future when the reservation will be auto-deleted by GCE. Timestamp is represented in RFC3339 text format.
  late final Output<String> deleteAtTime;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// Type of the resource. Always compute#reservations for reservations.
  late final Output<String> kind;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;
  late final Output<String> project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  late final Output<Map<String, String>> resourcePolicies;

  /// Status information for Reservation resource.
  late final Output<AllocationResourceStatusResponse2> resourceStatus;

  /// Reserved for future use.
  late final Output<bool> satisfiesPzs;

  /// Server-defined fully-qualified URL for this resource.
  late final Output<String> selfLink;

  /// Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  late final Output<ShareSettingsResponse2> shareSettings;

  /// Reservation for instances with specific machine shapes.
  late final Output<AllocationSpecificSKUReservationResponse2>
      specificReservation;

  /// Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  late final Output<bool> specificReservationRequired;

  /// The status of the reservation.
  late final Output<String> status;
  late final Output<String> zone;

  Reservation7(
    String name, {
    ReservationArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/beta:Reservation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aggregateReservation =
        Output.createUnknown<AllocationAggregateReservationResponse2>();
    this.commitment = Output.createUnknown<String>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.deleteAfterDuration = Output.createUnknown<DurationResponse2>();
    this.deleteAtTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.resourcePolicies = Output.createUnknown<Map<String, String>>();
    this.resourceStatus =
        Output.createUnknown<AllocationResourceStatusResponse2>();
    this.satisfiesPzs = Output.createUnknown<bool>();
    this.selfLink = Output.createUnknown<String>();
    this.shareSettings = Output.createUnknown<ShareSettingsResponse2>();
    this.specificReservation =
        Output.createUnknown<AllocationSpecificSKUReservationResponse2>();
    this.specificReservationRequired = Output.createUnknown<bool>();
    this.status = Output.createUnknown<String>();
    this.zone = Output.createUnknown<String>();
  }
}
