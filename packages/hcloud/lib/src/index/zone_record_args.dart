// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zone_record_zone_record_args_doc}
/// The set of arguments for ZoneRecord.
/// {@endtemplate}
/// {@macro pulumi_index_zone_record_zone_record_args_doc}
class ZoneRecordArgs {
  /// Comment of the Zone Record.
  final pulumi.Input<String>? comment;
  /// Name of the Zone Record.
  final pulumi.Input<String>? name;
  /// Type of the Zone Record.
  final pulumi.Input<String> type;
  /// Value of the Zone Record.
  final pulumi.Input<String> value;
  /// ID or Name of the parent Zone.
  final pulumi.Input<String> zone;

  /// Creates a new [ZoneRecordArgs].
  /// [comment] Comment of the Zone Record.
  /// [name] Name of the Zone Record.
  /// [type] Type of the Zone Record.
  /// [value] Value of the Zone Record.
  /// [zone] ID or Name of the parent Zone.
  ZoneRecordArgs({
    String? comment,
    String? name,
    required String type,
    required String value,
    required String zone,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      name = pulumi.Input.asOptionalInput<String>(name),
      type = pulumi.Input.asInput<String>(type),
      value = pulumi.Input.asInput<String>(value),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'name': ?name,
      'type': type,
      'value': value,
      'zone': zone,
    };
  }

  factory ZoneRecordArgs.fromMap(Map<String, dynamic> map) {
    return ZoneRecordArgs(
      comment: map['comment'] == null ? null : map['comment'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
      zone: map['zone'] as String,
    );
  }
}

