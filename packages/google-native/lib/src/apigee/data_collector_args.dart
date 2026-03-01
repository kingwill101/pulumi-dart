// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collector_type.dart';

/// {@template pulumi_apigee_v1_data_collector_args_doc}
/// The set of arguments for DataCollector.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_data_collector_args_doc}
class DataCollectorArgs {
  /// ID of the data collector. Overrides any ID in the data collector resource. Must be a string beginning with `dc_` that contains only letters, numbers, and underscores.
  final pulumi.Input<String>? dataCollectorId;

  /// A description of the data collector.
  final pulumi.Input<String>? description;

  /// ID of the data collector. Must begin with `dc_`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Immutable. The type of data this data collector will collect.
  final pulumi.Input<DataCollectorType>? type;

  /// Creates a new [DataCollectorArgs].
  /// [dataCollectorId] ID of the data collector. Overrides any ID in the data collector resource. Must be a string beginning with `dc_` that contains only letters, numbers, and underscores.
  /// [description] A description of the data collector.
  /// [name] ID of the data collector. Must begin with `dc_`.
  /// [organizationId] Required.
  /// [type] Immutable. The type of data this data collector will collect.
  DataCollectorArgs({
    String? dataCollectorId,
    String? description,
    String? name,
    required String organizationId,
    DataCollectorType? type,
  }) : dataCollectorId = pulumi.Input.asOptionalInput<String>(dataCollectorId),
       description = pulumi.Input.asOptionalInput<String>(description),
       name = pulumi.Input.asOptionalInput<String>(name),
       organizationId = pulumi.Input.asInput<String>(organizationId),
       type = pulumi.Input.asOptionalInput<DataCollectorType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectorId': ?dataCollectorId,
      'description': ?description,
      'name': ?name,
      'organizationId': organizationId,
      'type': ?pulumi.Input.mapOptionalInputValue<DataCollectorType, String>(
        type,
        (value) => value.value,
      ),
    };
  }

  factory DataCollectorArgs.fromMap(Map<String, dynamic> map) {
    return DataCollectorArgs(
      dataCollectorId: map['dataCollectorId'] == null
          ? null
          : map['dataCollectorId'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      type: map['type'] == null
          ? null
          : DataCollectorType.fromValue(map['type'] as String),
    );
  }
}
