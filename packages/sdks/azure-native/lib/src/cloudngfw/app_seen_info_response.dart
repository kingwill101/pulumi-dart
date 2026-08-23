// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition for App Seen
class AppSeenInfoResponse {
  /// category
  final pulumi.Input<String> category;
  /// risk
  final pulumi.Input<String> risk;
  /// standardPorts
  final pulumi.Input<String> standardPorts;
  /// subCategory
  final pulumi.Input<String> subCategory;
  /// tag
  final pulumi.Input<String> tag;
  /// technology
  final pulumi.Input<String> technology;
  /// title
  final pulumi.Input<String> title;

  /// Creates a new [AppSeenInfoResponse].
  /// [category] category
  /// [risk] risk
  /// [standardPorts] standardPorts
  /// [subCategory] subCategory
  /// [tag] tag
  /// [technology] technology
  /// [title] title
  const AppSeenInfoResponse({
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
      category: pulumi.Input.fromValue(map['category'] as String),
      risk: pulumi.Input.fromValue(map['risk'] as String),
      standardPorts: pulumi.Input.fromValue(map['standardPorts'] as String),
      subCategory: pulumi.Input.fromValue(map['subCategory'] as String),
      tag: pulumi.Input.fromValue(map['tag'] as String),
      technology: pulumi.Input.fromValue(map['technology'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
