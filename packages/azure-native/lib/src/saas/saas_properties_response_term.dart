// ignore_for_file: unused_element, unnecessary_cast


/// The current Term object.
class SaasPropertiesResponseTerm {
  /// The end date of the current term
  final String? endDate;
  /// The start date of the current term
  final String? startDate;
  /// The unit indicating Monthly / Yearly
  final String? termUnit;

  /// Creates a new [SaasPropertiesResponseTerm].
  /// [endDate] The end date of the current term
  /// [startDate] The start date of the current term
  /// [termUnit] The unit indicating Monthly / Yearly
  SaasPropertiesResponseTerm({
    this.endDate,
    this.startDate,
    this.termUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': ?endDate,
      'startDate': ?startDate,
      'termUnit': ?termUnit,
    };
  }

  factory SaasPropertiesResponseTerm.fromMap(Map<String, dynamic> map) {
    return SaasPropertiesResponseTerm(
      endDate: map['endDate'] == null ? null : map['endDate'] as String,
      startDate: map['startDate'] == null ? null : map['startDate'] as String,
      termUnit: map['termUnit'] == null ? null : map['termUnit'] as String,
    );
  }
}

