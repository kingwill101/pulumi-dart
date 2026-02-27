import 'package:pulumi/pulumi.dart' as pulumi;
import '../reservation_autoscale/reservation_autoscale.dart';
import '../reservation_replication_status/reservation_replication_status.dart';
import 'reservation_args.dart';

/// A reservation is a mechanism used to guarantee BigQuery slots to users.
///
///
/// To get more information about Reservation, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/reservations/rest/v1/projects.locations.reservations/create)
/// * How-to Guides
/// * [Introduction to Reservations](https://cloud.google.com/bigquery/docs/reservations-intro)
///
/// ## Example Usage
///
/// ### Bigquery Reservation Basic
///
///
///
///
/// ## Import
///
/// Reservation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/reservations/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Reservation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/reservation:Reservation default projects/{{project}}/locations/{{location}}/reservations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/reservation:Reservation default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/reservation:Reservation default {{location}}/{{name}}
/// ```
class Reservation extends pulumi.CustomResource {
  /// The configuration parameters for the auto scaling feature.
  /// Structure is documented below.
  late final pulumi.Output<ReservationAutoscale?> autoscale;

  /// Maximum number of queries that are allowed to run concurrently in this reservation. This is a soft limit due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency will be automatically set based on the reservation size.
  late final pulumi.Output<int?> concurrency;

  /// The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS
  late final pulumi.Output<String> edition;

  /// If false, any query using this reservation will use idle slots from other reservations within
  /// the same admin project. If true, a query using this reservation will execute with the slot
  /// capacity specified above at most.
  late final pulumi.Output<bool?> ignoreIdleSlots;

  /// The geographic location where the transfer config should reside.
  /// Examples: US, EU, asia-northeast1. The default value is US.
  late final pulumi.Output<String?> location;

  /// The overall max slots for the reservation, covering slotCapacity (baseline), idle slots
  /// (if ignoreIdleSlots is false) and scaled slots. If present, the reservation won't use
  /// more than the specified number of slots, even if there is demand and supply (from idle
  /// slots). NOTE: capping a reservation's idle slot usage is best effort and its usage may
  /// exceed the maxSlots value. However, in terms of autoscale.current_slots (which accounts
  /// for the additional added slots), it will never exceed the maxSlots - baseline.
  /// This field must be set together with the scalingMode enum value, otherwise the request
  /// will be rejected with error code google.rpc.Code.INVALID_ARGUMENT.
  /// If the maxSlots and scalingMode are set, the autoscale or autoscale.max_slots field
  /// must be unset. Otherwise the request will be rejected with error code
  /// google.rpc.Code.INVALID_ARGUMENT. However, the autoscale field may still be in the
  /// output. The autopscale.max_slots will always show as 0 and the autoscaler.current_slots
  /// will represent the current slots from autoscaler excluding idle slots. For example,
  /// if the maxSlots is 1000 and scalingMode is AUTOSCALE_ONLY, then in the output, the
  /// autoscaler.max_slots will be 0 and the autoscaler.current_slots may be any value
  /// between 0 and 1000.
  /// If the maxSlots is 1000, scalingMode is ALL_SLOTS, the baseline is 100 and idle slots
  /// usage is 200, then in the output, the autoscaler.max_slots will be 0 and the
  /// autoscaler.current_slots will not be higher than 700.
  /// If the maxSlots is 1000, scalingMode is IDLE_SLOTS_ONLY, then in the output, the
  /// autoscaler field will be null.
  /// If the maxSlots and scalingMode are set, then the ignoreIdleSlots field must be
  /// aligned with the scalingMode enum value.(See details in ScalingMode comments).
  /// Otherwise the request will be rejected with error code google.rpc.Code.INVALID_ARGUMENT.
  /// Please note, the maxSlots is for user to manage the part of slots greater than the
  /// baseline. Therefore, we don't allow users to set maxSlots smaller or equal to the
  /// baseline as it will not be meaningful. If the field is present and
  /// slotCapacity>=maxSlots, requests will be rejected with error code
  /// google.rpc.Code.INVALID_ARGUMENT.
  /// Please note that if maxSlots is set to 0, we will treat it as unset. Customers can set
  /// maxSlots to 0 and set scalingMode to SCALING_MODE_UNSPECIFIED to disable the maxSlots
  /// feature.
  late final pulumi.Output<int?> maxSlots;

  /// The name of the reservation. This field must only contain alphanumeric characters or dash.
  late final pulumi.Output<String> name;

  /// The location where the reservation was originally created. This is set only during the
  /// failover reservation's creation. All billing charges for the failover reservation will be
  /// applied to this location.
  late final pulumi.Output<String> originalPrimaryLocation;

  /// The current location of the reservation's primary replica. This field is only set for
  /// reservations using the managed disaster recovery feature.
  late final pulumi.Output<String> primaryLocation;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The Disaster Recovery(DR) replication status of the reservation. This is only available for
  /// the primary replicas of DR/failover reservations and provides information about the both the
  /// staleness of the secondary and the last error encountered while trying to replicate changes
  /// from the primary to the secondary. If this field is blank, it means that the reservation is
  /// either not a DR reservation or the reservation is a DR secondary or that any replication
  /// operations on the reservation have succeeded.
  /// Structure is documented below.
  late final pulumi.Output<List<ReservationReplicationStatus>>
      replicationStatuses;

