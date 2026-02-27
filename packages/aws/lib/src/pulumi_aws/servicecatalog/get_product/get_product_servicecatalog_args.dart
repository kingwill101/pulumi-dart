// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProduct.
class GetProductServicecatalogArgs {
  /// Language code. Valid values are `en` (English), `jp` (Japanese), `zh` (Chinese). The default value is `en`.
  final pulumi.Input<String>? acceptLanguage;

  /// ID of the product.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags applied to the product.
  final pulumi.Input<Map<String, String>>? tags;

  GetProductServicecatalogArgs({
    this.acceptLanguage,
    required this.id,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptLanguageValue = acceptLanguage;
    if (acceptLanguageValue != null) {
      map['acceptLanguage'] = acceptLanguageValue;
    }
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetProductServicecatalogArgs.fromMap(Map<String, dynamic> map) {
    return GetProductServicecatalogArgs(
      acceptLanguage:
          pulumi.Input.asOptionalInput<String>(map['acceptLanguage']),
      id: pulumi.Input.asInput<String>(map['id']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
