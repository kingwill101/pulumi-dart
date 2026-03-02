// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_members_member.dart';

/// Result data returned by getInstanceMembers.
class GetInstanceMembersResult {
  final String? currentPage;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Instance Member IDs.
  final List<String> ids;
  /// A list of Instance Member Entries. Each element contains the following attributes:
  final List<GetInstanceMembersMember> members;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// Creates a new [GetInstanceMembersResult].
  /// [currentPage] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Instance Member IDs.
  /// [members] A list of Instance Member Entries. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetInstanceMembersResult({
    this.currentPage,
    required this.id,
    required this.ids,
    required this.members,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': ?currentPage,
      'id': id,
      'ids': ids,
      'members': pulumi.Input.encodeList<GetInstanceMembersMember, Map<String, dynamic>>(members, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetInstanceMembersResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceMembersResult(
      currentPage: map['currentPage'] == null ? null : map['currentPage']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      members: pulumi.Input.decodeList<GetInstanceMembersMember>(map['members'], (value) => GetInstanceMembersMember.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
    );
  }
}

