// ignore_for_file: unused_element, unnecessary_cast


/// Represents an incident label
class IncidentLabelResponse {
  /// The name of the label
  final String labelName;
  /// The type of the label
  final String labelType;

  /// Creates a new [IncidentLabelResponse].
  /// [labelName] The name of the label
  /// [labelType] The type of the label
  IncidentLabelResponse({
    required this.labelName,
    required this.labelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelName': labelName,
      'labelType': labelType,
    };
  }

  factory IncidentLabelResponse.fromMap(Map<String, dynamic> map) {
    return IncidentLabelResponse(
      labelName: map['labelName'] as String,
      labelType: map['labelType'] as String,
    );
  }
}

