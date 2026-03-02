// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource for a regional service location.
class DataTransferRegionalServiceResourceResponse {
  /// The location name.
  final pulumi.Input<String> location;
  /// The regional service name.
  final pulumi.Input<String> name;
  /// Describes the status of a service.
  final pulumi.Input<String> status;

  /// Creates a new [DataTransferRegionalServiceResourceResponse].
  /// [location] The location name.
  /// [name] The regional service name.
  /// [status] Describes the status of a service.
  DataTransferRegionalServiceResourceResponse({
    required this.location,
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'status': status,
    };
  }

  factory DataTransferRegionalServiceResourceResponse.fromMap(Map<String, dynamic> map) {
    return DataTransferRegionalServiceResourceResponse(
      location: (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

