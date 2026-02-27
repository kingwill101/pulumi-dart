// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_ssl_policy_min_tls_version_compute_v1.dart';
import 'region_ssl_policy_profile_compute_v1.dart';

/// The set of arguments for RegionSslPolicy.
class RegionSslPolicyComputeV1Args {
  /// A list of features enabled when the selected profile is CUSTOM. The method returns the set of features that can be specified in this list. This field must be empty if the profile is not CUSTOM.
  final pulumi.Input<List<String>>? customFeatures;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2.
  final pulumi.Input<RegionSslPolicyMinTlsVersionComputeV1>? minTlsVersion;

  /// Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
  final pulumi.Input<RegionSslPolicyProfileComputeV1>? profile;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  RegionSslPolicyComputeV1Args({
    this.customFeatures,
    this.description,
    this.minTlsVersion,
    this.name,
    this.profile,
    this.project,
    required this.region,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customFeaturesValue = customFeatures;
    if (customFeaturesValue != null) {
      map['customFeatures'] = customFeaturesValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final minTlsVersionValue = minTlsVersion;
    if (minTlsVersionValue != null) {
      map['minTlsVersion'] = pulumi.Input.mapOptionalInputValue<
          RegionSslPolicyMinTlsVersionComputeV1,
          String>(minTlsVersionValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final profileValue = profile;
    if (profileValue != null) {
      map['profile'] = pulumi.Input.mapOptionalInputValue<
          RegionSslPolicyProfileComputeV1,
          String>(profileValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory RegionSslPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return RegionSslPolicyComputeV1Args(
      customFeatures:
          pulumi.Input.asOptionalInput<List<String>>(map['customFeatures']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      minTlsVersion:
          pulumi.Input.asOptionalInput<RegionSslPolicyMinTlsVersionComputeV1>(
              map['minTlsVersion']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      profile: pulumi.Input.asOptionalInput<RegionSslPolicyProfileComputeV1>(
          map['profile']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