  /// The scaling mode for the reservation. If the field is present but maxSlots is not present,
  /// requests will be rejected with error code google.rpc.Code.INVALID_ARGUMENT.
  /// Enum values:
  /// `SCALING_MODE_UNSPECIFIED`: Default value of ScalingMode.
  /// `AUTOSCALE_ONLY`: The reservation will scale up only using slots from autoscaling. It will
  /// not use any idle slots even if there may be some available. The upper limit that autoscaling
  /// can scale up to will be maxSlots - baseline. For example, if maxSlots is 1000, baseline is 200
  /// and customer sets ScalingMode to AUTOSCALE_ONLY, then autoscalerg will scale up to 800 slots
  /// and no idle slots will be used. Please note, in this mode, the ignoreIdleSlots field must be
  /// set to true. Otherwise the request will be rejected with error code
  /// google.rpc.Code.INVALID_ARGUMENT.
  /// `IDLE_SLOTS_ONLY`: The reservation will scale up using only idle slots contributed by other
  /// reservations or from unassigned commitments. If no idle slots are available it will not scale
  /// up further. If the idle slots which it is using are reclaimed by the contributing reservation(s)
  /// it may be forced to scale down. The max idle slots the reservation can be maxSlots - baseline
  /// capacity. For example, if maxSlots is 1000, baseline is 200 and customer sets ScalingMode to
  /// IDLE_SLOTS_ONLY, 1. if there are 1000 idle slots available in other reservations, the
  /// reservation will scale up to 1000 slots with 200 baseline and 800 idle slots. 2. if there are
  /// 500 idle slots available in other reservations, the reservation will scale up to 700 slots with
  /// 200 baseline and 300 idle slots. Please note, in this mode, the reservation might not be able to
  /// scale up to maxSlots. Please note, in this mode, the ignoreIdleSlots field must be set to false.
  /// Otherwise the request will be rejected with error code google.rpc.Code.INVALID_ARGUMENT
  /// `ALL_SLOTS`: The reservation will scale up using all slots available to it. It will use idle slots
  /// contributed by other reservations or from unassigned commitments first. If no idle slots are
  /// available it will scale up using autoscaling. For example, if maxSlots is 1000, baseline is 200
  /// and customer sets ScalingMode to ALL_SLOTS, 1. if there are 800 idle slots available in other
  /// reservations, the reservation will scale up to 1000 slots with 200 baseline and 800 idle slots. 2.
  /// if there are 500 idle slots available in other reservations, the reservation will scale up to 1000
  /// slots with 200 baseline, 500 idle slots and 300 autoscaling slots. 3. if there are no idle slots
  /// available in other reservations, it will scale up to 1000 slots with 200 baseline and 800
  /// autoscaling slots. Please note, in this mode, the ignoreIdleSlots field must be set to false.
  /// Otherwise the request will be rejected with error code google.rpc.Code.INVALID_ARGUMENT.
  /// Possible values are: `SCALING_MODE_UNSPECIFIED`, `AUTOSCALE_ONLY`, `IDLE_SLOTS_ONLY`, `ALL_SLOTS`.
  late final pulumi.Output<String?> scalingMode;

  /// The current location of the reservation's secondary replica. This field is only set for
  /// reservations using the managed disaster recovery feature. Users can set this in create
  /// reservation calls to create a failover reservation or in update reservation calls to convert
  /// a non-failover reservation to a failover reservation(or vice versa).
  late final pulumi.Output<String?> secondaryLocation;

  /// Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the
  /// unit of parallelism. Queries using this reservation might use more slots during runtime if ignoreIdleSlots is set to false.
  late final pulumi.Output<int> slotCapacity;

  Reservation(
    String name, {
    ReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/reservation:Reservation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoscale = registerOutput<ReservationAutoscale?>('autoscale');
    this.concurrency = registerOutput<int?>('concurrency');
    this.edition = registerOutput<String>('edition');
    this.ignoreIdleSlots = registerOutput<bool?>('ignoreIdleSlots');
    this.location = registerOutput<String?>('location');
    this.maxSlots = registerOutput<int?>('maxSlots');
    this.name = registerOutput<String>('name');
    this.originalPrimaryLocation =
        registerOutput<String>('originalPrimaryLocation');
    this.primaryLocation = registerOutput<String>('primaryLocation');
    this.project = registerOutput<String>('project');
    this.replicationStatuses =
        registerOutput<List<ReservationReplicationStatus>>(
            'replicationStatuses');
    this.scalingMode = registerOutput<String?>('scalingMode');
    this.secondaryLocation = registerOutput<String?>('secondaryLocation');
    this.slotCapacity = registerOutput<int>('slotCapacity');
  }
}
