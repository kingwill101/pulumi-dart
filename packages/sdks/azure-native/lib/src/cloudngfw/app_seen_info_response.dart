// ignore_for_file: unused_element, unnecessary_cast


/// Definition for App Seen
class AppSeenInfoResponse {
  /// category
  final String category;
  /// risk
  final String risk;
  /// standardPorts
  final String standardPorts;
  /// subCategory
  final String subCategory;
  /// tag
  final String tag;
  /// technology
  final String technology;
  /// title
  final String title;

  /// Creates a new [AppSeenInfoResponse].
  /// [category] category
  /// [risk] risk
  /// [standardPorts] standardPorts
  /// [subCategory] subCategory
  /// [tag] tag
  /// [technology] technology
  /// [title] title
  AppSeenInfoResponse({
    required this.category,
    required this.risk,
    required this.standardPorts,
    required this.subCategory,
    required this.tag,
    required this.technology,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'risk': risk,
      'standardPorts': standardPorts,
      'subCategory': subCategory,
      'tag': tag,
      'technology': technology,
      'title': title,
    };
  }

  factory AppSeenInfoResponse.fromMap(Map<String, dynamic> map) {
    return AppSeenInfoResponse(
      category: map['category'] as String,
      risk: map['risk'] as String,
      standardPorts: map['standardPorts'] as String,
      subCategory: map['subCategory'] as String,
      tag: map['tag'] as String,
      technology: map['technology'] as String,
      title: map['title'] as String,
    );
  }
}

