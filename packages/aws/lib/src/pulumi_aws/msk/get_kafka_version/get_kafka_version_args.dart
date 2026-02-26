// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getKafkaVersion.
class GetKafkaVersionArgs {
  /// Ordered list of preferred Kafka versions. The first match in this list will be returned. Either <span pulumi-lang-nodejs="`preferredVersions`" pulumi-lang-dotnet="`PreferredVersions`" pulumi-lang-go="`preferredVersions`" pulumi-lang-python="`preferred_versions`" pulumi-lang-yaml="`preferredVersions`" pulumi-lang-java="`preferredVersions`">`preferred_versions`</span> or <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span> must be set.
  final Input<List<String>>? preferredVersions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Version of MSK Kafka. For example 2.4.1.1 or "2.2.1" etc. Either <span pulumi-lang-nodejs="`preferredVersions`" pulumi-lang-dotnet="`PreferredVersions`" pulumi-lang-go="`preferredVersions`" pulumi-lang-python="`preferred_versions`" pulumi-lang-yaml="`preferredVersions`" pulumi-lang-java="`preferredVersions`">`preferred_versions`</span> or <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span> must be set.
  final Input<String>? version;

  GetKafkaVersionArgs({
    this.preferredVersions,
    this.region,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final preferredVersionsValue = preferredVersions;
    if (preferredVersionsValue != null) {
      map['preferredVersions'] = preferredVersionsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetKafkaVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetKafkaVersionArgs(
      preferredVersions:
          Input.asOptionalInput<List<String>>(map['preferredVersions']),
      region: Input.asOptionalInput<String>(map['region']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
