// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_routine_spec_argument_mode.dart';

/// Input or output argument of a function or stored procedure.
class GoogleCloudDatacatalogV1RoutineSpecArgument {
  /// Specifies whether the argument is input or output.
  final GoogleCloudDatacatalogV1RoutineSpecArgumentMode? mode;

  /// The name of the argument. A return argument of a function might not have a name.
  final String? name;

  /// Type of the argument. The exact value depends on the source system and the language.
  final String? type;

  GoogleCloudDatacatalogV1RoutineSpecArgument({
    this.mode,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue.value;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1RoutineSpecArgument.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1RoutineSpecArgument(
      mode: map['mode'] == null
          ? null
          : GoogleCloudDatacatalogV1RoutineSpecArgumentMode.fromValue(
              map['mode'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
