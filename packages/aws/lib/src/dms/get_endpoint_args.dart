// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_get_endpoint_get_endpoint_args_doc}
/// Arguments for getEndpoint.
/// {@endtemplate}
/// {@macro pulumi_dms_get_endpoint_get_endpoint_args_doc}
class GetEndpointArgs {
  /// Database endpoint identifier. Identifiers must contain from 1 to 255 alphanumeric characters or hyphens, begin with a letter, contain only ASCII letters, digits, and hyphens, not end with a hyphen, and not contain two consecutive hyphens.
  final pulumi.Input<String> endpointId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetEndpointArgs].
  /// [endpointId] Database endpoint identifier. Identifiers must contain from 1 to 255 alphanumeric characters or hyphens, begin with a letter, contain only ASCII letters, digits, and hyphens, not end with a hyphen, and not contain two consecutive hyphens.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  GetEndpointArgs({
    required String endpointId,
    String? region,
    Map<String, String>? tags,
  })  : endpointId = pulumi.Input.asInput<String>(endpointId),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointId'] = endpointId;
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

  factory GetEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointArgs(
      endpointId: map['endpointId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
