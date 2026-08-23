// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// URL/EDL to match
class CategoryResponse {
  /// feed list
  final pulumi.Input<List<String>> feeds;
  /// custom URL
  final pulumi.Input<List<String>> urlCustom;

  /// Creates a new [CategoryResponse].
  /// [feeds] feed list
  /// [urlCustom] custom URL
  const CategoryResponse({
    required this.feeds,
    required this.urlCustom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'feeds': feeds,
      'urlCustom': urlCustom,
    };
  }

  factory CategoryResponse.fromMap(Map<String, dynamic> map) {
    return CategoryResponse(
      feeds: pulumi.Input.fromValue((map['feeds'] as List).cast<String>()),
      urlCustom: pulumi.Input.fromValue((map['urlCustom'] as List).cast<String>()),
    );
  }
}
