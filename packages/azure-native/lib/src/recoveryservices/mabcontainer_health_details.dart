// ignore_for_file: unused_element, unnecessary_cast


/// MAB workload-specific Health Details.
class MABContainerHealthDetails {
  /// Health Code
  final int? code;
  /// Health Message
  final String? message;
  /// Health Recommended Actions
  final List<String>? recommendations;
  /// Health Title
  final String? title;

  /// Creates a new [MABContainerHealthDetails].
  /// [code] Health Code
  /// [message] Health Message
  /// [recommendations] Health Recommended Actions
  /// [title] Health Title
  MABContainerHealthDetails({
    this.code,
    this.message,
    this.recommendations,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
      'recommendations': ?recommendations,
      'title': ?title,
    };
  }

  factory MABContainerHealthDetails.fromMap(Map<String, dynamic> map) {
    return MABContainerHealthDetails(
      code: map['code'] == null ? null : map['code'] as int,
      message: map['message'] == null ? null : map['message'] as String,
      recommendations: map['recommendations'] == null ? null : (map['recommendations'] as List).cast<String>(),
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

