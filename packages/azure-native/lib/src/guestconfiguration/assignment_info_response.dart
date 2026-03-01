// ignore_for_file: unused_element, unnecessary_cast

import 'configuration_info_response.dart';

/// Information about the guest configuration assignment.
class AssignmentInfoResponse {
  /// Information about the configuration.
  final ConfigurationInfoResponse? configuration;
  /// Name of the guest configuration assignment.
  final String name;

  /// Creates a new [AssignmentInfoResponse].
  /// [configuration] Information about the configuration.
  /// [name] Name of the guest configuration assignment.
  AssignmentInfoResponse({
    this.configuration,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'name': name,
    };
  }

  factory AssignmentInfoResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentInfoResponse(
      configuration: map['configuration'] == null ? null : ConfigurationInfoResponse.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

