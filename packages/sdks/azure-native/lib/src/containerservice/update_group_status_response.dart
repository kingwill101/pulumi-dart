// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'member_update_status_response.dart';
import 'update_status_response.dart';

/// The status of a UpdateGroup.
class UpdateGroupStatusResponse {
  /// The list of member this UpdateGroup updates.
  final pulumi.Input<List<MemberUpdateStatusResponse>> members;

  /// The name of the UpdateGroup.
  final pulumi.Input<String> name;

  /// The status of the UpdateGroup.
  final pulumi.Input<UpdateStatusResponse> status;

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
      'members':
          pulumi.Input.mapInputValue<
            List<MemberUpdateStatusResponse>,
            List<Map<String, dynamic>>
          >(
            members,
            (value) =>
                pulumi.Input.encodeList<
                  MemberUpdateStatusResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'status':
          pulumi.Input.mapInputValue<
            UpdateStatusResponse,
            Map<String, dynamic>
          >(status, (value) => value.toMap()),
    };
  }

  factory UpdateGroupStatusResponse.fromMap(Map<String, dynamic> map) {
    return UpdateGroupStatusResponse(
      members: pulumi.Input.fromValue(
        pulumi.Input.decodeList<MemberUpdateStatusResponse>(
          map['members']!,
          (value) => MemberUpdateStatusResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      status: pulumi.Input.fromValue(
        UpdateStatusResponse.fromMap(
          (map['status']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
