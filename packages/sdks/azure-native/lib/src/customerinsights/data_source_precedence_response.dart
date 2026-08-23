// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data source precedence is a way to know the precedence of each data source.
class DataSourcePrecedenceResponse {
  /// The data source reference id.
  final pulumi.Input<String> dataSourceReferenceId;
  /// The data source type.
  final pulumi.Input<String> dataSourceType;
  /// The data source ID.
  final pulumi.Input<int> id;
  /// The data source name
  final pulumi.Input<String> name;
  /// the precedence value.
  final pulumi.Input<int>? precedence;
  /// The data source status.
  final pulumi.Input<String> status;

  /// Creates a new [DataSourcePrecedenceResponse].
  /// [dataSourceReferenceId] The data source reference id.
  /// [dataSourceType] The data source type.
  /// [id] The data source ID.
  /// [name] The data source name
  /// [precedence] the precedence value.
  /// [status] The data source status.
  const DataSourcePrecedenceResponse({
    required this.dataSourceReferenceId,
    required this.dataSourceType,
    required this.id,
    required this.name,
    this.precedence,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceReferenceId': dataSourceReferenceId,
      'dataSourceType': dataSourceType,
      'id': id,
      'name': name,
      'precedence': ?precedence,
      'status': status,
    };
  }

  factory DataSourcePrecedenceResponse.fromMap(Map<String, dynamic> map) {
    return DataSourcePrecedenceResponse(
      dataSourceReferenceId: pulumi.Input.fromValue(map['dataSourceReferenceId'] as String),
      dataSourceType: pulumi.Input.fromValue(map['dataSourceType'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      precedence: (() { final guardedValue = map['precedence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
