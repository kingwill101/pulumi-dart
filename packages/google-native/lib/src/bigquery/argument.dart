// ignore_for_file: unused_element, unnecessary_cast

import 'argument_argument_kind.dart';
import 'argument_mode.dart';
import 'standard_sql_data_type.dart';

/// Input/output argument of a function or a stored procedure.
class Argument {
  /// Optional. Defaults to FIXED_TYPE.
  final ArgumentArgumentKind? argumentKind;

  /// Required unless argument_kind = ANY_TYPE.
  final StandardSqlDataType? dataType;

  /// Optional. Whether the argument is an aggregate function parameter. Must be Unset for routine types other than AGGREGATE_FUNCTION. For AGGREGATE_FUNCTION, if set to false, it is equivalent to adding "NOT AGGREGATE" clause in DDL; Otherwise, it is equivalent to omitting "NOT AGGREGATE" clause in DDL.
  final bool? isAggregate;

  /// Optional. Specifies whether the argument is input or output. Can be set for procedures only.
  final ArgumentMode? mode;

  /// Optional. The name of this argument. Can be absent for function return argument.
  final String? name;

  /// Creates a new [Argument].
  /// [argumentKind] Optional. Defaults to FIXED_TYPE.
  /// [dataType] Required unless argument_kind = ANY_TYPE.
  /// [isAggregate] Optional. Whether the argument is an aggregate function parameter. Must be Unset for routine types other than AGGREGATE_FUNCTION. For AGGREGATE_FUNCTION, if set to false, it is equivalent to adding "NOT AGGREGATE" clause in DDL; Otherwise, it is equivalent to omitting "NOT AGGREGATE" clause in DDL.
  /// [mode] Optional. Specifies whether the argument is input or output. Can be set for procedures only.
  /// [name] Optional. The name of this argument. Can be absent for function return argument.
  Argument({
    this.argumentKind,
    this.dataType,
    this.isAggregate,
    this.mode,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argumentKind': ?argumentKind == null ? null : argumentKind!.value,
      'dataType': ?dataType == null ? null : dataType!.toMap(),
      'isAggregate': ?isAggregate,
      'mode': ?mode == null ? null : mode!.value,
      'name': ?name,
    };
  }

  factory Argument.fromMap(Map<String, dynamic> map) {
    return Argument(
      argumentKind: map['argumentKind'] == null
          ? null
          : ArgumentArgumentKind.fromValue(map['argumentKind'] as String),
      dataType: map['dataType'] == null
          ? null
          : StandardSqlDataType.fromMap(
              (map['dataType'] as Map).cast<String, dynamic>(),
            ),
      isAggregate: map['isAggregate'] == null
          ? null
          : map['isAggregate'] as bool,
      mode: map['mode'] == null
          ? null
          : ArgumentMode.fromValue(map['mode'] as String),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
