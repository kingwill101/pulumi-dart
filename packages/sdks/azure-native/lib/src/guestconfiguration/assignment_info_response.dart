// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_info_response.dart';

/// Information about the guest configuration assignment.
class AssignmentInfoResponse {
  /// Information about the configuration.
  final pulumi.Input<ConfigurationInfoResponse>? configuration;
  /// Name of the guest configuration assignment.
  final pulumi.Input<String> name;

  /// Creates a new [AssignmentInfoResponse].
  /// [configuration] Information about the configuration.
  /// [name] Name of the guest configuration assignment.
  AssignmentInfoResponse({
    this.configuration,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<ConfigurationInfoResponse, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'name': name,
    };
  }

  factory AssignmentInfoResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentInfoResponse(
      configuration: map['configuration'] == null ? null : (ConfigurationInfoResponse.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}

