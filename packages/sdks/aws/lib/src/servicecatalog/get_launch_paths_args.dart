// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_get_launch_paths_get_launch_paths_args_doc}
/// Arguments for getLaunchPaths.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_get_launch_paths_get_launch_paths_args_doc}
class GetLaunchPathsArgs {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// Product identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> productId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetLaunchPathsArgs].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [productId] Product identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetLaunchPathsArgs({
    pulumi.Output<String>? acceptLanguage,
    required pulumi.Output<String> productId,
    pulumi.Output<String>? region,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      productId = pulumi.Input.asInput<String>(productId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'productId': productId,
      'region': ?region,
    };
  }

  factory GetLaunchPathsArgs.fromMap(Map<String, dynamic> map) {
    return GetLaunchPathsArgs(
      acceptLanguage: map['acceptLanguage'] == null ? null : pulumi.Output.create<String>(map['acceptLanguage'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

