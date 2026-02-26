// ignore_for_file: unused_element, unnecessary_cast

import 'location_response5.dart';

/// Derived details about the company.
class CompanyDerivedInfoResponse2 {
  /// A structured headquarters location of the company, resolved from Company.headquarters_address if provided.
  final LocationResponse5 headquartersLocation;

  CompanyDerivedInfoResponse2({
    required this.headquartersLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headquartersLocation'] = headquartersLocation.toMap();
    return map;
  }

  factory CompanyDerivedInfoResponse2.fromMap(Map<String, dynamic> map) {
    return CompanyDerivedInfoResponse2(
      headquartersLocation: LocationResponse5.fromMap(
          (map['headquartersLocation'] as Map).cast<String, dynamic>()),
    );
  }
}
