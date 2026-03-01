// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_get_instance_members_get_instance_members_args_doc}
/// Arguments for getInstanceMembers.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_get_instance_members_get_instance_members_args_doc}
class GetInstanceMembersArgs {
  final pulumi.Input<String>? currentPage;
  /// A list of Instance Member IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetInstanceMembersArgs].
  /// [currentPage] Optional.
  /// [ids] A list of Instance Member IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetInstanceMembersArgs({
    String? currentPage,
    List<String>? ids,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
  }) :
      currentPage = pulumi.Input.asOptionalInput<String>(currentPage),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': ?currentPage,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetInstanceMembersArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceMembersArgs(
      currentPage: map['currentPage'] == null ? null : map['currentPage'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
    );
  }
}

