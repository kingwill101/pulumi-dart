// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'member_update_status_response.dart';
import 'update_status_response.dart';

/// The status of a UpdateGroup.
class UpdateGroupStatusResponse {
  /// The list of member this UpdateGroup updates.
  final List<MemberUpdateStatusResponse> members;
  /// The name of the UpdateGroup.
  final String name;
  /// The status of the UpdateGroup.
  final UpdateStatusResponse status;

  /// Creates a new [UpdateGroupStatusResponse].
  /// [members] The list of member this UpdateGroup updates.
  /// [name] The name of the UpdateGroup.
  /// [status] The status of the UpdateGroup.
  UpdateGroupStatusResponse({
    required this.members,
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': pulumi.Input.encodeList<MemberUpdateStatusResponse, Map<String, dynamic>>(members, (value) => value.toMap()),
      'name': name,
      'status': status.toMap(),
    };
  }

  factory UpdateGroupStatusResponse.fromMap(Map<String, dynamic> map) {
    return UpdateGroupStatusResponse(
      members: pulumi.Input.decodeList<MemberUpdateStatusResponse>(map['members'], (value) => MemberUpdateStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      status: UpdateStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

