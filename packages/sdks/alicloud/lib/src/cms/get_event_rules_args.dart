// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_get_event_rules_get_event_rules_args_doc}
/// Arguments for getEventRules.
/// {@endtemplate}
/// {@macro pulumi_cms_get_event_rules_get_event_rules_args_doc}
class GetEventRulesArgs {
  /// A list of Event Rule IDs. Its element value is same as Event Rule Name.
  final pulumi.Input<List<String>>? ids;
  /// The name prefix.
  final pulumi.Input<String>? namePrefix;
  /// A regex string to filter results by Event Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The status of the resource. Valid values: `DISABLED`, `ENABLED`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetEventRulesArgs].
  /// [ids] A list of Event Rule IDs. Its element value is same as Event Rule Name.
  /// [namePrefix] The name prefix.
  /// [nameRegex] A regex string to filter results by Event Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The status of the resource. Valid values: `DISABLED`, `ENABLED`.
  GetEventRulesArgs({
    this.ids,
    this.namePrefix,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'namePrefix': ?namePrefix,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
    };
  }

  factory GetEventRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetEventRulesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber'] as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

