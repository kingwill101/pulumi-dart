// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ApiKey.
class ApiKeyAppsyncArgs {
  /// ID of the associated AppSync API
  final pulumi.Input<String> apiId;

  /// API key description. Defaults to "Managed by Pulumi".
  final pulumi.Input<String>? description;

  /// RFC3339 string representation of the expiry date. Rounded down to nearest hour. By default, it is 7 days from the date of creation.
  final pulumi.Input<String>? expires;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  ApiKeyAppsyncArgs({
    required this.apiId,
    this.description,
    this.expires,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final expiresValue = expires;
    if (expiresValue != null) {
      map['expires'] = expiresValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ApiKeyAppsyncArgs.fromMap(Map<String, dynamic> map) {
    return ApiKeyAppsyncArgs(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      expires: pulumi.Input.asOptionalInput<String>(map['expires']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
