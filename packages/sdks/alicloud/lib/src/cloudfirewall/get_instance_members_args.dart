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
    this.currentPage,
    this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

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
      currentPage: map['currentPage'] == null ? null : (map['currentPage']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
    );
  }
}

