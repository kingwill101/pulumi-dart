// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_secrets_filter/get_secrets_filter.dart';

/// Arguments for getSecrets.
class GetSecretsSecretsmanagerArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetSecretsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetSecretsSecretsmanagerArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetSecretsFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              pulumi.Input.encodeList<GetSecretsFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetSecretsSecretsmanagerArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecretsmanagerArgs(
      filters:
          pulumi.Input.asOptionalInput<List<GetSecretsFilter>>(map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
