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
  const GetGrantRuleToCensArgs({
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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

