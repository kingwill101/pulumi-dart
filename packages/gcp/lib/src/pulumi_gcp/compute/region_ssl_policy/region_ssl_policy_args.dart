// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RegionSslPolicy.
class RegionSslPolicyArgs {
  /// A list of features enabled when the selected profile is CUSTOM. The
  /// method returns the set of features that can be specified in this
  /// list. This field must be empty if the profile is not CUSTOM.
  /// See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
  /// for which ciphers are available to use. **Note**: this argument
  /// *must* be present when using the `CUSTOM` profile. This argument
  /// *must not* be present when using any other profile.
  final Input<List<String>>? customFeatures;

  /// An optional description of this resource.
  final Input<String>? description;

  /// The minimum version of SSL protocol that can be used by the clients
  /// to establish a connection with the load balancer. When set to
  /// `TLS_1_3`, the profile field must be set to `RESTRICTED`.
  /// Default value is `TLS_1_0`.
  /// Possible values are: `TLS_1_0`, `TLS_1_1`, `TLS_1_2`, `TLS_1_3`.
  final Input<String>? minTlsVersion;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final Input<String>? name;

  /// Profile specifies the set of SSL features that can be used by the
  /// load balancer when negotiating SSL with clients. If using `CUSTOM`,
  /// the set of SSL features to enable must be specified in the
  /// `customFeatures` field.
  /// See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
  /// for information on what cipher suites each profile provides. If
  /// `CUSTOM` is used, the <span pulumi-lang-nodejs="`customFeatures`" pulumi-lang-dotnet="`CustomFeatures`" pulumi-lang-go="`customFeatures`" pulumi-lang-python="`custom_features`" pulumi-lang-yaml="`customFeatures`" pulumi-lang-java="`customFeatures`">`custom_features`</span> attribute **must be set**.
  /// If set to `FIPS_202205`, `minTlsVersion` must also be set to
  /// `TLS_1_2`.
  /// Default value is `COMPATIBLE`.
  /// Possible values are: `COMPATIBLE`, `MODERN`, `RESTRICTED`, `CUSTOM`, `FIPS_202205`.
  final Input<String>? profile;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region where the regional SSL policy resides.
  final Input<String>? region;

  RegionSslPolicyArgs({
    this.customFeatures,
    this.description,
    this.minTlsVersion,
    this.name,
    this.profile,
    this.project,
    this.region,
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
      map['minTlsVersion'] = minTlsVersionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final profileValue = profile;
    if (profileValue != null) {
      map['profile'] = profileValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory RegionSslPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RegionSslPolicyArgs(
      customFeatures:
          Input.asOptionalInput<List<String>>(map['customFeatures']),
      description: Input.asOptionalInput<String>(map['description']),
      minTlsVersion: Input.asOptionalInput<String>(map['minTlsVersion']),
      name: Input.asOptionalInput<String>(map['name']),
      profile: Input.asOptionalInput<String>(map['profile']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
