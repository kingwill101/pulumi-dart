// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_get_user_provisioning_events_get_user_provisioning_events_args_doc}
/// Arguments for getUserProvisioningEvents.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_get_user_provisioning_events_get_user_provisioning_events_args_doc}
class GetUserProvisioningEventsArgs {
  /// Directory ID
  final pulumi.Input<String> directoryId;
  /// A list of User Provisioning Event IDs. The value is formulated as `<directory_id>:<event_id>`.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the User Provisioning.
  final pulumi.Input<String>? userProvisioningId;

  /// Creates a new [GetUserProvisioningEventsArgs].
  /// [directoryId] Directory ID
  /// [ids] A list of User Provisioning Event IDs. The value is formulated as `<directory_id>:<event_id>`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [userProvisioningId] The ID of the User Provisioning.
  GetUserProvisioningEventsArgs({
    required this.directoryId,
    this.ids,
    this.outputFile,
    this.userProvisioningId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'userProvisioningId': ?userProvisioningId,
    };
  }

  factory GetUserProvisioningEventsArgs.fromMap(Map<String, dynamic> map) {
    return GetUserProvisioningEventsArgs(
      directoryId: (map['directoryId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      userProvisioningId: map['userProvisioningId'] == null ? null : (map['userProvisioningId'] as String).input(),
    );
  }
}

