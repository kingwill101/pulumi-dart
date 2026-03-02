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
  DataSourcePrecedenceResponse({
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
      dataSourceReferenceId: (map['dataSourceReferenceId'] as String).input(),
      dataSourceType: (map['dataSourceType'] as String).input(),
      id: (map['id'] as int).input(),
      name: (map['name'] as String).input(),
      precedence: map['precedence'] == null ? null : (map['precedence']! as int).input(),
      status: (map['status'] as String).input(),
    );
  }
}

