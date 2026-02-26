import 'package:pulumi/pulumi.dart';
import 'duration_response.dart';
import 'future_reservation_args.dart';
import 'future_reservation_specific_skuproperties_response.dart';
import 'future_reservation_status_response.dart';
import 'future_reservation_time_window_response.dart';
import 'share_settings_response.dart';

/// Creates a new Future Reservation.
class FutureReservation extends CustomResource {
  /// Future timestamp when the FR auto-created reservations will be deleted by GCE. Format of this field must be a valid href="https://www.ietf.org/rfc/rfc3339.txt">RFC3339 value.
  late final Output<String> autoCreatedReservationsDeleteTime;

  /// Specifies the duration of auto-created reservations. It represents relative time to future reservation start_time when auto-created reservations will be automatically deleted by GCE. Duration time unit is represented as a count of seconds and fractions of seconds at nanosecond resolution.
  late final Output<DurationResponse> autoCreatedReservationsDuration;

  /// Setting for enabling or disabling automatic deletion for auto-created reservation. If set to true, auto-created reservations will be deleted at Future Reservation's end time (default) or at user's defined timestamp if any of the [auto_created_reservations_delete_time, auto_created_reservations_duration] values is specified. For keeping auto-created reservation indefinitely, this value should be set to false.
  late final Output<bool> autoDeleteAutoCreatedReservations;

  /// The creation timestamp for this future reservation in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the future reservation.
  late final Output<String> description;

  /// Type of the resource. Always compute#futureReservation for future reservations.
  late final Output<String> kind;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  late final Output<String> namePrefix;

  /// Planning state before being submitted for evaluation
  late final Output<String> planningStatus;
  late final Output<String> project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Server-defined fully-qualified URL for this resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  /// List of Projects/Folders to share with.
  late final Output<ShareSettingsResponse> shareSettings;

  /// Future Reservation configuration to indicate instance properties and total count.
  late final Output<FutureReservationSpecificSKUPropertiesResponse>
      specificSkuProperties;

  /// [Output only] Status of the Future Reservation
  late final Output<FutureReservationStatusResponse> status;

  /// Time window for this Future Reservation.
  late final Output<FutureReservationTimeWindowResponse> timeWindow;
  late final Output<String> zone;

  FutureReservation(
    String name, {
    FutureReservationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:FutureReservation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoCreatedReservationsDeleteTime = Output.createUnknown<String>();
    this.autoCreatedReservationsDuration =
        Output.createUnknown<DurationResponse>();
    this.autoDeleteAutoCreatedReservations = Output.createUnknown<bool>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.planningStatus = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.selfLink = Output.createUnknown<String>();
    this.selfLinkWithId = Output.createUnknown<String>();
    this.shareSettings = Output.createUnknown<ShareSettingsResponse>();
    this.specificSkuProperties =
        Output.createUnknown<FutureReservationSpecificSKUPropertiesResponse>();
    this.status = Output.createUnknown<FutureReservationStatusResponse>();
    this.timeWindow =
        Output.createUnknown<FutureReservationTimeWindowResponse>();
    this.zone = Output.createUnknown<String>();
  }
}
