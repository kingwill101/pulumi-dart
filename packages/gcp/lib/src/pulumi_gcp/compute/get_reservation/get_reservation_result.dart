// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_reservation_delete_after_duration/get_reservation_delete_after_duration.dart';
import '../get_reservation_reservation_sharing_policy/get_reservation_reservation_sharing_policy.dart';
import '../get_reservation_resource_status/get_reservation_resource_status.dart';
import '../get_reservation_share_setting/get_reservation_share_setting.dart';
import '../get_reservation_specific_reservation/get_reservation_specific_reservation.dart';

/// Result data returned by getReservation.
class GetReservationResult {
  final List<String> blockNames;
  final String commitment;
  final String creationTimestamp;
  final List<GetReservationDeleteAfterDuration> deleteAfterDurations;
  final String deleteAtTime;
  final String description;
  final bool enableEmergentMaintenance;
  final String id;
  final String kind;
  final List<String> linkedCommitments;
  final String name;
  final String? project;
  final int reservationBlockCount;
  final List<GetReservationReservationSharingPolicy> reservationSharingPolicies;
  final List<GetReservationResourceStatus> resourceStatuses;
  final bool satisfiesPzs;
  final String selfLink;
  final List<GetReservationShareSetting> shareSettings;
  final bool specificReservationRequired;
  final List<GetReservationSpecificReservation> specificReservations;
  final String status;
  final String zone;

  GetReservationResult({
    required this.blockNames,
    required this.commitment,
    required this.creationTimestamp,
    required this.deleteAfterDurations,
    required this.deleteAtTime,
    required this.description,
    required this.enableEmergentMaintenance,
    required this.id,
    required this.kind,
    required this.linkedCommitments,
    required this.name,
    this.project,
    required this.reservationBlockCount,
    required this.reservationSharingPolicies,
    required this.resourceStatuses,
    required this.satisfiesPzs,
    required this.selfLink,
    required this.shareSettings,
    required this.specificReservationRequired,
    required this.specificReservations,
    required this.status,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blockNames'] = blockNames;
    map['commitment'] = commitment;
    map['creationTimestamp'] = creationTimestamp;
    map['deleteAfterDurations'] = Input.encodeList<
        GetReservationDeleteAfterDuration,
        Map<String, dynamic>>(deleteAfterDurations, (value) => value.toMap());
    map['deleteAtTime'] = deleteAtTime;
    map['description'] = description;
    map['enableEmergentMaintenance'] = enableEmergentMaintenance;
    map['id'] = id;
    map['kind'] = kind;
    map['linkedCommitments'] = linkedCommitments;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['reservationBlockCount'] = reservationBlockCount;
    map['reservationSharingPolicies'] = Input.encodeList<
            GetReservationReservationSharingPolicy, Map<String, dynamic>>(
        reservationSharingPolicies, (value) => value.toMap());
    map['resourceStatuses'] =
        Input.encodeList<GetReservationResourceStatus, Map<String, dynamic>>(
            resourceStatuses, (value) => value.toMap());
    map['satisfiesPzs'] = satisfiesPzs;
    map['selfLink'] = selfLink;
    map['shareSettings'] =
        Input.encodeList<GetReservationShareSetting, Map<String, dynamic>>(
            shareSettings, (value) => value.toMap());
    map['specificReservationRequired'] = specificReservationRequired;
    map['specificReservations'] = Input.encodeList<
        GetReservationSpecificReservation,
        Map<String, dynamic>>(specificReservations, (value) => value.toMap());
    map['status'] = status;
    map['zone'] = zone;
    return map;
  }

  factory GetReservationResult.fromMap(Map<String, dynamic> map) {
    return GetReservationResult(
      blockNames: (map['blockNames'] as List).cast<String>(),
      commitment: map['commitment'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      deleteAfterDurations: Input.decodeList<GetReservationDeleteAfterDuration>(
          map['deleteAfterDurations'],
          (value) => GetReservationDeleteAfterDuration.fromMap(
              (value as Map).cast<String, dynamic>())),
      deleteAtTime: map['deleteAtTime'] as String,
      description: map['description'] as String,
      enableEmergentMaintenance: map['enableEmergentMaintenance'] as bool,
      id: map['id'] as String,
      kind: map['kind'] as String,
      linkedCommitments: (map['linkedCommitments'] as List).cast<String>(),
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      reservationBlockCount: map['reservationBlockCount'] as int,
      reservationSharingPolicies:
          Input.decodeList<GetReservationReservationSharingPolicy>(
              map['reservationSharingPolicies'],
              (value) => GetReservationReservationSharingPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceStatuses: Input.decodeList<GetReservationResourceStatus>(
          map['resourceStatuses'],
          (value) => GetReservationResourceStatus.fromMap(
              (value as Map).cast<String, dynamic>())),
      satisfiesPzs: map['satisfiesPzs'] as bool,
      selfLink: map['selfLink'] as String,
      shareSettings: Input.decodeList<GetReservationShareSetting>(
          map['shareSettings'],
          (value) => GetReservationShareSetting.fromMap(
              (value as Map).cast<String, dynamic>())),
      specificReservationRequired: map['specificReservationRequired'] as bool,
      specificReservations: Input.decodeList<GetReservationSpecificReservation>(
          map['specificReservations'],
          (value) => GetReservationSpecificReservation.fromMap(
              (value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      zone: map['zone'] as String,
    );
  }
}
