// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_get_product_get_product_args_doc}
/// Arguments for getProduct.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_get_product_get_product_args_doc}
class GetProductArgs {
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

  /// Creates a new [GetProductArgs].
  /// [acceptLanguage] Language code. Valid values are `en` (English), `jp` (Japanese), `zh` (Chinese). The default value is `en`.
  /// [id] ID of the product.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags applied to the product.
  GetProductArgs({
    pulumi.Output<String>? acceptLanguage,
    required pulumi.Output<String> id,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      id = pulumi.Input.asInput<String>(id),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'id': id,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetProductArgs.fromMap(Map<String, dynamic> map) {
    return GetProductArgs(
      acceptLanguage: map['acceptLanguage'] == null ? null : pulumi.Output.create<String>(map['acceptLanguage'] as String),
      id: pulumi.Output.create<String>(map['id'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

