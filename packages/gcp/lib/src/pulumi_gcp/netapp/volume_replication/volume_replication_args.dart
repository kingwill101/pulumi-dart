// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../volume_replication_destination_volume_parameters/volume_replication_destination_volume_parameters.dart';

/// The set of arguments for VolumeReplication.
class VolumeReplicationArgs {
  final Input<bool>? deleteDestinationVolume;

  /// An description of this resource.
  final Input<String>? description;

  /// Destination volume parameters.
  /// Structure is documented below.
  final Input<VolumeReplicationDestinationVolumeParameters>?
      destinationVolumeParameters;

  /// Only replications with mirror_state=MIRRORED can be stopped. A replication in mirror_state=TRANSFERRING
  /// currently receives an update and stopping the update might be undesirable. Set this parameter to true
  /// to stop anyway. All data transferred to the destination will be discarded and content of destination
  /// volume will remain at the state of the last successful update. Default is false.
  final Input<bool>? forceStopping;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Name of region for this resource. The resource needs to be created in the region of the destination volume.
  final Input<String> location;

  /// The name of the replication. Needs to be unique per location.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Set to false to stop/break the mirror. Stopping the mirror makes the destination volume read-write
  /// and act independently from the source volume.
  /// Set to true to enable/resume the mirror. WARNING: Resuming a mirror overwrites any changes
  /// done to the destination volume with the content of the source volume.
  final Input<bool>? replicationEnabled;

  /// Specifies the replication interval.
  /// Possible values are: `EVERY_10_MINUTES`, `HOURLY`, `DAILY`.
  final Input<String> replicationSchedule;

  /// The name of the existing source volume.
  final Input<String> volumeName;
  final Input<bool>? waitForMirror;

  VolumeReplicationArgs({
    this.deleteDestinationVolume,
    this.description,
    this.destinationVolumeParameters,
    this.forceStopping,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.replicationEnabled,
    required this.replicationSchedule,
    required this.volumeName,
    this.waitForMirror,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteDestinationVolumeValue = deleteDestinationVolume;
    if (deleteDestinationVolumeValue != null) {
      map['deleteDestinationVolume'] = deleteDestinationVolumeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final destinationVolumeParametersValue = destinationVolumeParameters;
    if (destinationVolumeParametersValue != null) {
      map['destinationVolumeParameters'] = Input.mapOptionalInputValue<
              VolumeReplicationDestinationVolumeParameters,
              Map<String, dynamic>>(
          destinationVolumeParametersValue, (value) => value.toMap());
    }
    final forceStoppingValue = forceStopping;
    if (forceStoppingValue != null) {
      map['forceStopping'] = forceStoppingValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final replicationEnabledValue = replicationEnabled;
    if (replicationEnabledValue != null) {
      map['replicationEnabled'] = replicationEnabledValue;
    }
    map['replicationSchedule'] = replicationSchedule;
    map['volumeName'] = volumeName;
    final waitForMirrorValue = waitForMirror;
    if (waitForMirrorValue != null) {
      map['waitForMirror'] = waitForMirrorValue;
    }
    return map;
  }

  factory VolumeReplicationArgs.fromMap(Map<String, dynamic> map) {
    return VolumeReplicationArgs(
      deleteDestinationVolume:
          Input.asOptionalInput<bool>(map['deleteDestinationVolume']),
      description: Input.asOptionalInput<String>(map['description']),
      destinationVolumeParameters:
          Input.asOptionalInput<VolumeReplicationDestinationVolumeParameters>(
              map['destinationVolumeParameters']),
      forceStopping: Input.asOptionalInput<bool>(map['forceStopping']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      replicationEnabled:
          Input.asOptionalInput<bool>(map['replicationEnabled']),
      replicationSchedule: Input.asInput<String>(map['replicationSchedule']),
      volumeName: Input.asInput<String>(map['volumeName']),
      waitForMirror: Input.asOptionalInput<bool>(map['waitForMirror']),
    );
  }
}
