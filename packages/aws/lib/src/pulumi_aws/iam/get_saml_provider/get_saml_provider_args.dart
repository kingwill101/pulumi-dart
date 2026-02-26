// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSamlProvider.
class GetSamlProviderArgs {
  /// ARN assigned by AWS for the provider.
  final Input<String> arn;

  /// Tags attached to the SAML provider.
  final Input<Map<String, String>>? tags;

  GetSamlProviderArgs({
    required this.arn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetSamlProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetSamlProviderArgs(
      arn: Input.asInput<String>(map['arn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
