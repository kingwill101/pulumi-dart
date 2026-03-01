// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_blocked_regions_get_blocked_regions_args_doc}
/// Arguments for getBlockedRegions.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_blocked_regions_get_blocked_regions_args_doc}
class GetBlockedRegionsArgs {
  /// The language. Valid values: `zh`, `en`, `jp`.
  final pulumi.Input<String> language;

  /// Creates a new [GetBlockedRegionsArgs].
  /// [language] The language. Valid values: `zh`, `en`, `jp`.
  GetBlockedRegionsArgs({
    required pulumi.Output<String> language,
  }) :
      language = pulumi.Input.asInput<String>(language);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'language': language,
    };
  }

  factory GetBlockedRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetBlockedRegionsArgs(
      language: pulumi.Output.create<String>(map['language'] as String),
    );
  }
}

