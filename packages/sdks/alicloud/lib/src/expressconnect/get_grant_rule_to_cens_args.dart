// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_get_grant_rule_to_cens_get_grant_rule_to_cens_args_doc}
/// Arguments for getGrantRuleToCens.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_get_grant_rule_to_cens_get_grant_rule_to_cens_args_doc}
class GetGrantRuleToCensArgs {
  /// A list of Grant Rule To Cen IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the VBR.
  final pulumi.Input<String> instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetGrantRuleToCensArgs].
  /// [ids] A list of Grant Rule To Cen IDs.
  /// [instanceId] The ID of the VBR.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetGrantRuleToCensArgs({
    this.ids,
    required this.instanceId,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetGrantRuleToCensArgs.fromMap(Map<String, dynamic> map) {
    return GetGrantRuleToCensArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
    );
  }
}

