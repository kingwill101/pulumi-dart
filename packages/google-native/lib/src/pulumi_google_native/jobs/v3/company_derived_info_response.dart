// ignore_for_file: unused_element, unnecessary_cast

import 'location_response4.dart';

/// Derived details about the company.
class CompanyDerivedInfoResponse {
  /// A structured headquarters location of the company, resolved from Company.hq_location if provided.
  final LocationResponse4 headquartersLocation;

  CompanyDerivedInfoResponse({
    required this.headquartersLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headquartersLocation'] = headquartersLocation.toMap();
    return map;
  }

  factory CompanyDerivedInfoResponse.fromMap(Map<String, dynamic> map) {
    return CompanyDerivedInfoResponse(
      headquartersLocation: LocationResponse4.fromMap(
          (map['headquartersLocation'] as Map).cast<String, dynamic>()),
    );
  }
}
