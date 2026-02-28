// ignore_for_file: unused_element, unnecessary_cast

import 'internal_checker_state.dart';

/// An internal checker allows Uptime checks to run on private/internal GCP resources.
class InternalChecker {
  /// The checker's human-readable name. The display name should be unique within a Cloud Monitoring Metrics Scope in order to make it easier to identify; however, uniqueness is not enforced.
  final String? displayName;
  /// The GCP zone the Uptime check should egress from. Only respected for internal Uptime checks, where internal_network is specified.
  final String? gcpZone;
  /// A unique resource name for this InternalChecker. The format is: projects/[PROJECT_ID_OR_NUMBER]/internalCheckers/[INTERNAL_CHECKER_ID] [PROJECT_ID_OR_NUMBER] is the Cloud Monitoring Metrics Scope project for the Uptime check config associated with the internal checker.
  final String? name;
  /// The GCP VPC network (https://cloud.google.com/vpc/docs/vpc) where the internal resource lives (ex: "default").
  final String? network;
  /// The GCP project ID where the internal checker lives. Not necessary the same as the Metrics Scope project.
  final String? peerProjectId;
  /// The current operational state of the internal checker.
  final InternalCheckerState? state;

  /// Creates a new [InternalChecker].
  /// [displayName] The checker's human-readable name. The display name should be unique within a Cloud Monitoring Metrics Scope in order to make it easier to identify; however, uniqueness is not enforced.
  /// [gcpZone] The GCP zone the Uptime check should egress from. Only respected for internal Uptime checks, where internal_network is specified.
  /// [name] A unique resource name for this InternalChecker. The format is: projects/[PROJECT_ID_OR_NUMBER]/internalCheckers/[INTERNAL_CHECKER_ID] [PROJECT_ID_OR_NUMBER] is the Cloud Monitoring Metrics Scope project for the Uptime check config associated with the internal checker.
  /// [network] The GCP VPC network (https://cloud.google.com/vpc/docs/vpc) where the internal resource lives (ex: "default").
  /// [peerProjectId] The GCP project ID where the internal checker lives. Not necessary the same as the Metrics Scope project.
  /// [state] The current operational state of the internal checker.
  InternalChecker({
    this.displayName,
    this.gcpZone,
    this.name,
    this.network,
    this.peerProjectId,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'gcpZone': ?gcpZone,
      'name': ?name,
      'network': ?network,
      'peerProjectId': ?peerProjectId,
      'state': ?state == null ? null : state!.value,
    };
  }

  factory InternalChecker.fromMap(Map<String, dynamic> map) {
    return InternalChecker(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      gcpZone: map['gcpZone'] == null ? null : map['gcpZone'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      peerProjectId: map['peerProjectId'] == null ? null : map['peerProjectId'] as String,
      state: map['state'] == null ? null : InternalCheckerState.fromValue(map['state'] as String),
    );
  }
}

