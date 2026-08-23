// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// URL/EDL to match
class Category {
  /// feed list
  final pulumi.Input<List<String>> feeds;
  /// custom URL
  final pulumi.Input<List<String>> urlCustom;

  /// Creates a new [Category].
  /// [feeds] feed list
  /// [urlCustom] custom URL
  const Category({
    required this.feeds,
    required this.urlCustom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'feeds': feeds,
      'urlCustom': urlCustom,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      feeds: pulumi.Input.fromValue((map['feeds'] as List).cast<String>()),
      urlCustom: pulumi.Input.fromValue((map['urlCustom'] as List).cast<String>()),
    );
  }
}
