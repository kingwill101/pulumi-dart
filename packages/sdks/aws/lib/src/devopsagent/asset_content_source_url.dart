// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssetContentSourceUrl {
  /// Source URL from which to import asset content.
  final pulumi.Input<String> url;

  /// Creates a new [AssetContentSourceUrl].
  /// [url] Source URL from which to import asset content.
  const AssetContentSourceUrl({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory AssetContentSourceUrl.fromMap(Map<String, dynamic> map) {
    return AssetContentSourceUrl(
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
