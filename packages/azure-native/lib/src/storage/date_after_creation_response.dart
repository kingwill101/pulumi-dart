// ignore_for_file: unused_element, unnecessary_cast


/// Object to define snapshot and version action conditions.
class DateAfterCreationResponse {
  /// Value indicating the age in days after creation
  final double daysAfterCreationGreaterThan;
  /// Value indicating the age in days after last blob tier change time. This property is only applicable for tierToArchive actions and requires daysAfterCreationGreaterThan to be set for snapshots and blob version based actions. The blob will be archived if both the conditions are satisfied.
  final double? daysAfterLastTierChangeGreaterThan;

  /// Creates a new [DateAfterCreationResponse].
  /// [daysAfterCreationGreaterThan] Value indicating the age in days after creation
  /// [daysAfterLastTierChangeGreaterThan] Value indicating the age in days after last blob tier change time. This property is only applicable for tierToArchive actions and requires daysAfterCreationGreaterThan to be set for snapshots and blob version based actions. The blob will be archived if both the conditions are satisfied.
  DateAfterCreationResponse({
    required this.daysAfterCreationGreaterThan,
    this.daysAfterLastTierChangeGreaterThan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysAfterCreationGreaterThan': daysAfterCreationGreaterThan,
      'daysAfterLastTierChangeGreaterThan': ?daysAfterLastTierChangeGreaterThan,
    };
  }

  factory DateAfterCreationResponse.fromMap(Map<String, dynamic> map) {
    return DateAfterCreationResponse(
      daysAfterCreationGreaterThan: map['daysAfterCreationGreaterThan'] as double,
      daysAfterLastTierChangeGreaterThan: map['daysAfterLastTierChangeGreaterThan'] == null ? null : map['daysAfterLastTierChangeGreaterThan'] as double,
    );
  }
}

