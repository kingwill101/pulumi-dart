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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

