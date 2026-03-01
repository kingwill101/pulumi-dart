// ignore_for_file: unused_element, unnecessary_cast


/// The database suspension details. If the database is suspended, this object contains information related to the database's suspension state.
class SuspensionDetailsResponse {
  /// The starting date and time of the suspension state.
  final String? suspensionStartDate;

  /// Creates a new [SuspensionDetailsResponse].
  /// [suspensionStartDate] The starting date and time of the suspension state.
  SuspensionDetailsResponse({
    this.suspensionStartDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'suspensionStartDate': ?suspensionStartDate,
    };
  }

  factory SuspensionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SuspensionDetailsResponse(
      suspensionStartDate: map['suspensionStartDate'] == null ? null : map['suspensionStartDate'] as String,
    );
  }
}

