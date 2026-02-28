// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_policy_min_tls_version_compute_beta.dart';
import 'ssl_policy_profile_compute_beta.dart';

/// {@template pulumi_compute_beta_ssl_policy_compute_beta_args_doc}
/// The set of arguments for SslPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_ssl_policy_compute_beta_args_doc}
class SslPolicyComputeBetaArgs {
  /// A list of features enabled when the selected profile is CUSTOM. The method returns the set of features that can be specified in this list. This field must be empty if the profile is not CUSTOM.
  final pulumi.Input<List<String>>? customFeatures;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2.
  final pulumi.Input<SslPolicyMinTlsVersionComputeBeta>? minTlsVersion;

  /// Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
  final pulumi.Input<SslPolicyProfileComputeBeta>? profile;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [SslPolicyComputeBetaArgs].
  /// [customFeatures] A list of features enabled when the selected profile is CUSTOM. The method returns the set of features that can be specified in this list. This field must be empty if the profile is not CUSTOM.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [minTlsVersion] The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2.
  /// [name] Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [profile] Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  SslPolicyComputeBetaArgs({
    List<String>? customFeatures,
    String? description,
    SslPolicyMinTlsVersionComputeBeta? minTlsVersion,
    String? name,
    SslPolicyProfileComputeBeta? profile,
    String? project,
    String? requestId,
  })  : customFeatures =
            pulumi.Input.asOptionalInput<List<String>>(customFeatures),
        description = pulumi.Input.asOptionalInput<String>(description),
        minTlsVersion =
            pulumi.Input.asOptionalInput<SslPolicyMinTlsVersionComputeBeta>(
                minTlsVersion),
        name = pulumi.Input.asOptionalInput<String>(name),
        profile =
            pulumi.Input.asOptionalInput<SslPolicyProfileComputeBeta>(profile),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId);

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
          SslPolicyMinTlsVersionComputeBeta,
          String>(minTlsVersionValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final profileValue = profile;
    if (profileValue != null) {
      map['profile'] = pulumi.Input.mapOptionalInputValue<
          SslPolicyProfileComputeBeta,
          String>(profileValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory SslPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return SslPolicyComputeBetaArgs(
      customFeatures: map['customFeatures'] == null
          ? null
          : (map['customFeatures'] as List).cast<String>(),
      description:
          map['description'] == null ? null : map['description'] as String,
      minTlsVersion: map['minTlsVersion'] == null
          ? null
          : SslPolicyMinTlsVersionComputeBeta.fromValue(
              map['minTlsVersion'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      profile: map['profile'] == null
          ? null
          : SslPolicyProfileComputeBeta.fromValue(map['profile'] as String),
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
    );
  }
}
