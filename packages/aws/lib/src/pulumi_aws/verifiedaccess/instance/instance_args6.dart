// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Instance.
class InstanceArgs6 {
  /// The custom subdomain for the CIDR endpoints.
  final Input<String>? cidrEndpointsCustomSubdomain;

  /// A description for the AWS Verified Access Instance.
  final Input<String>? description;

  /// Enable or disable support for Federal Information Processing Standards (FIPS) on the AWS Verified Access Instance.
  final Input<bool>? fipsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  InstanceArgs6({
    this.cidrEndpointsCustomSubdomain,
    this.description,
    this.fipsEnabled,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrEndpointsCustomSubdomainValue = cidrEndpointsCustomSubdomain;
    if (cidrEndpointsCustomSubdomainValue != null) {
      map['cidrEndpointsCustomSubdomain'] = cidrEndpointsCustomSubdomainValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final fipsEnabledValue = fipsEnabled;
    if (fipsEnabledValue != null) {
      map['fipsEnabled'] = fipsEnabledValue;
    }
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

  factory InstanceArgs6.fromMap(Map<String, dynamic> map) {
    return InstanceArgs6(
      cidrEndpointsCustomSubdomain:
          Input.asOptionalInput<String>(map['cidrEndpointsCustomSubdomain']),
      description: Input.asOptionalInput<String>(map['description']),
      fipsEnabled: Input.asOptionalInput<bool>(map['fipsEnabled']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
