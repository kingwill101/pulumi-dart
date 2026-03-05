// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_provisioning_events_event.dart';

/// Result data returned by getUserProvisioningEvents.
class GetUserProvisioningEventsResult {
  /// Directory ID
  final String directoryId;
  /// A list of User Provisioning Event Entries. Each element contains the following attributes:
  final List<GetUserProvisioningEventsEvent> events;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of User Provisioning Event IDs.
  final List<String> ids;
  final String? outputFile;
  /// The ID of the User Provisioning.
  final String? userProvisioningId;

  /// Creates a new [GetUserProvisioningEventsResult].
  /// [directoryId] Directory ID
  /// [events] A list of User Provisioning Event Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of User Provisioning Event IDs.
  /// [outputFile] Optional.
  /// [userProvisioningId] The ID of the User Provisioning.
  GetUserProvisioningEventsResult({
    required this.directoryId,
    required this.events,
    required this.id,
    required this.ids,
    this.outputFile,
    this.userProvisioningId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'events': pulumi.Input.encodeList<GetUserProvisioningEventsEvent, Map<String, dynamic>>(events, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'userProvisioningId': ?userProvisioningId,
    };
  }

  factory GetUserProvisioningEventsResult.fromMap(Map<String, dynamic> map) {
    return GetUserProvisioningEventsResult(
      directoryId: map['directoryId'] as String,
      events: pulumi.Input.decodeList<GetUserProvisioningEventsEvent>(map['events']!, (value) => GetUserProvisioningEventsEvent.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userProvisioningId: (() { final guardedValue = map['userProvisioningId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

