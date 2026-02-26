// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RegionHealthAggregationPolicy.
class RegionHealthAggregationPolicyArgs {
  /// An optional description of this resource. Provide this property when you
  /// create the resource.
  final Input<String>? description;

  /// Can only be set if the `policyType` field is
  /// `BACKEND_SERVICE_POLICY`. Specifies the threshold (as a
  /// percentage) of healthy endpoints required in order to consider the
  /// aggregated health result HEALTHY. Defaults to <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>. Must be in
  /// range [0, 100]. Not applicable if the `policyType` field is
  /// `DNB_PUBLIC_IP_POLICY`. Can be mutated. This field is optional,
  /// and will be set to the default if unspecified. Note that both this
  /// threshold and `minHealthyThreshold` must be satisfied in order
  /// for HEALTHY to be the aggregated result. "Endpoints" refers to network
  /// endpoints within a Network Endpoint Group or instances within an Instance
  /// Group.
  final Input<int>? healthyPercentThreshold;

  /// Can only be set if the `policyType` field is
  /// `BACKEND_SERVICE_POLICY`. Specifies the minimum number of
  /// healthy endpoints required in order to consider the aggregated health
  /// result HEALTHY. Defaults to <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Must be positive. Not
  /// applicable if the `policyType` field is
  /// `DNB_PUBLIC_IP_POLICY`. Can be mutated. This field is optional,
  /// and will be set to the default if unspecified. Note that both this
  /// threshold and `healthyPercentThreshold` must be satisfied in
  /// order for HEALTHY to be the aggregated result. "Endpoints" refers to
  /// network endpoints within a Network Endpoint Group or instances within an
  /// Instance Group.
  final Input<int>? minHealthyThreshold;

  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  final Input<String>? name;

  /// Specifies the type of the healthAggregationPolicy. The only allowed value
  /// for global resources is `DNS_PUBLIC_IP_POLICY`. The only allowed
  /// value for regional resources is `BACKEND_SERVICE_POLICY`. Must
  /// be specified when the healthAggregationPolicy is created, and cannot be
  /// mutated.
  /// Default value is `BACKEND_SERVICE_POLICY`.
  /// Possible values are: `DNS_PUBLIC_IP_POLICY`, `BACKEND_SERVICE_POLICY`.
  final Input<String>? policyType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// URL of the region where the health aggregation policy resides.
  final Input<String> region;

  RegionHealthAggregationPolicyArgs({
    this.description,
    this.healthyPercentThreshold,
    this.minHealthyThreshold,
    this.name,
    this.policyType,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final healthyPercentThresholdValue = healthyPercentThreshold;
    if (healthyPercentThresholdValue != null) {
      map['healthyPercentThreshold'] = healthyPercentThresholdValue;
    }
    final minHealthyThresholdValue = minHealthyThreshold;
    if (minHealthyThresholdValue != null) {
      map['minHealthyThreshold'] = minHealthyThresholdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final policyTypeValue = policyType;
    if (policyTypeValue != null) {
      map['policyType'] = policyTypeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory RegionHealthAggregationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RegionHealthAggregationPolicyArgs(
      description: Input.asOptionalInput<String>(map['description']),
      healthyPercentThreshold:
          Input.asOptionalInput<int>(map['healthyPercentThreshold']),
      minHealthyThreshold:
          Input.asOptionalInput<int>(map['minHealthyThreshold']),
      name: Input.asOptionalInput<String>(map['name']),
      policyType: Input.asOptionalInput<String>(map['policyType']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
