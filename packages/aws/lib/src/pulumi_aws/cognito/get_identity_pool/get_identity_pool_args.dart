// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIdentityPool.
class GetIdentityPoolArgs {
  /// The Cognito Identity Pool name.
  final pulumi.Input<String> identityPoolName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assigned to the Identity Pool.
  final pulumi.Input<Map<String, String>>? tags;

  GetIdentityPoolArgs({
    required this.identityPoolName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identityPoolName'] = identityPoolName;
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

  factory GetIdentityPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetIdentityPoolArgs(
      identityPoolName: pulumi.Input.asInput<String>(map['identityPoolName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
