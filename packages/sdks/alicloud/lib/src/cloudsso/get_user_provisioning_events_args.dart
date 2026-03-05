// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_get_user_provisioning_events_get_user_provisioning_events_args_doc}
/// Arguments for getUserProvisioningEvents.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_get_user_provisioning_events_get_user_provisioning_events_args_doc}
class GetUserProvisioningEventsArgs {
  /// Directory ID
  final pulumi.Input<String> directoryId;
  /// A list of User Provisioning Event IDs. The value is formulated as `&lt;directory_id&gt;:&lt;event_id&gt;`.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the User Provisioning.
  final pulumi.Input<String>? userProvisioningId;

  /// Creates a new [GetUserProvisioningEventsArgs].
  /// [directoryId] Directory ID
  /// [ids] A list of User Provisioning Event IDs. The value is formulated as `&lt;directory_id&gt;:&lt;event_id&gt;`.
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
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userProvisioningId: (() { final guardedValue = map['userProvisioningId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

