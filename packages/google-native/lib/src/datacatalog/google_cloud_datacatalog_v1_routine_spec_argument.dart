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

  /// Creates a new [GoogleCloudDatacatalogV1RoutineSpecArgument].
  /// [mode] Specifies whether the argument is input or output.
  /// [name] The name of the argument. A return argument of a function might not have a name.
  /// [type] Type of the argument. The exact value depends on the source system and the language.
  GoogleCloudDatacatalogV1RoutineSpecArgument({
    this.mode,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode == null ? null : mode!.value,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GoogleCloudDatacatalogV1RoutineSpecArgument.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1RoutineSpecArgument(
      mode: map['mode'] == null ? null : GoogleCloudDatacatalogV1RoutineSpecArgumentMode.fromValue(map['mode'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

